package com.fc.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.fc.model.Question;

public interface QuestionMapper {

	Integer insertQuestion(Question question);

	Question selectQuestionByQuestionId(@Param("questionId") Integer questionId);

	int selectQuestionCountByUserId(@Param("userId") Integer userId);

	List<Question> listQuestionByUserId(Map<String, Object> map);

	List<Question> listQuestionByPage(@Param("offset") int offset, @Param("limit") int limit);

	void insertIntoQuestionTopic(@Param("questionId") Integer questionId, @Param("topicId") Integer topicId);

	int selectQuestionCountByTopicId(@Param("topicId") Integer topicId);

	List<Integer> listQuestionIdByTopicId(Map<String, Object> map);

	List<Question> listQuestionByQuestionId(List<Integer> questionIdList);

	List<Question> listRelatedQuestion(@Param("questionId") Integer questionId);

	Question selectQuestionByAnswerId(@Param("answerId") Integer answerId);

}
