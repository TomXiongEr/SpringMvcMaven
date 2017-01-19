package com.xm.springmvc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xm.springmvc.Service.UserService;
import com.xm.springmvc.common.util.ModelAndViewUtil;
import com.xm.springmvc.domain.User;


/**
 * @Title:LoginController 
 * @Description: Copyrights belongs to xiongm      
 * @author TOM XIONG     
 * @function:
 * @date:2016年11月2日 下午11:48:27
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	UserService userService;
	User user=new User();
	
	private static final Logger logger = Logger.getLogger(LoginController.class);//日志文件
	
	/**
	 *@Function:返回登陆界面
	 *@Author:TOM XIONG
	 *@Date:2016年11月2日 下午9:48:06
	 *@Params:
	 *@Return ModelAndView
	 */
	@RequestMapping("/login2")
	public ModelAndView  login(){
		    ModelAndView resultModel=new ModelAndView();
			try{
			  resultModel = ModelAndViewUtil.getModelAndViewUtil("/user/login" );
			}catch(Exception e){
				e.printStackTrace();
			}
			return resultModel;
	}

	/**
	 *@Function:登陆验证
	 *@Author:TOM XIONG
	 *@Date:2016年11月2日 下午9:48:36
	 *@Params:
	 *@Return String
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@ResponseBody
	@RequestMapping(value="/loginCheck",method=RequestMethod.POST)
	public String loginCheck(@ModelAttribute("user") User user,HttpServletRequest request){
		Map<String,String> resultMap=new HashMap<String,String>();
		try{
			resultMap=this.userService.loginCheck(user,request);
		}catch(Exception e){
			e.printStackTrace();   
			logger.error("登陆验证失败!", e);
		}
		String returnValue=JSONObject.fromObject(resultMap).toString();
		return returnValue;
	}
	
	/**
	 *@Function:跳转注册页面
	 *@Author:TOM XIONG
	 *@Date:2016年11月2日 下午9:48:51
	 *@Params:
	 *@Return ModelAndView
	 */
	@RequestMapping("/registerView")
    public ModelAndView registerView(){
		
		return new ModelAndView("/user/register");
	}
	
	/**
	 *@Function:用户注册页面
	 *@Author:TOM XIONG
	 *@Date:2016年11月2日 下午10:28:44
	 *@Params:
	 *@Return String
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/register")
    public String register(User user,HttpServletRequest request){
		Map<String,String> resultMap=new HashMap<String,String>();
		try{
			resultMap=this.userService.register(user,request);
		}catch(Exception e){
			e.printStackTrace();
			logger.error("注册出错",e);
		}
		String returnValue=JSONObject.fromObject(resultMap).toString();
		return returnValue;
	}
	
	/**
	 *@Function:进入首页
	 *@Author:TOM XIONG
	 *@Date:2016年11月3日 下午10:10:05
	 *@Params:
	 *@Return ModelAndView
	 */
	@RequestMapping("/userIndexView")	
    public ModelAndView userIndexView(){		
		return new ModelAndView("/user/userIndex");
	}
	
}
