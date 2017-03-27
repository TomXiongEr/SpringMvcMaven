package com.xm.springmvc.blog.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xm.springmvc.blog.service.BlogService;
import com.xm.springmvc.common.model.PageBean;
import com.xm.springmvc.common.model.PageModel;
import com.xm.springmvc.common.utils.ModelAndViewUtil;

@Controller
@RequestMapping("/")
public class IndexController {
	
	private static final Logger logger = Logger.getLogger(IndexController.class);

	@Autowired
	private BlogService blogService;

	@RequestMapping("/index")
	public ModelAndView index(PageModel pageModel){
		    ModelAndView  view=ModelAndViewUtil.getModelAndViewUtil("/index/index" );
			PageBean pageBean = null;
			try{
				pageBean=this.blogService.getBlogList(pageModel);
			}catch(Exception e){
				logger.error("获取博客数据出错!",e);
			}
			view.addObject("blogList", pageBean.getList());
			view.addObject("pageBean",pageBean);
			return view;
	}
	
	
}
