package com.xm.springmvc.blog.service;

import java.util.List;
import java.util.Map;

import com.xm.springmvc.common.model.PageModel;


public interface BlogService {
	
	/**
	 *@Function:获取博客列表
	 *@Author:TOM XIONG
	 *@Date:2016年11月7日 下午9:28:17
	 *@Params:
	 *@Return List<Map>
	 */
	public List<Map> getBlogList(PageModel pageModel);

}
