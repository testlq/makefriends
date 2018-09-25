package com.yc.biz;

import java.util.List;

import com.yc.bean.Email;
import com.yc.bean.User;

public interface UserBiz {

	public int regInfo(User bean);
	

	public User login(String username,String password);
	

	public User findByterm(User user);
	
	
	public User findInformation(String username);
		
	
	public int perfectAllInformation(User user);
	
	public List<User> findObj(User user);
	
	public int addEmail(Email email);
	
	public List<Email> listEmail(String username);
}
