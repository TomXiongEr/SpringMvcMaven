package com.xm.springmvc.blog.dao;

import java.util.List;
import java.util.Map;

public interface IBlogDao {

	/**
	 *@Function:获取博客数据列表;
	 *@Author:TOM XIONG
	 *@Date:2016年11月7日 下午9:32:16
	 *@Params:
	 *@Return List<Map>
	 */
	public List<Map> getBlogList() throws Exception;
}
