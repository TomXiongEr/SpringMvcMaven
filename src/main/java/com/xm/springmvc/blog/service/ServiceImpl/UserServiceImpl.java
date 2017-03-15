package com.xm.springmvc.blog.service.ServiceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.xm.springmvc.blog.dao.IUserDao;
import com.xm.springmvc.blog.domain.Permission;
import com.xm.springmvc.blog.domain.Role;
import com.xm.springmvc.blog.domain.User;
import com.xm.springmvc.blog.service.UserService;
import com.xm.springmvc.common.model.SysConstant;

/**
 * @Title:UserServiceImpl 
 * @Description: Copyrights belongs to xiongm      
 * @author TOM XIONG     
 * @function:
 * @date:2016年10月31日 下午9:38:40
 */

@Service
public class UserServiceImpl implements UserService {

	    @Autowired
	    private IUserDao userDao;
	   
		@Override
		public String getUserNameById(String userId){
			String str=""; 
			try{
			    str=this.userDao.getUserNameById(userId);
			}catch(Exception e){
				e.printStackTrace();
			}
			return str;
		}
		
		@Override
		@SuppressWarnings("rawtypes")
		public Map loginCheck(User user,HttpServletRequest request) throws Exception{
			Map<String,String> resultMap=new HashMap<String,String>();
			try{
				if(verifyCode(request)){
					User object=this.userDao.getUserByName(user);
					if(object==null){
						resultMap.put("checkCode",SysConstant.USER_NOT_EXIST);
					}
				}else{
					resultMap.put("checkCode",SysConstant.VERIFY_CODE_ERROR);
				}			
			}catch(Exception e){
				e.printStackTrace();
				throw new Exception("登陆验证失败!");
			}
			return resultMap;
		}
		
		public boolean verifyCode(HttpServletRequest request){
			HttpSession session = request.getSession(true);  
			String vcode=session.getAttribute("_code").toString();//获取系统生成的验证码  
			String verifyCode=request.getParameter("verifyCode").toString();//获取前端填写的验证码
			if(!vcode.equals(verifyCode)){
				return false;
			}
			return true;
		}
		
		@Override
		@SuppressWarnings({ "unused", "rawtypes" })
		public Map register(User user,HttpServletRequest request) 
				throws Exception{
			Map<String,String> resultMap=new HashMap<String,String>();
			String rePassword=request.getParameter("rePassword");
			try{  
				User checkUser=this.userDao.getUserByName(user);
				if(checkUser==null){
					this.userDao.register(user);
					resultMap.put("result","true");
					resultMap.put("msg","注册成功");
				}else{
					resultMap.put("result","false");
					resultMap.put("msg","该账号已经注册");
				}
			}catch(Exception e){
				resultMap.put("result","false");
				resultMap.put("msg","注册失败");
				throw new Exception("注册失败！");
			}
			return resultMap;
		}
		
		//for test
		@Cacheable(value="getAllUser",keyGenerator="customKeyGenerator") 
		@Override
		public List<User> getAllUser(){
			List<User> list=null;
			Map map=new HashMap();
			String name="admin";
			list=this.userDao.getAllUser(name);
			System.err.print("调用查询!");
			return list;
		}

		
		@Override
		public User getUserByUserName(String userName) throws Exception{
			User user=null;
			try{
				user=this.userDao.getUserByUserName(userName); 
			}catch(Exception e){
				throw new Exception("通过用户名获取用户出错!");
			}
			return user;
		}

		@Override
		public List<Role> getRolesByUserName(String userName) throws Exception{
			List<Role> roleList=new ArrayList<Role>();
			try{
				roleList=this.userDao.getRolesByUserName(userName); 
			}catch(Exception e){
				throw new Exception("通过用户名获取用户出错!");
			}
			return roleList;
		}

		@Override
		public List<Permission> getPermissionsByUserName(String userName) throws Exception{
			List<Permission> permissionList=new ArrayList<Permission>();
			try{
				permissionList=this.userDao.getPermissionsByUserName(userName);
			}catch(Exception e){
				throw new Exception("通过用户名获取该用户的角色权限出错!"); 
			}
			return permissionList;
		}
		
	}

