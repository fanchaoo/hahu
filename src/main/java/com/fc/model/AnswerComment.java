package com.fc.model;

public class AnswerComment {
	private Integer answerCommentId;
	private String answerCommentContent;
	private Integer likedCount;
	private Long createTime;
	private Integer atUserId;
	private String atUserName;

	private Integer answerId;
	private Integer userId;

	private String likeState;

	private User user;

	public Integer getAnswerCommentId() {
		return answerCommentId;
	}

	public void setAnswerCommentId(Integer answerCommentId) {
		this.answerCommentId = answerCommentId;
	}

	public String getAnswerCommentContent() {
		return answerCommentContent;
	}

	public void setAnswerCommentContent(String answerCommentContent) {
		this.answerCommentContent = answerCommentContent;
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

	public Integer getAnswerId() {
		return answerId;
	}

	public void setAnswerId(Integer answerId) {
		this.answerId = answerId;
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
		return "AnswerComment [answerCommentId=" + answerCommentId + ", answerCommentContent=" + answerCommentContent + ", likedCount=" + likedCount + ", createTime=" + createTime + ", atUserId=" + atUserId + ", atUserName=" + atUserName + ", answerId=" + answerId + ", userId=" + userId
				+ ", likeState=" + likeState + ", user=" + user + "]";
	}

}