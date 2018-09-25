package com.yc.bean;
/**
 * 照片墙
 * @author ZX50
 *
 */
public class Picture {
	//picture_id， user_id，path
	private Integer picture_id;
	private Integer user_id;
	private String path;//图片路径
	public Picture() {
	}
	public Picture(Integer user_id, String path) {
		this.user_id = user_id;
		this.path = path;
	}
	public Integer getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(Integer picture_id) {
		this.picture_id = picture_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String toString() {
		return "Picture [picture_id=" + picture_id + ", user_id=" + user_id + ", path=" + path + "]";
	}
	
	
}
