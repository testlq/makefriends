package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Friends;
import com.yc.bean.User;
import com.yc.biz.FriendsBiz;
import com.yc.dao.FriendsDao;

@Service
public class FriendsBizImpl implements FriendsBiz {
	
	@Resource
	private FriendsDao friendsDao;

	@Override
	public void insertFriends(Friends friends) {
		friendsDao.insertFriends(friends);
	}
	
	@Override
	public Friends validateFriends(Friends friends) {
		return friendsDao.validateFriends(friends);
	}

	@Override
	public List<User> search(int user_id1) {
		return  friendsDao.searchAllFriends(user_id1);
	}

	@Override
	public User findUser(int user_id) {
		return friendsDao.findUser(user_id);
	}

	@Override
	public List<User> findMyValidateInfo(int user_id) {
		return friendsDao.findMyValidateInfo(user_id);
	}

	@Override
	public void agreeRequest(Friends f, int user_id) {
		friendsDao.agree(f);
		friendsDao.agree1(user_id);
	}

	@Override
	public void disagreeRequest(Friends f) {
		friendsDao.disagreeRequest(f);
	}

	@Override
	public void deleteFriends(Friends f1,Friends f2) {
		friendsDao.disagreeRequest(f1);
		friendsDao.disagreeRequest(f2);
	}

	
	
	

}
