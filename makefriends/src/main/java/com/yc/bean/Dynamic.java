package com.yc.bean;

import java.sql.Date;

/**
 * 动态表
 * @author ZX50
 *
 */
public class Dynamic {
	//dynamic(dynamic_id,user_id,time，content，count)
	private Integer dynamic_id;
	private Integer user_id;
	private Date time;
	private String content;
	private Integer count;
	
	/*private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}*/

	public Dynamic() {
	}
	 
	public Dynamic(Integer user_id,String content, Integer count) {
		this.user_id = user_id;
		this.content = content;
		this.count = count;
	}

	public Dynamic(Integer dynamic_id, Integer user_id, Date time, String content, Integer count) {
		this.dynamic_id = dynamic_id;
		this.user_id = user_id;
		this.time = time;
		this.content = content;
		this.count = count;
	}

	
	

	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	
	

	public Integer getDynamic_id() {
		return dynamic_id;
	}
	public void setDynamic_id(Integer dynamic_id) {
		this.dynamic_id = dynamic_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
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

	@Override
	public String toString() {
		return "Dynamic [dynamic_id=" + dynamic_id + ", user_id=" + user_id + ", time=" + time + ", content=" + content
				+ ", count=" + count + ", username=" + username + ", user_id1=" + "]";
	}
	
}
