package com.xm.springmvc.common.model;

import java.io.Serializable;

import com.github.pagehelper.PageHelper;

public class PageModel implements Serializable{

	 private static final long serialVersionUID = 1L;
	
     private long total; //总记录数  
     private int pageNum; //第几页  
     private int pageSize; //每页记录数  
     private int pages; // 总页数  
     private int size; //当前页的数量 
   
 	 private String order;// 配置方式（asc,desc）
 	 private String sort;// 排序字段
 	 
 	 //mybatis数据库操作初始化;
 	 public void initPageHelper(){
  		  this.pageNum=pageNum==0?1:pageNum;
 	      this.pageSize=this.pageSize==0?10:pageSize;
 		  PageHelper.startPage(this.pageNum,this.pageSize);
 	 }

 	 public PageModel(){
 		 
 	 }

	 public long getTotal() {
			return total;
	 }
		
	 public void setTotal(long total) {
			this.total = total;
	 }
		
	 public int getPageNum() {
			return pageNum;
	 }
		
	 public void setPageNum(int pageNum) {
			this.pageNum = pageNum;
	 }
		
	 public int getPageSize() {
			return pageSize;
	 }
		
	 public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
	 }
		
	 public int getPages() {
			return pages;
	 }
		
	 public void setPages(int pages) {
			this.pages = pages;
	 }
		
	 public int getSize() {
			return size;
	 }
		
	 public void setSize(int size) {
			this.size = size;
	 }
}
