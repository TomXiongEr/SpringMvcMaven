package com.xm.springmvc.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import com.xm.springmvc.blog.domain.User;
import com.xm.springmvc.blog.service.UserService;

public class rememberMeFilter implements Filter{

	private UserService userService;
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
	         FilterChain chain) throws IOException, ServletException {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession(true);
		if (!subject.isAuthenticated() && subject.isRemembered()) {
            Object principal = subject.getPrincipal();
            if (null != principal) {
                User user=new User();
				try {
					user = userService.getUserByUserName(String.valueOf(principal));
				} catch (Exception e) {
					e.printStackTrace();
				}
                String password = user.getPassword();
                UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(),password);
                token.setRememberMe(true);
                subject.login(token);//登录
            }
        }
        //继续前往下一个过滤器;
        chain.doFilter(request, response);
	 }

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
