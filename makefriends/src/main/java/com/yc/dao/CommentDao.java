package com.yc.dao;

import java.util.List;

import com.yc.bean.Comment;
import com.yc.bean.Dynamic;

public interface CommentDao {
	
	/**
	 * 查询好友动态
	 * @param dynamic
	 * @return
	 */
	public List<Dynamic> findFriendDynamic(int id);
	
	/**
	 * 根据当前好友动态发布评论
	 * @param comment
	 * @return
	 */
	public int comment(Comment comment);
	
	/**
	 * 查询当前动态的所有评论
	 * @param comment
	 * @return
	 */
	public List<Comment> findAllComments(Integer id);
	
	
	/**
	 * 查找陌生人动态
	 * @param id
	 * @return
	 */
	public List<Dynamic> showStrangerdynamic(int id1,int id2);

}
