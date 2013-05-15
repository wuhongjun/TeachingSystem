package com.nankai.teaching.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nankai.teaching.model.CourseType;
import com.nankai.teaching.model.User;
import com.nankai.teaching.service.CourseTypeService;

@Controller
@RequestMapping("/courseType")
public class CourseTypeController {
	
	@Resource
	private CourseTypeService courseTypeServiceImpl;
	
	@RequestMapping("/all")
	public ModelAndView getCourseTypeAll(HttpServletRequest request){
		
		User user = (User)request.getSession().getAttribute("tuser");
		List<CourseType> courseTypes = courseTypeServiceImpl.getAllCourseTypes();
		ModelAndView mav  = new ModelAndView();
		mav.setViewName("courseTypeAll");
		mav.addObject("user", user);
		mav.addObject("courseTypes", courseTypes);
		return mav;
	}

}
