package com.newer.model;

public class ShowUserMessage {
	@Override
	public String toString() {
		return "ShowUserMessage [uid=" + uid + ", uname=" + uname + ", upwd=" + upwd + ", name=" + name + ", age=" + age
				+ ", sex=" + sex + ", address=" + address + ", mobile=" + mobile + ", email=" + email + ", likefood="
				+ likefood + "]";
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLikefood() {
		return likefood;
	}
	public void setLikefood(String likefood) {
		this.likefood = likefood;
	}
	private int uid;
    private String uname;
    private String upwd;
    private String name;
    private int age;
    private String sex;
    private String address;
    private String mobile;
    private String email;
    private String likefood;
    

}
