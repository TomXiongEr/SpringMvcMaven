package com.xm.springmvc.blog.dao;

import java.util.List;
import java.util.Map;

import com.xm.springmvc.blog.domain.Blog;

public interface IBlogDao {

	/**
	 *@Function:获取博客数据列表;
	 *@Author:TOM XIONG
	 *@Date:2016年11月7日 下午9:32:16
	 *@Params:
	 *@Return List<Map>
	 */
	public List<Map> getBlogList() throws Exception;
	
	/**
	 * @function:保存博客数据;
	 * @author TOM XIONG
	 * @date 2017年3月18日 下午9:36:24
	 * @param blog
	 * @throws Exception
	 */
	public void saveBlogData(Blog blog) throws Exception;
	
	/**
	 * @function：通过id获取blog对象;
	 * @author TOM XIONG
	 * @date 2017年3月19日 下午3:31:02
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Blog getBlogById(int id) throws Exception;
}
