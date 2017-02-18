package com.xm.springmvc.blog.service.ServiceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.xm.springmvc.blog.dao.IUserDao;
import com.xm.springmvc.blog.domain.User;
import com.xm.springmvc.blog.service.UserService;

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
	    IUserDao userDao;
		
	   
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
		
		/**
		 * @author TOM XIONG
		 * @date:2016-10-31
		 * @function:用户登陆验证
		 * @returnType:boolean
		 */
		@Override
		@SuppressWarnings("rawtypes")
		public Map loginCheck(User user,HttpServletRequest request) throws Exception{
			Map<String,String> resultMap=new HashMap<String,String>();
			try{
				if(verifyCode(request)){
					User object=this.userDao.getUserByName(user);
					if(object==null){
						resultMap.put("check","username_not_found");
					}else{
						User userObject=this.userDao.getUserByNameAndPsw(user);
						if(userObject==null){
							resultMap.put("check","password_is_wrong");
						}else{
							resultMap.put("check","login_success");
							//登录成功的时候将用户的信息存入session中;
							HttpSession session = request.getSession(true);  
							//存入Session
							session.setAttribute("userCode",object.getUserName());  
						}
					}
				}else{
					resultMap.put("check","vCode_is_wrong");
				}			
			}catch(Exception e){
				e.printStackTrace();
				throw new Exception("登陆验证失败!");
			}
			return resultMap;
		}
		
		/**
		 *@Function:判断验证码的正确性方法
		 *@Author:TOM XIONG
		 *@Date:2016年11月3日 下午9:21:24
		 *@Params:
		 *@Return boolean
		 */
		public boolean verifyCode(HttpServletRequest request){
			HttpSession session = request.getSession(true);  
			String vcode=session.getAttribute("_code").toString();//获取系统生成的验证码  
			String verifyCode=request.getParameter("verifyCode").toString();//获取前端填写的验证码
			if(!vcode.equals(verifyCode)){
				return false;
			}
			return true;
		}
		
		/**
		 * @author TOM XIONG
		 * @date:2016-10-31
		 * @function:用户账号注册
		 * @returnType:map
		 */
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
		@Override
		@Cacheable("getAllUser")
		public List<User> getAllUser(){
			List<User> list=null;
			list=this.userDao.getAllUser();
			System.err.print("调用查询!");
			return list;
		}

	}

