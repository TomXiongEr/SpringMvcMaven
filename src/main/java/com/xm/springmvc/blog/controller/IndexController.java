package com.xm.springmvc.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xm.springmvc.common.utils.ModelAndViewUtil;

@Controller
@RequestMapping("/")
public class IndexController {

	@RequestMapping("/index")
	public ModelAndView index(){
		 return ModelAndViewUtil.getModelAndViewUtil("/index/index" );
	}
}
