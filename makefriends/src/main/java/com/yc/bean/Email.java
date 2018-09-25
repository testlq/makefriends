package com.yc.bean;

import java.util.Date;

public class Email {
	
	private Integer email_id;
	private String username;
	private String iemail;
	private String uemail;
	private String content;
	private Date time;
	
	public Email() {
		
	}
	
	 

	public Email(String username, String iemail, String uemail, String content) {
		this.username = username;
		this.iemail = iemail;
		this.uemail = uemail;
		this.content = content;
	}


 

	public Integer getEmail_id() {
		return email_id;
	}



	public void setEmail_id(Integer email_id) {
		this.email_id = email_id;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getIemail() {
		return iemail;
	}



	public void setIemail(String iemail) {
		this.iemail = iemail;
	}



	public String getUemail() {
		return uemail;
	}



	public void setUemail(String uemail) {
		this.uemail = uemail;
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



	@Override
	public String toString() {
		return "Email [email_id=" + email_id + ", username=" + username + ", iemail=" + iemail + ", uemail=" + uemail
				+ ", content=" + content + ", time=" + time + "]";
	}

	 
	 

	

	




}
