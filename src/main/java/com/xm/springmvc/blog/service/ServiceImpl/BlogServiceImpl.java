package com.xm.springmvc.blog.service.ServiceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xm.springmvc.blog.dao.IBlogDao;
import com.xm.springmvc.blog.domain.Blog;
import com.xm.springmvc.blog.service.BlogService;
import com.xm.springmvc.common.exception.ServiceException;
import com.xm.springmvc.common.model.PageBean;
import com.xm.springmvc.common.model.PageModel;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	private IBlogDao blogDao;
	
	@Override
	public PageBean<Map> getBlogList(PageModel pageModel) throws ServiceException{
		List<Map> list=new ArrayList<Map>();
		try{
			pageModel.initPageHelper();
			list=this.blogDao.getBlogList();
			PageBean pageBean = new PageBean(list);
			return pageBean;
		}catch(Exception e){
			throw new ServiceException("获取博客列表出错!",e);
		}
	}
	
	@Override
	public void saveBlogData(Blog blog) throws ServiceException{
		try{
			this.blogDao.saveBlogData(blog);
		}catch(Exception e){
			throw new ServiceException("保存博客数据出错!",e);
		}
	}
	
	@Override
	public Blog getBlogById(int id) throws ServiceException{
		Blog blog=new Blog();
		try{
			blog=this.blogDao.getBlogById(id);
			return blog;
		}catch(Exception e){
			throw new ServiceException("通过id获取博客出错!",e);
		}
	}
}
