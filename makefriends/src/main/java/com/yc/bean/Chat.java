package com.yc.bean;

import java.util.Date;

/**
 * 聊天表
 * @author ZX50
 *
 */
public class Chat {
	//chat(chat_id，user_id1,user_id2,content,time,status)
	private Integer chat_id;
	private Integer user_id1;
	private Integer user_id2;
	private String content;
	private Date time;
	private String status;
	public Integer getChat_id() {
		return chat_id;
	}
	public void setChat_id(Integer chat_id) {
		this.chat_id = chat_id;
	}
	public Integer getUser_id1() {
		return user_id1;
	}
	public void setUser_id1(Integer user_id1) {
		this.user_id1 = user_id1;
	}
	public Integer getUser_id2() {
		return user_id2;
	}
	public void setUser_id2(Integer user_id2) {
		this.user_id2 = user_id2;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
