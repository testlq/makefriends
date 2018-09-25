package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Comment;
import com.yc.bean.Dynamic;
import com.yc.biz.CommentBiz;
import com.yc.dao.CommentDao;

@Service
public class CommentBizImpl implements CommentBiz {
	@Resource
	private CommentDao commentDao;
	
	@Override
	public List<Dynamic> findFriendDynamic(int id) {
		return commentDao.findFriendDynamic(id);
	}

	@Override
	public int comment(Comment comment) {
		return commentDao.comment(comment);
	}

	@Override
	public List<Comment> findAllComments(Integer id) {
		return commentDao.findAllComments(id);
	}
	
	@Override
	public List<Dynamic> showStrangerdynamic(int id1, int id2) {
		return commentDao.showStrangerdynamic(id1, id2);
	}

}
