package com.nankai.teaching.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.google.common.collect.Maps;
import com.nankai.teaching.model.Message;
import com.nankai.teaching.service.MessageService;

@Service
public class MessageServiceImpl extends BaseService implements MessageService {

	public List<Message> getRecentMessage(int userId) {
		
		Map<String, Object> params = Maps.newHashMap();
		params.put("userId", userId);
		List<Message> messages = getGenericBaseDAO().executeForObjectList("message.recent", params);
		return messages;
	}

	public List<Message> getMessages(int userId) {
		Map<String, Object> params = Maps.newHashMap();
		params.put("userId", userId);
		List<Message> messages = getGenericBaseDAO().executeForObjectList("message.all", params);
		return messages;
	}

	public Message getMessageById(int id) {
		Map<String, Object> params = Maps.newHashMap();
		params.put("id", id);
		Message message = getGenericBaseDAO().executeForObject("message.detail", params, Message.class);
		return message;
	}

}
