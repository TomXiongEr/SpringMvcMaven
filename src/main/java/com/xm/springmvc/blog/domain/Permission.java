package com.xm.springmvc.blog.domain;

import java.io.Serializable;

public class Permission implements Serializable{
	
	private int id;// 权限ID;
	private String permissionName;//权限名称;
	private String roleId;//角色Id;
	
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public String getPermissionName() {
		return permissionName;
	}
	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
}
