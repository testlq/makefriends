package com.yc.biz;

import java.util.List;

import com.yc.bean.Comment;
import com.yc.bean.Dynamic;

public interface CommentBiz {
	
	public List<Dynamic> findFriendDynamic(int id);
	
	public int comment(Comment comment);
	
	public List<Comment> findAllComments(Integer id);
	
	public List<Dynamic> showStrangerdynamic(int id1,int id2);
}
