package com.xm.springmvc.common.model;

import java.io.Serializable;
import java.util.List;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

public class PageModel<T> implements Serializable{

	 private static final long serialVersionUID = 1L;
	
     private long total; //总记录数  
     private int pageNum; //第几页  
     private int pageSize=10; //每页记录数  
     private int pages; // 总页数  
     private int size; //当前页的数量 
     
 	 private String order;// 配置方式（asc,desc）
 	 private String sort;// 排序字段
 	 
 	 //获得的数据;
 	 private List<T> dataList;//数据
 	 
 	 //mybatis数据库操作初始化;
 	 public void initPageHelper(){
// 		this.pageNum=this.pageNum<=0?1:pageNum;
// 	    this.pageSize=this.pageSize<=0?10:pageSize;
 		PageHelper.startPage(this.pageNum,this.pageSize);
 	 }
 	 
 	 //获取分页数据;
 	 public List<T> getPageList(List<T> list){  
        if (list instanceof Page){  
            Page<T> page = (Page<T>) list;  
            this.pageNum = page.getPageNum();  
            this.pageSize = page.getPageSize();  
            this.total = page.getTotal();  
            this.pages = page.getPages();  
            this.dataList = page;  
            this.size = page.size();  
        }  
        return this.dataList;
     }  
 	
	 public List<T> getDataList() {
		return dataList;
	 }


	 public void setDataList(List<T> dataList) {
		this.dataList = dataList;
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
