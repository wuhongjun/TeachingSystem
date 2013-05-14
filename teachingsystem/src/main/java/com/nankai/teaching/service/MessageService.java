package com.nankai.teaching.service;

import java.util.List;

import com.nankai.teaching.model.Message;

public interface MessageService {
	
	List<Message> getRecentMessage(int userId);
	List<Message> getMessages(int userId);
	Message getMessageById(int id);
}
