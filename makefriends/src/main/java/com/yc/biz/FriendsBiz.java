package com.yc.biz;

import java.util.List;

import com.yc.bean.Friends;
import com.yc.bean.User;

public interface FriendsBiz {
	public void insertFriends(Friends friends);
	
	public Friends validateFriends(Friends friends);
	
	public List<User> search(int user_id1);
	
	public User findUser(int user_id);

	public List<User> findMyValidateInfo(int user_id);
	
	public void agreeRequest(Friends f ,int user_id);
	
	public void disagreeRequest(Friends f);
	
	public void deleteFriends(Friends f1,Friends f2);

}
