package com.yc.bean;

import java.util.Date;

/**
 * 评论表
 * @author ZX50
 *
 */
public class Comment {
	//comment(comment_id,user_id，dynamic_id，time，content , count)  
	private Integer comment_id;
	private Integer user_id;
	private Integer dynamic_id;
	private Date time;
	private String content;
	private Integer count;
	
	
	public Comment() {
	}
	
	public Comment(Integer user_id, Integer dynamic_id, String content) {
		this.user_id = user_id;
		this.dynamic_id = dynamic_id;
		this.content = content;
	}
	
	
	
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	
	
	public Integer getComment_id() {
		return comment_id;
	}
	public void setComment_id(Integer comment_id) {
		this.comment_id = comment_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getDynamic_id() {
		return dynamic_id;
	}
	public void setDynamic_id(Integer dynamic_id) {
		this.dynamic_id = dynamic_id;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getCount() {
		
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	
	
}
