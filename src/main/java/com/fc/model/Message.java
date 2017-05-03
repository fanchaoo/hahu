package com.fc.model;

public class Message {

	public static final int TYPE_FOLLOWED = 1;
	public static final int TYPE_LIKED = 2;
	public static final int TYPE_COMMENT = 3;
	public static final int TYPE_ANSWER = 4;

	private Integer messageId;
	private Integer type;
	private Integer secondType;
	private String messageDate;
	private Long messageTime;

	private Integer fromUserId;
	private String fromUserName;
	private Integer questionId;
	private String questionTitle;
	private Integer answerId;
	private Integer commentId;

	private Integer userId;

	public Integer getMessageId() {
		return messageId;
	}

	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getSecondType() {
		return secondType;
	}

	public void setSecondType(Integer secondType) {
		this.secondType = secondType;
	}

	public String getMessageDate() {
		return messageDate;
	}

	public void setMessageDate(String messageDate) {
		this.messageDate = messageDate;
	}

	public Long getMessageTime() {
		return messageTime;
	}

	public void setMessageTime(Long messageTime) {
		this.messageTime = messageTime;
	}

	public Integer getFromUserId() {
		return fromUserId;
	}

	public void setFromUserId(Integer fromUserId) {
		this.fromUserId = fromUserId;
	}

	public String getFromUserName() {
		return fromUserName;
	}

	public void setFromUserName(String fromUserName) {
		this.fromUserName = fromUserName;
	}

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

	public Integer getAnswerId() {
		return answerId;
	}

	public void setAnswerId(Integer answerId) {
		this.answerId = answerId;
	}

	public Integer getCommentId() {
		return commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}
}