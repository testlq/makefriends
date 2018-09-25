package com.yc.dao;

import java.util.List;
import com.yc.bean.Friends;
import com.yc.bean.User;

public interface FriendsDao {
	
	/**
	 *  添加好友
	 */
	public void insertFriends(Friends friends);
	
	/**
	 * 验证是否已经发出请求
	 * @param friends
	 * @return
	 */
	public Friends validateFriends(Friends friends);
	
	
	/**
	 * @return  所有的好友以及好友的具体信息
	 */
	public List<User> searchAllFriends(int user_id1);


	/**
	 * 
	 * @param user_id  好友的id
	 * @return  好友的详细信息
	 */
	public User findUser(int user_id);

	/**
	 * 验证好友信息
	 * @param user_id
	 * @return
	 */
	public List<User> findMyValidateInfo(int user_id);
	
	
	/**
	 * 同意请求
	 * @param f
	 */
	public void agree(Friends f);
	
	/**
	 * 同意请求的同时把对方的状态设置为1
	 * @param user_id
	 */
	public void agree1(int user_id);

	/**
	 * 删除此条好友验证消息
	 * @param f
	 */
	public void disagreeRequest(Friends f);
	
	
}
