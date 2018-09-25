package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Email;
import com.yc.bean.User;
import com.yc.biz.UserBiz;
import com.yc.dao.UserDao;

@Service
public class UserBizImpl implements UserBiz{
	@Resource
	private UserDao userDao;
	
	public int regInfo(User user) {
		return userDao.regInfo(user);
	}

	public User login(String username,String password) {
		return userDao.login(username, password);
	}

	public User findByterm(User user) {
		return userDao.findByterm(user);
	}
	
	
	public User findInformation(String username) {
		return userDao.findInformation(username);
	}

	public int perfectAllInformation(User user) {
		return userDao.perfectAllInformation(user);
	}

	public List<User> findObj(User user) {
		return userDao.findObj(user);
	}

	@Override
	public int addEmail(Email email) {
		return userDao.addEmail(email);
	}

	@Override
	public List<Email> listEmail(String username) {
		return userDao.listEmail(username);
	}

}
