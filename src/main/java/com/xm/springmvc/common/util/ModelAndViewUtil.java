package com.xm.springmvc.common.util;

import org.springframework.web.servlet.ModelAndView;

public class ModelAndViewUtil {

	public static ModelAndView getModelAndViewUtil(String pathView) {
		
		ModelAndView resultModel=new ModelAndView();
		resultModel.setViewName(pathView);
		return resultModel;
	}
}


