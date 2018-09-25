package com.yc.bean;

import java.sql.Timestamp;

public class User {
	// user（user_id，username，age , password，email，sex，height,weight,bloodtype,star,marriage,position,education,hobby,school,major,income）

	private Integer user_id;
	private String username;
	private Integer age;
	private String password;
	private String email;
	private String sex;
	private Double height;
	private Double weight;
	private String bloodtype; //血型
	private String star; //星座
	private String marriage;//婚姻状态
	private String position;//位置
	private String education;//学历
	private String hobby;//爱好
	private String school;
	private String major;//专业
	private String income; //收入
	private String content;
	public User() {
	}
	public User(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Double getHeight() {
		return height;
	}
	public void setHeight(Double height) {
		this.height = height;
	}
	public Double getWeight() {
		return weight;
	}
	public void setWeight(Double weight) {
		this.weight = weight;
	}
	public String getBloodtype() {
		return bloodtype;
	}
	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getMarriage() {
		return marriage;
	}
	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", username=" + username + ", age=" + age + ", password=" + password
				+ ", email=" + email + ", sex=" + sex + ", height=" + height + ", weight=" + weight + ", bloodtype="
				+ bloodtype + ", star=" + star + ", marriage=" + marriage + ", position=" + position + ", education="
				+ education + ", hobby=" + hobby + ", school=" + school + ", major=" + major + ", income=" + income
				+ ", content=" + content + "]";
	}
  
	
}
