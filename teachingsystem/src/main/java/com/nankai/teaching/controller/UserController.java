package com.nankai.teaching.controller;

import java.util.List;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nankai.teaching.common.utils.AuthCode;
import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.Course;
import com.nankai.teaching.model.CourseType;
import com.nankai.teaching.model.Message;
import com.nankai.teaching.model.User;
import com.nankai.teaching.service.CourseService;
import com.nankai.teaching.service.CourseTypeService;
import com.nankai.teaching.service.MessageService;
import com.nankai.teaching.service.UserService;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userServiceImpl;
	
	@Resource
	private CourseService courseServiceImpl;
	
	@Resource
	private CourseTypeService courseTypeServiceImpl;
	
	@Resource
	private MessageService messageServiceImpl;
	
	@RequestMapping("/login")
	public ModelAndView login(User user,@RequestParam(value="authCode",required=false)String authCode,HttpServletRequest request){
		System.out.println("进来了！");
		ModelAndView mav = new ModelAndView();
		List<CourseType> recentCourseTypes = courseTypeServiceImpl.getRecentCourseTypes();
		List<Course> recentCourses = courseServiceImpl.getRecentCourses();
		mav.addObject("recentCourseTypes", recentCourseTypes);
		mav.addObject("recentCourses", recentCourses);
		mav.setViewName("login");
		
		HttpSession session = request.getSession();
		User xuser = (User)session.getAttribute("tuser");
		//判断是不是已登录
		if(xuser != null){
			user = userServiceImpl.getUserByEmail(user.getEmail());
			mav.addObject("user", xuser);
			List<Message> recentMessages = messageServiceImpl.getRecentMessage(xuser.getId());
			mav.addObject("recentMessages", recentMessages);
			mav.setViewName("logined");
			return mav;
		}
		
		if(authCode == null){
			mav.addObject("erro", "验证码不可以为空！");
		}else{
			
			String code = (String)session.getAttribute("RANDOMVALIDATECODEKEY");
			if(authCode.equalsIgnoreCase(code)){
				boolean has = userServiceImpl.checkUser(user);
				if(has == true){
					user = userServiceImpl.getUserByEmail(user.getEmail());
					mav.addObject("user", user);
					session.setAttribute("tuser", user);
					List<Message> recentMessages = messageServiceImpl.getRecentMessage(user.getId());
					mav.addObject("recentMessages", recentMessages);
					mav.setViewName("logined");
				}else{
					mav.addObject("erro", "用户名或者密码不正确！");
				}
			}else{
				mav.addObject("erro", "验证码不正确！");
			}
		}
		
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
