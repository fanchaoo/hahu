package com.fc.model;

import java.util.List;

public class Question {
	private Integer questionId;
	private String questionTitle;
	private String questionContent;
	private String topicKvList;
	private Integer followedCount;
	private Integer scanedCount;
	private Long createTime;

	private Integer userId;

	private User user;
	private Integer answerCount;

	private List<QuestionComment> questionCommentList;

	public Integer getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}

	public String getQuestionTitle() {
		return questionTitle;
	}

	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}

	public String getQuestionContent() {
		return questionContent;
	}

	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}

	public String getTopicKvList() {
		return topicKvList;
	}

	public void setTopicKvList(String topicKvList) {
		this.topicKvList = topicKvList;
	}

	public Integer getFollowedCount() {
		return followedCount;
	}

	public void setFollowedCount(Integer followedCount) {
		this.followedCount = followedCount;
	}

	public Integer getScanedCount() {
		return scanedCount;
	}

	public void setScanedCount(Integer scanedCount) {
		this.scanedCount = scanedCount;
	}

	public Long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Long createTime) {
		this.createTime = createTime;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<QuestionComment> getQuestionCommentList() {
		return questionCommentList;
	}

	public void setQuestionCommentList(List<QuestionComment> questionCommentList) {
		this.questionCommentList = questionCommentList;
	}

	public Integer getAnswerCount() {
		return answerCount;
	}

	public void setAnswerCount(Integer answerCount) {
		this.answerCount = answerCount;
	}

	@Override
	public String toString() {
		return "Question [questionId=" + questionId + ", questionTitle=" + questionTitle + ", questionContent=" + questionContent + ", topicKvList=" + topicKvList + ", followedCount=" + followedCount + ", scanedCount=" + scanedCount + ", createTime=" + createTime + ", userId=" + userId + ", user="
				+ user + ", answerCount=" + answerCount + ", questionCommentList=" + questionCommentList + "]";
	}

}