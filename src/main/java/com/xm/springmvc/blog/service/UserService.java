package com.xm.springmvc.blog.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.xm.springmvc.blog.domain.Permission;
import com.xm.springmvc.blog.domain.Role;
import com.xm.springmvc.blog.domain.User;

public interface UserService {

	public String getUserNameById(String userId);
	
	public Map loginCheck(User user,HttpServletRequest request) throws Exception;
	
	public Map register(User user,HttpServletRequest request) throws Exception;
	
	public List<User> getAllUser() throws Exception;
	
	/**
	 * 通过用户名获取用户
	 * @author TOM XIONG
	 * @date 2017年2月27日 下午10:18:59
	 * @param userName
	 * @return
	 * @throws Exception
	 */
	public User getUserByUserName(String userName) throws Exception;
	
	/**
	 * 根据用户名获取该用户的所有角色
	 * @author TOM XIONG
	 * @date 2017年2月27日 下午11:06:27
	 * @param userName
	 * @return
	 * @throws Exception
	 */
	public List<Role> getRolesByUserName(String userName) throws Exception;
	
	/**
	 * 获取用户权限
	 * @author TOM XIONG
	 * @date 2017年2月28日 上午9:17:17
	 * @param userName
	 * @return
	 * @throws Exception
	 */
	public List<Permission> getPermissionsByUserName(String userName) throws Exception;
}
