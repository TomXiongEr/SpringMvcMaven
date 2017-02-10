package com.xm.springmvc.blog.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.xm.springmvc.blog.domain.User;

public interface UserService {

	public String getUserNameById(String userId);
	
	public Map loginCheck(User user,HttpServletRequest request) throws Exception;
	
	public Map register(User user,HttpServletRequest request) throws Exception;
	
	public List<User> getAllUser() throws Exception;
}
