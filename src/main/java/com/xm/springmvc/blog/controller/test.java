package com.xm.springmvc.blog.controller;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xm.springmvc.blog.dao.IBlogDao;
import com.xm.springmvc.blog.domain.Blog;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:/spring-conf.xml","classpath*:/spring-mybatis.xml" ,"classpath*:/spring-mvc.xml","classpath*:/spring-source.xml"
		, "classpath*:/mybatis-config.xml"})
public class test {
	
	@Autowired
	IBlogDao blogDao;
	
	@Test
	public void test() throws Exception {
		 
		Blog blog=new Blog();
		blog.setContent("jnitTest");
		blogDao.saveBlogData(blog);
	}
}
