package com.xm.springmvc.blog.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xm.springmvc.blog.domain.User;

@Repository
public interface IUserDao {
	/***
	 *@Function:通过id获取用户名
	 *@Author:TOM XIONG
	 *@Date:2016年11月1日 下午9:36:33
	 *@Params:
	 *@Return String
	 */
	public String getUserNameById(String str);
	
	
	/**
	 *@Function:通过用户名获取用户对象
	 *@Author:TOM XIONG
	 *@Date:2016年11月1日 下午9:37:16
	 *@Params:
	 *@Return User
	 */
	public User getUserByName(User user);
	
	/**
	 *@Function:验证用户名密码正确性
	 *@Author:TOM XIONG
	 *@Date:2016年11月1日 下午9:37:47
	 *@Params:
	 *@Return User
	 */
	public User getUserByNameAndPsw(User user);
	
	/**
	 *@Function:用户账号注册
	 *@Author:TOM XIONG
	 *@Date:2016年11月3日 下午8:26:11
	 *@Params:
	 *@Return void
	 */
	public void register(User user);
	
	public List<User> getAllUser();
}
