package com.fc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fc.model.Topic;

public interface TopicMapper {

	Integer selectTopicIdByTopicName(@Param("topicName") String topicName);

	Integer insertTopic(Topic topic);

	List<Topic> listRootTopic();

	List<Topic> listTopicByParentId(@Param("parentTopicId") Integer parentTopicId);

	Topic selectTopicByTopicId(@Param("topicId") Integer topicId);

	List<Integer> selectQuestionIdByTopicId(@Param("topicId") Integer topicId);

	List<Topic> listTopicByTopicId(List<Integer> idList);

	List<Topic> listHotTopic();

	void updateFollowedCount(@Param("topicId") Integer topicId);

	List<Topic> listTopicByTopicName(@Param("topicName") String topicName);
}
