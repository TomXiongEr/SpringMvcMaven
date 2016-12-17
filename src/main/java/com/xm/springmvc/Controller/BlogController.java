package com.xm.springmvc.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xm.springmvc.Service.BlogService;

/**
 * @Title:myBlog 
 * @Description: Copyrights belongs to xiongm      
 * @author TOM XIONG     
 * @function:
 * @date:2016年11月5日 下午2:12:15
 */

@Controller
@RequestMapping("/blog")
public class BlogController {

	//日志文件
	private static final Logger logger = Logger.getLogger(BlogController.class);
	
	@Autowired
	BlogService blogService;
	
	/**
	 *@Function:
	 *@Author:TOM XIONG
	 *@Date:2016年11月5日 下午2:14:44
	 *@Params:
	 *@Return ModelAndView
	 */
	@SuppressWarnings({ "unused", "rawtypes" })
	@RequestMapping("/myBlog")
	public ModelAndView  myBlog(){
		List<Map> blogList=new ArrayList<Map>();
		ModelAndView view=new  ModelAndView("/myBlog/myBlog");
		try{
			blogList=this.blogService.getBlogList();
		}catch(Exception e){
			logger.error("获取博客数据出错!",e);
		}
		view.addObject("blogList",blogList);
		return view;
	}
	
	/**
	 *@Function:
	 *@Author:TOM XIONG
	 *@Date:2016年11月5日 下午2:53:02
	 *@Params:
	 *@Return ModelAndView
	 */
	@RequestMapping("/blogArticle")
	public ModelAndView  blogArticle(){
		return new ModelAndView("/myBlog/blogArticle");
	}

}
