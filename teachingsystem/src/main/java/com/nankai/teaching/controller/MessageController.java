package com.nankai.teaching.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nankai.teaching.model.Message;
import com.nankai.teaching.model.User;
import com.nankai.teaching.service.MessageService;

@Controller
@RequestMapping("/message")
public class MessageController {
	
	@Resource
	private MessageService messageServiceImpl;

	@RequestMapping("/all")
	public ModelAndView getAllMessages(@RequestParam(value="userId")int userId,HttpServletRequest request){
		
		User user = (User)request.getSession().getAttribute("tuser");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("messageAll");
		List<Message> messages = messageServiceImpl.getMessages(userId);
		mav.addObject("messages", messages);
		mav.addObject("user", user);
		return mav;
	}
	
	@RequestMapping("/detail")
	public ModelAndView getMessageDetail(@RequestParam(value="messageId")int messageId,HttpServletRequest request){
		User user = (User)request.getSession().getAttribute("tuser");
		Message message = messageServiceImpl.getMessageById(messageId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("messageDetail");
		mav.addObject("user", user);
		mav.addObject("message", message);
		return mav;
	}
	
}
