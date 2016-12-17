package com.xm.springmvc.Service.ServiceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xm.springmvc.Service.BlogService;
import com.xm.springmvc.dao.IBlogDao;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	IBlogDao blogDao;
	
	public List<Map> getBlogList(){
		List<Map> list=new ArrayList<Map>();
		try{
			list=this.blogDao.getBlogList();
			//对list进行排列;前端
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
}
