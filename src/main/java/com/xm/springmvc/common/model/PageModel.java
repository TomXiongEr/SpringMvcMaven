package com.xm.springmvc.common.model;

import java.io.Serializable;
import java.util.List;

import com.github.pagehelper.Page;

public class PageModel<T> implements Serializable{

	 private static final long serialVersionUID = 1L;
	
     private long total; //总记录数  
     private Integer pageNum; //第几页  
     private Integer pageSize; //每页记录数  
     private int pages; // 总页数  
     private int size; //当前页的数量 
     
     
 	 private String order;// 配置方式（asc,desc）
 	 private String sort;// 排序字段
 	 
 	 //获得的数据;
 	 private List<T> dataList;//数据
 	 
 	 //mybatis数据库操作初始化;
 	 public void initPageHelper(){
  		this.pageNum=this.pageNum==null?1:pageNum;
 	    this.pageSize=this.pageSize==null?10:pageSize;
 		//PageHelper.startPage(this.pageNum,this.pageSize);
 	 }
 	 
 	 
 	 public PageModel() {
		super();
	 }


	 public PageModel(long total, int pageNum, int pageSize, int pages,
			int size, String order, String sort, List<T> dataList) {
		super();
		this.total = total;
		this.pageNum = pageNum;
		this.pageSize = pageSize;
		this.pages = pages;
		this.size = size;
		this.order = order;
		this.sort = sort;
		this.dataList = dataList;
	}



	//获取分页数据;
 	 public PageModel (List<T> list){  
        if (list instanceof Page){  
            Page<T> page = (Page<T>) list;  
            this.pageNum = page.getPageNum();  
            this.pageSize = page.getPageSize();  
            this.total = page.getTotal();  
            this.pages = page.getPages();  
            this.dataList = page;  
            this.size = page.size();  
        }  
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
