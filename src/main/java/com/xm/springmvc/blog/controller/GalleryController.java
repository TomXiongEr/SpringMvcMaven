package com.xm.springmvc.blog.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Title:GalleryController 
 * @Description: Copyrights belongs to xiongm      
 * @author TOM XIONG     
 * @function:
 * @date:2016年11月5日 下午5:03:51
 */

@Controller
@RequestMapping("/gallery")
public class GalleryController {

	//日志文件
	private static final Logger logger = Logger.getLogger(GalleryController.class);
	
	/**
	 *@Function:
	 *@Author:TOM XIONG
	 *@Date:2016年11月5日 下午2:14:44
	 *@Params:
	 *@Return ModelAndView
	 */
	@RequestMapping("/myGallery")
	public ModelAndView  myGallery(){
		return new ModelAndView("/myGallery/myGallery");
	}
	
}
