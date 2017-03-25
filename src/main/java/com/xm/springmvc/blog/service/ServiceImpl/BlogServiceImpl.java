package com.xm.springmvc.blog.service.ServiceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xm.springmvc.blog.dao.IBlogDao;
import com.xm.springmvc.blog.domain.Blog;
import com.xm.springmvc.blog.service.BlogService;
import com.xm.springmvc.common.model.PageBean;
import com.xm.springmvc.common.model.PageModel;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	private IBlogDao blogDao;
	
	@Override
	public PageBean<Map> getBlogList(PageModel pageModel){
		List<Map> list=new ArrayList<Map>();
		PageBean pageBean = null;
		try{
			pageModel.initPageHelper();
			list=this.blogDao.getBlogList();
			pageBean=new PageBean<Map>(list);
		}catch(Exception e){
			e.printStackTrace();
		}
		return pageBean;
	}
	
	@Override
	public void saveBlogData(Blog blog){
		try{
			this.blogDao.saveBlogData(blog);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	@Override
	public Blog getBlogById(int id){
		Blog blog=new Blog();
		try{
			blog=this.blogDao.getBlogById(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return blog;
	}
}
