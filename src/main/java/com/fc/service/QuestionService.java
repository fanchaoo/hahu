package com.fc.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import com.alibaba.fastjson.JSON;
import com.fc.mapper.AnswerMapper;
import com.fc.mapper.CommentMapper;
import com.fc.mapper.QuestionMapper;
import com.fc.mapper.TopicMapper;
import com.fc.mapper.UserMapper;
import com.fc.model.Answer;
import com.fc.model.AnswerComment;
import com.fc.model.PageBean;
import com.fc.model.Question;
import com.fc.model.QuestionComment;
import com.fc.model.Topic;
import com.fc.model.User;
import com.fc.util.MyUtil;
import com.fc.util.RedisKey;

@Service
public class QuestionService {

	@Autowired
	private QuestionMapper questionMapper;
	@Autowired
	private AnswerMapper answerMapper;
	@Autowired
	private TopicMapper topicMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private CommentMapper commentMapper;
	@Autowired
	private JedisPool jedisPool;

	public Integer ask(Question question, String topicNameString, Integer userId) {
		String[] topicNames = topicNameString.split(",");
		System.out.println(Arrays.toString(topicNames));
		Map<Integer, String> map = new HashMap<>();

		List<Integer> topicIdList = new ArrayList<>();
		for (String topicName : topicNames) {
			Topic topic = new Topic();
			Integer topicId = topicMapper.selectTopicIdByTopicName(topicName);
			if (topicId == null) {
				topic.setTopicName(topicName);
				topic.setParentTopicId(1);
				topicMapper.insertTopic(topic);
				topicId = topic.getTopicId();
			}
			map.put(topicId, topicName);
			topicIdList.add(topicId);
		}
		String topicKvList = JSON.toJSONString(map);
		question.setTopicKvList(topicKvList);
		question.setCreateTime(new Date().getTime());
		question.setUserId(userId);
		questionMapper.insertQuestion(question);

		// 向关联表插入数据
		for (Integer topicId : topicIdList) {
			questionMapper.insertIntoQuestionTopic(question.getQuestionId(), topicId);
		}

		return question.getQuestionId();
	}

	// 获得问题页详情
	@SuppressWarnings("unchecked")
	public Map<String, Object> getQuestionDetail(Integer questionId, Integer userId) {
		Map<String, Object> map = new HashMap<>();
		// 获取问题信息
		Question question = questionMapper.selectQuestionByQuestionId(questionId);
		if (question == null) {
			throw new RuntimeException("该问题id不存在~");
		}
		// 获取该问题被浏览次数
		Jedis jedis = jedisPool.getResource();
		jedis.zincrby(RedisKey.QUESTION_SCANED_COUNT, 1, questionId + "");
		question.setScanedCount((int) jedis.zscore(RedisKey.QUESTION_SCANED_COUNT, questionId + "").doubleValue());

		// 获取该问题被关注人数
		Long followedCount = jedis.zcard(questionId + RedisKey.FOLLOWED_QUESTION);
		question.setFollowedCount(Integer.parseInt(followedCount + ""));

		// 获取10个关注该问题的人
		Set<String> userIdSet = jedis.zrange(questionId + RedisKey.FOLLOWED_QUESTION, 0, 9);
		List<Integer> userIdList = MyUtil.StringSetToIntegerList(userIdSet);
		List<User> followedUserList = new ArrayList<>();
		if (userIdList.size() > 0) {
			followedUserList = userMapper.listUserInfoByUserId(userIdList);
		}

		// 获取5个该话题下的问题
		List<Question> relatedQuestionList = questionMapper.listRelatedQuestion(questionId);
		System.out.println("relatedQuestionList:" + relatedQuestionList);

		// 获取提问用户信息
		User askUser = userMapper.selectUserInfoByUserId(question.getUserId());
		question.setUser(askUser);
		// 获取问题评论列表
		List<QuestionComment> questionCommentList = commentMapper.listQuestionCommentByQuestionId(questionId);
		// 为每条问题评论绑定用户信息
		for (QuestionComment comment : questionCommentList) {
			User commentUser = userMapper.selectUserInfoByUserId(comment.getUserId());
			comment.setUser(commentUser);
			// 判断用户是否赞过该评论
			Long rank = jedis.zrank(userId + RedisKey.LIKE_QUESTION_COMMENT, comment.getQuestionCommentId() + "");
			comment.setLikeState(rank == null ? "false" : "true");
			// 获取该评论被点赞次数
			Long likedCount = jedis.zcard(comment.getQuestionCommentId() + RedisKey.LIKED_QUESTION_COMMENT);
			comment.setLikedCount(Integer.valueOf(likedCount + ""));
		}
		question.setQuestionCommentList(questionCommentList);

		// 获取答案列表信息
		List<Answer> answerList = answerMapper.selectAnswerByQuestionId(questionId);
		for (Answer answer : answerList) {
			User answerUser = userMapper.selectUserInfoByUserId(answer.getUserId());
			answer.setUser(answerUser);
			// 获取答案评论列表
			List<AnswerComment> answerCommentList = commentMapper.listAnswerCommentByAnswerId(answer.getAnswerId());
			for (AnswerComment comment : answerCommentList) {
				// 为评论绑定用户信息
				User commentUser = userMapper.selectUserInfoByUserId(comment.getUserId());
				comment.setUser(commentUser);
				// 判断用户是否赞过该评论
				Long rank = jedis.zrank(userId + RedisKey.LIKE_ANSWER_COMMENT, comment.getAnswerCommentId() + "");
				comment.setLikeState(rank == null ? "false" : "true");
				// 获取该评论被点赞次数
				Long likedCount = jedis.zcard(comment.getAnswerCommentId() + RedisKey.LIKED_ANSWER_COMMENT);
				comment.setLikedCount(Integer.valueOf(likedCount + ""));

			}
			answer.setAnswerCommentList(answerCommentList);

			// 获取用户点赞状态
			Long rank = jedis.zrank(answer.getAnswerId() + RedisKey.LIKED_ANSWER, String.valueOf(userId));
			answer.setLikeState(rank == null ? "false" : "true");
			// 获取该回答被点赞次数
			Long likedCount = jedis.zcard(answer.getAnswerId() + RedisKey.LIKED_ANSWER);
			answer.setLikedCount(Integer.valueOf(likedCount + ""));
		}

		// 获取话题信息
		Map<Integer, String> topicMap = (Map<Integer, String>) JSON.parse(question.getTopicKvList());

		map.put("topicMap", topicMap);
		map.put("question", question);
		map.put("answerList", answerList);
		map.put("followedUserList", followedUserList);
		map.put("relatedQuestionList", relatedQuestionList);
		jedisPool.returnResource(jedis);
		return map;
	}

