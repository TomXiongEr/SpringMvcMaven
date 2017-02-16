package com.xm.springmvc.blog.service.ServiceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.xm.springmvc.blog.dao.IBlogDao;
import com.xm.springmvc.blog.service.BlogService;
import com.xm.springmvc.common.model.PageBean;
import com.xm.springmvc.common.model.PageModel;

@Service
@Transactional
public class BlogServiceImpl implements BlogService {

	@Autowired
	IBlogDao blogDao;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Map> getBlogList(PageModel pageModel){
		List<Map> list=new ArrayList<Map>();
		PageBean<Map> pageBean;
		try{
			pageModel.initPageHelper();
			PageHelper.startPage(pageModel.getPageNum(),pageModel.getPageSize());
			list=this.blogDao.getBlogList();
		}catch(Exception e){
			e.printStackTrace();
		}
		pageModel.setPageNum(new PageBean<Map>(list).getPageNum());
		pageModel.setPageSize(new PageBean<Map>(list).getPageNum());
		pageModel.setPages(new PageBean<Map>(list).getPages());
		return (new PageBean<Map>(list)).getList();
	}
}
