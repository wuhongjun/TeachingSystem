package com.nankai.teaching.controller;

import java.util.List;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nankai.teaching.common.utils.AuthCode;
import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.User;
import com.nankai.teaching.service.UserService;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userServiceImpl;
	
	@RequestMapping("/login")
	public ModelAndView login(){
		System.out.println("进来了！");
		List<User> users = userServiceImpl.getUsersByRoleId(1);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user");
		mav.addObject("tea","green");
		mav.addObject("users", users);
		return mav;
	}
	
	@RequestMapping("/manager")
	public ModelAndView userManager(){
		ModelAndView mav = new ModelAndView();
		
		Pagination<User> usersPage = userServiceImpl.getUsers(new User(), 1, 15);
		mav.addObject("usersPage", usersPage);
		mav.setViewName("manager");
		return mav;
	}
	
	@RequestMapping("/userPageList")
	public ModelAndView getUserPage(User user, @RequestParam("pageIndex")int pageIndex, @RequestParam("pageSize")int pageSize){
		ModelAndView mav = new ModelAndView();
		Pagination<User> usersPage = userServiceImpl.getUsers(user, pageIndex, pageSize);
		mav.addObject("usersPage", usersPage);
		mav.setViewName("_userPageList");
		return mav;
	}
	
	@RequestMapping("/addUser")
	public ModelAndView addUser(){
		System.out.println("进入添加页面请求");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("addUser");
		return mav;
	}
	
	@RequestMapping("/saveUser")
	public ModelAndView saveUser(User user,HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		String email = user.getEmail();
		boolean  isExist = userServiceImpl.checkUserEmail(email);
		if(isExist){
			mav.setViewName("addUser");
			mav.addObject("erro", "此邮箱已注册");
			return mav;
		}
		String[] roles = request.getParameterValues("role");
		userServiceImpl.saveUserAndRole(user, roles);

		return userManager();
	}
	
	@RequestMapping("/getAuthCode")
	public void getAuthCode(HttpServletRequest request, HttpServletResponse response){
		AuthCode auth = new AuthCode();
		auth.getRandcode(request, response);
	}
	
	
}
