package com.xm.springmvc.blog.domain;

import java.io.Serializable;

public class User implements Serializable{
	private int userId;
	private String userName;
	private String password;
	private String groupIdS;
	private String nickName;
	private String email;


	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGroupIdS() {
		return groupIdS;
	}

	public void setGroupIdS(String groupIdS) {
		this.groupIdS = groupIdS;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
