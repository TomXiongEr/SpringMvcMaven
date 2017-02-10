package com.xm.springmvc.blog.service.ServiceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xm.springmvc.blog.dao.IBlogDao;
import com.xm.springmvc.blog.service.BlogService;
import com.xm.springmvc.common.model.PageModel;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	IBlogDao blogDao;
	
	@Override
	public List<Map> getBlogList(PageModel pageModel){
		List<Map> list=new ArrayList<Map>();
		try{
			pageModel.initPageHelper();
			pageModel.setPageNum(1);
			list=this.blogDao.getBlogList();
			//对list进行排列;前端
			pageModel.getPageList(list);//初始化dataList;
		}catch(Exception e){
			e.printStackTrace();
		}
		return pageModel.getDataList();
	}
}
