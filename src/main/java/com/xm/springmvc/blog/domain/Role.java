package com.xm.springmvc.blog.domain;

import java.io.Serializable;

public class Role implements Serializable{
	
	private int id;//角色Id
	
	private String roleName;//角色名称;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

}