	public PageBean<Question> listQuestionByUserId(Integer userId, Integer curPage) {
		// 当请求页数为空时
		curPage = curPage == null ? 1 : curPage;
		// 每页记录数，从哪开始
		int limit = 8;
		int offset = (curPage - 1) * limit;
		// 获得总记录数，总页数
		int allCount = questionMapper.selectQuestionCountByUserId(userId);
		int allPage = 0;
		if (allCount <= limit) {
			allPage = 1;
		} else if (allCount / limit == 0) {
			allPage = allCount / limit;
		} else {
			allPage = allCount / limit + 1;
		}

		// 构造查询map
		Map<String, Object> map = new HashMap<>();
		map.put("offset", offset);
		map.put("limit", limit);
		map.put("userId", userId);
		// 得到某页数据列表
		List<Question> questionList = questionMapper.listQuestionByUserId(map);

		// 构造PageBean
		PageBean<Question> pageBean = new PageBean<>(allPage, curPage);
		pageBean.setList(questionList);

		return pageBean;
	}

	public List<Question> listQuestionByPage(Integer curPage) {
		// 当请求页数为空时
		curPage = curPage == null ? 1 : curPage;
		// 每页记录数，从哪开始
		int limit = 3;
		int offset = (curPage - 1) * limit;

		Jedis jedis = jedisPool.getResource();

		Set<String> idSet = jedis.zrange(RedisKey.QUESTION_SCANED_COUNT, offset, limit);
		List<Integer> idList = MyUtil.StringSetToIntegerList(idSet);
		List<Question> questionList = new ArrayList<Question>();
		if (idList.size() > 0) {
			questionList = questionMapper.listQuestionByQuestionId(idList);

			for (Question question : questionList) {
				question.setAnswerCount(answerMapper.selectAnswerCountByQuestionId(question.getQuestionId()));
				question.setFollowedCount(Integer.parseInt(jedis.zcard(question.getQuestionId() + RedisKey.FOLLOWED_QUESTION) + ""));
			}
		}

		jedisPool.returnResource(jedis);
		return questionList;
	}

	// 判断某人是否关注了某问题
	public boolean judgePeopleFollowQuestion(Integer userId, Integer questionId) {
		Jedis jedis = jedisPool.getResource();

		Long rank = jedis.zrank(userId + RedisKey.FOLLOW_QUESTION, String.valueOf(questionId));
		jedisPool.returnResource(jedis);

		return rank == null ? false : true;
	}

	// 关注收藏夹
	public void followQuestion(Integer userId, Integer questionId) {
		Jedis jedis = jedisPool.getResource();
		jedis.zadd(userId + RedisKey.FOLLOW_QUESTION, new Date().getTime(), String.valueOf(questionId));
		jedis.zadd(questionId + RedisKey.FOLLOWED_QUESTION, new Date().getTime(), String.valueOf(userId));
		jedisPool.returnResource(jedis);
	}

	// 取消关注收藏夹
	public void unfollowQuestion(Integer userId, Integer questionId) {
		Jedis jedis = jedisPool.getResource();
		jedis.zrem(userId + RedisKey.FOLLOW_QUESTION, String.valueOf(questionId));
		jedis.zrem(questionId + RedisKey.FOLLOWED_QUESTION, String.valueOf(userId));
		jedisPool.returnResource(jedis);
	}

	// 列出所关注的问题
	public List<Question> listFollowingQuestion(Integer userId) {
		Jedis jedis = jedisPool.getResource();
		// 获取所关注的问题的id集合
		Set<String> idSet = jedis.zrange(userId + RedisKey.FOLLOW_QUESTION, 0, -1);
		List<Integer> idList = MyUtil.StringSetToIntegerList(idSet);

		List<Question> list = new ArrayList<Question>();
		if (idList.size() > 0) {
			list = questionMapper.listQuestionByQuestionId(idList);
			for (Question question : list) {
				// 设置回答数目
				int answerCount = answerMapper.selectAnswerCountByQuestionId(question.getQuestionId());
				question.setAnswerCount(answerCount);
				Long followedCount = jedis.zcard(question.getQuestionId() + RedisKey.FOLLOWED_QUESTION);
				question.setFollowedCount(Integer.parseInt(followedCount + ""));
			}
		}

		jedisPool.returnResource(jedis);
		return list;
	}
}
