package com.fc.model;

public class QuestionComment {
	private Integer questionCommentId;
	private String questionCommentContent;
	private Integer likedCount;
	private Long createTime;
	private Integer atUserId;
	private String atUserName;

	private Integer questionId;
	private Integer userId;

	private String likeState;
	private User user;

	public Integer getQuestionCommentId() {
		return questionCommentId;
	}

	public void setQuestionCommentId(Integer questionCommentId) {
		this.questionCommentId = questionCommentId;
	}

	public String getQuestionCommentContent() {
		return questionCommentContent;
	}

	public void setQuestionCommentContent(String questionCommentContent) {
		this.questionCommentContent = questionCommentContent;
	}

	public Integer getLikedCount() {
		return likedCount;
	}

	public void setLikedCount(Integer likedCount) {
		this.likedCount = likedCount;
	}

	public Long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Long createTime) {
		this.createTime = createTime;
	}

	public Integer getAtUserId() {
		return atUserId;
	}

	public void setAtUserId(Integer atUserId) {
		this.atUserId = atUserId;
	}

	public String getAtUserName() {
		return atUserName;
	}

	public void setAtUserName(String atUserName) {
		this.atUserName = atUserName;
	}

	public Integer getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
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

	public String getLikeState() {
		return likeState;
	}

	public void setLikeState(String likeState) {
		this.likeState = likeState;
	}

	@Override
	public String toString() {
		return "QuestionComment [questionCommentId=" + questionCommentId + ", questionCommentContent=" + questionCommentContent + ", likedCount=" + likedCount + ", createTime=" + createTime + ", atUserId=" + atUserId + ", atUserName=" + atUserName + ", questionId=" + questionId + ", userId="
				+ userId + ", likeState=" + likeState + ", user=" + user + "]";
	}

}