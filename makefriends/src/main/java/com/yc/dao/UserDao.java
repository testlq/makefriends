package com.yc.dao;

import java.util.List;

import com.yc.bean.Email;
import com.yc.bean.User;

public interface UserDao {

	/**
	 * 用户注册
	 * @param user
	 * @return  受影响的行数
	 */
	public int regInfo(User user);
	
	/**
	 * 用户登陆
	 * @param username
	 * @param password
	 * @return  登陆用户信息
	 */
	public User login(String username,String password);
	

	/**
	 * 查看用户信息 查看所有 根据用户编号 根据用户名称
	 * @param user
	 * @return
	 */
	public User findByterm(User user);
	

	/**
	 * 根据用户名查看基本信息
	 * @param username
	 * @return
	 */
	public User findInformation(String username);
	
	/**
	 * 完善个人信息
	 * @param bean
	 * @return
	 */
	public int perfectAllInformation(User user);

	public List<User> findObj(User user);
	
	/**
	 * 保存发送的邮件
	 * @param email
	 * @return
	 */
	public int addEmail(Email email);
	
	/**
	 *显示邮件记录
	 * @param username
	 * @return
	 */
	public List<Email> listEmail(String username);
	
}
