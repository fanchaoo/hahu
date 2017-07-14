package com.fc.model;

public class User {
	private Integer userId;
	private String email;
	private String password;
	private Integer activationState;
	private String activationCode;

	private String username;
	private Integer gender;
	private String simpleDesc;
	private String avatarUrl;
	private String position;
	private String industry;
	private String career;
	private String education;
	private String fullDesc;

	private Integer likedCount;
	private Integer collectedCount;
	private Integer followCount;
	private Integer followedCount;
	private Integer followTopicCount;
	private Integer followQuestionCount;
	private Integer followCollectionCount;

	private Integer scanedCount;
	private Long joinTime;

	private String weiboUserId;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getActivationState() {
		return activationState;
	}

	public void setActivationState(Integer activationState) {
		this.activationState = activationState;
	}

	public String getActivationCode() {
		return activationCode;
	}

	public void setActivationCode(String activationCode) {
		this.activationCode = activationCode;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public String getSimpleDesc() {
		return simpleDesc;
	}

	public void setSimpleDesc(String simpleDesc) {
		this.simpleDesc = simpleDesc;
	}

	public String getAvatarUrl() {
		return avatarUrl;
	}

	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getFullDesc() {
		return fullDesc;
	}

	public void setFullDesc(String fullDesc) {
		this.fullDesc = fullDesc;
	}

	public Integer getLikedCount() {
		return likedCount;
	}

	public void setLikedCount(Integer likedCount) {
		this.likedCount = likedCount;
	}

	public Integer getCollectedCount() {
		return collectedCount;
	}

	public void setCollectedCount(Integer collectedCount) {
		this.collectedCount = collectedCount;
	}

	public Integer getFollowCount() {
		return followCount;
	}

	public void setFollowCount(Integer followCount) {
		this.followCount = followCount;
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

	public Long getJoinTime() {
		return joinTime;
	}

	public void setJoinTime(Long joinTime) {
		this.joinTime = joinTime;
	}

	public Integer getFollowTopicCount() {
		return followTopicCount;
	}

	public void setFollowTopicCount(Integer followTopicCount) {
		this.followTopicCount = followTopicCount;
	}

	public Integer getFollowQuestionCount() {
		return followQuestionCount;
	}

	public void setFollowQuestionCount(Integer followQuestionCount) {
		this.followQuestionCount = followQuestionCount;
	}

	public Integer getFollowCollectionCount() {
		return followCollectionCount;
	}

	public void setFollowCollectionCount(Integer followCollectionCount) {
		this.followCollectionCount = followCollectionCount;
	}

	public String getWeiboUserId() {
		return weiboUserId;
	}

	public void setWeiboUserId(String weiboUserId) {
		this.weiboUserId = weiboUserId;
	}

}
