package com.yc.bean;

public class Friends {
	private Integer user_id1;
	private Integer user_id2;
	private Integer status;//1表示是好友   0表示还不是好友
	public Friends() {
	} 
	
	public Friends(Integer user_id1) {
		this.user_id1 = user_id1;
	}

	public Friends(Integer user_id1, Integer user_id2, Integer status) {
		this.user_id1 = user_id1;
		this.user_id2 = user_id2;
		this.status = status;
	}
	public Friends(Integer user_id1, Integer user_id2) {
		this.user_id1 = user_id1;
		this.user_id2 = user_id2;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
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
	
	
}
