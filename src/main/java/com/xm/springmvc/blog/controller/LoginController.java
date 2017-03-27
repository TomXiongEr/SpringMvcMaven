package com.xm.springmvc.blog.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.SavedRequest;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xm.springmvc.blog.domain.User;
import com.xm.springmvc.blog.service.UserService;
import com.xm.springmvc.common.model.SysConstant;
import com.xm.springmvc.common.utils.ModelAndViewUtil;
import com.xm.springmvc.common.utils.StringUtils;


/**
 * @Title:LoginController 
 * @Description: Copyrights belongs to xiongm      
 * @author TOM XIONG     
 * @function:
 * @date:2016年11月2日 下午11:48:27
 */
@Controller
@RequestMapping("/")
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	private User user;
	
	private static final Logger logger = Logger.getLogger(LoginController.class);//日志文件
	
	/**
	 *@Function:返回登陆界面
	 *@Author:TOM XIONG
	 *@Date:2016年11月2日 下午9:48:06
	 *@Params:
	 *@Return ModelAndView
	 */
	@RequestMapping("/login")
	public ModelAndView  login(HttpServletRequest request){
		    ModelAndView resultModel=new ModelAndView();
			try{
				System.err.println(request.getSession().getAttribute("userCode"));
			  if(StringUtils.isNotBlank(request.getSession().getAttribute("userCode"))){
				  resultModel=ModelAndViewUtil.getModelAndViewUtil("/user/userIndex");
			  }else{
				  resultModel = ModelAndViewUtil.getModelAndViewUtil("/user/login" );
			  }
			}catch(Exception e){
				e.printStackTrace();
			}
			return resultModel;
	}
	
	
	/**
	 * 此方法为is_remembered的实现形式;反编译后的方法,可熟悉is_remembered为什么一直为false;
	 * isRemembered的定义实现
	 */
	public boolean isRemembered() {
        Subject subject = SecurityUtils.getSubject();
		PrincipalCollection principals = subject.getPrincipals();
		return (principals != null) && (!principals.isEmpty()) && (!subject.isAuthenticated());
	}
	

	/**
	 *@Function:登陆验证
	 *@Author:TOM XIONG
	 *@Date:2016年11月2日 下午9:48:36
	 *@Params:
	 *@Return String
	 */
	@SuppressWarnings({ "unchecked"})
	@ResponseBody
	@RequestMapping(value="/loginCheck",method=RequestMethod.POST)
	public String loginCheck(@ModelAttribute("user") User user,HttpServletRequest request){
		Map<String,String> resultMap=new HashMap<String,String>();
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(),user.getPassword());
		try{
			resultMap=this.userService.loginCheck(user,request);
			if(StringUtils.isBlank(resultMap.get("checkCode"))){
				if(subject.isRemembered()==false){
					token.setRememberMe(true);//设置登录时的rememberme起效;
					subject.login(token);
				}
			}
		}catch(Exception e){
			resultMap.put("checkCode",SysConstant.PASSWORD_ERROR);
			e.printStackTrace();   
			logger.error("登陆验证失败!", e);
		}
		String returnValue=JSONObject.fromObject(resultMap).toString();
		return returnValue;
	}
	
	
	/**
	 * 用户验证通过后,实行跳转,跳转到拦截之前的url
	 * @author TOM XIONG
	 * @date 2017年3月2日 上午9:46:00
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/userLogin")
	public void userLogin(HttpServletRequest request,HttpServletResponse response) throws IOException{
	   //shiro会将每一次因不满足权限而拦截的请求的url都会存入request的attributr中;
	   SavedRequest savedRequest = WebUtils.getSavedRequest(request);//获取前一次请求的路径;
	   if(savedRequest!=null && savedRequest.getRequestUrl()!=null){
		   response.sendRedirect(savedRequest.getRequestUrl());//跳转至拦截前的URL
	   }else{
		   response.sendRedirect("user/index/userIndex");//重新访问userIndex,拦截至登录页;
	   } 
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
		return ModelAndViewUtil.getModelAndViewUtil("/user/register");
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

	@RequestMapping("/getAllUser")	
	@ResponseBody
	public String getAllUser() throws Exception{
		Date now=new Date();
	    List<User> list=this.userService.getAllUser();
	    Date later=new Date();
	    System.err.println("时间间隔为:"+String.valueOf(later.getTime()-now.getTime()));
	    return String.valueOf(JSONArray.fromObject(list));
	}
}
