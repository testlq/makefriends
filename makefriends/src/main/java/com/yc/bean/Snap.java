package com.yc.bean;

/**
 * 点赞记录表
 * @author ZX50
 *
 */
public class Snap {
	//snap(user_id ,dynamic_id ,comment_id, type ,status)
	private Integer user_id;
	private Integer dynamic_id;
	private Integer comment_id;
	private String type;
	private String status;
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
	public Integer getComment_id() {
		return comment_id;
	}
	public void setComment_id(Integer comment_id) {
		this.comment_id = comment_id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
