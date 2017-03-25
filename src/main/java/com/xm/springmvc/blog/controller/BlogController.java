package com.xm.springmvc.blog.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xm.springmvc.blog.domain.Blog;
import com.xm.springmvc.blog.service.BlogService;
import com.xm.springmvc.blog.service.UserService;
import com.xm.springmvc.common.model.PageBean;
import com.xm.springmvc.common.model.PageModel;
import com.xm.springmvc.common.utils.ModelAndViewUtil;

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
	private BlogService blogService;
	
	@Autowired 
	private UserService userService;
	
	private PageModel pageModel;
	
	/**
	 *@function:进入博客列表页面;加载博客数据;
	 *@author:TOM XIONG
	 *@date:2016年11月5日 下午2:14:44
	 *@params:
	 *@return ModelAndView
	 */
	@RequestMapping("/myBlog")
	public ModelAndView  myBlog(PageModel pageModel){
		ModelAndView view=ModelAndViewUtil.getModelAndViewUtil("/myBlog/myBlog");
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
	
	
	/**
	 *@function:进入已发表博客页
	 *@author:TOM XIONG
	 *@date:2016年11月5日 下午2:53:02
	 *@params:
	 *@return ModelAndView
	 */
	@RequestMapping("/articleDetail")
	public ModelAndView  articleDetail(Blog blog){
		ModelAndView view=ModelAndViewUtil.getModelAndViewUtil("/myBlog/blogArticle");
		blog=this.blogService.getBlogById(blog.getId());
		view.addObject("blog",blog);
		return view;
	}
	
	
	/**
	 * @function:进入博客编辑页面;
	 * @author TOM XIONG
	 * @date 2017年3月18日 下午3:54:08
	 * @return
	 */
	@RequestMapping("/toEditBlogPage")
	public ModelAndView toEditBlogPage(){
		return ModelAndViewUtil.getModelAndViewUtil("/myBlog/editBlogPage");
	}
	
	/**
	 * @function：保存编辑的博客内容;
	 * @author TOM XIONG
	 * @date 2017年3月18日 下午9:16:05
	 * @param blog
	 */
	@RequestMapping(value="/saveBlogData")
	public String saveBlogData(Blog blog){
		try{
			this.blogService.saveBlogData(blog);
		}catch(Exception e){
			e.printStackTrace();
		}
		return "redirect:/blog/toEditBlogPage";
	}
}
