package com.xm.springmvc.common.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.LogoutFilter;
import org.apache.shiro.web.util.WebUtils;

public class systemLogoutFilter extends LogoutFilter{

	@Override
	protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
		Subject subject = SecurityUtils.getSubject();
		
		String redirectUrl = getRedirectUrl(request,response, subject);
		
		subject.logout();//可是尝试配置过滤器来处理退出请求;
		WebUtils.issueRedirect(request, response,redirectUrl);
		
		//返回false表示不执行后续的过滤器，直接返回跳转到登录页面
        return false;
	}
}
