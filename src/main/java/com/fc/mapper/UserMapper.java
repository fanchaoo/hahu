package com.fc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fc.model.User;

public interface UserMapper {

	void insertUser(User user);

	int selectEmailCount(String email);

	// 这里需要用包装类型
	Integer selectUserIdByEmailAndPassword(@Param("email") String email, @Param("password") String password);

	User selectUserInfoByUserId(@Param("userId") Integer userId);

	Integer selectActivationStateByUserId(@Param("userId") Integer userId);

	void updateActivationStateByActivationCode(@Param("activationCode") String activationCode);

	User selectProfileInfoByUserId(@Param("userId") Integer userId);

	List<User> listUserInfoByUserId(List<Integer> userIdList);

	void updateLikedCountByAnswerId(@Param("answerId") Integer answerId);

	void updateCollectedCountByAnswerId(@Param("answerId") Integer answerId);

	void updateProfile(User user);

	int selectUserCountByUserIdAndPassword(@Param("userId") Integer userId, @Param("password") String password);

	void updatePassword(@Param("userId") Integer userId, @Param("newpassword") String newpassword);

	void updateAvatarUrl(@Param("userId") Integer userId, @Param("avatarUrl") String avatarUrl);

	String selectUsernameByUserId(@Param("userId") Integer userId);
}
