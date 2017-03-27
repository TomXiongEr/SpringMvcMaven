package com.xm.springmvc.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xm.springmvc.common.utils.ModelAndViewUtil;

@Controller
@RequestMapping("/user/index")
public class UserCenterController {

	
	/**
	 *@function:进入首页
	 *@author:TOM XIONG
	 *@date:2016年11月3日 下午10:10:05
	 *@params:
	 *@return ModelAndView
	 */
	@RequestMapping("/userIndex")	
    public ModelAndView userIndexView(){		
		return ModelAndViewUtil.getModelAndViewUtil("/user/userIndex");
	}
	
}
