package com.xm.springmvc.blog.service;

import java.util.Map;

import com.xm.springmvc.blog.domain.Blog;
import com.xm.springmvc.common.model.PageBean;
import com.xm.springmvc.common.model.PageModel;


public interface BlogService {
	
	/**
	 *@Function:获取博客列表
	 *@Author:TOM XIONG
	 *@Date:2016年11月7日 下午9:28:17
	 *@Params:
	 *@Return List<Map>
	 */
	public PageBean<Map> getBlogList(PageModel pageModel);

	
	/**
	 * @function：保存博客数据;
	 * @author TOM XIONG
	 * @date 2017年3月18日 下午9:23:16
	 * @param blog
	 */
	public void saveBlogData(Blog blog);
	
	
	/**
	 * 通过blogId获取blog对象;
	 * @author TOM XIONG
	 * @date 2017年3月19日 下午3:27:47
	 * @return
	 */
	public Blog getBlogById(int id);

}
