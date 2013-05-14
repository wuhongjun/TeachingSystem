package com.nankai.teaching.service;

import java.util.List;

import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.User;

public interface UserService {

	boolean checkUserEmail(String email);
	
	boolean checkUser(User user);
	
	boolean saveUserAndRole(User user, String[] roles);
	
	boolean updateUser(User user) ;
	
	Pagination<User> getUsers(User user, int pageIndex, int pageSize);
	
	List<User> getUsersByRoleId(int roleId);
	
	boolean deleteUser(int userId);
	
	User getUserByEmail(String email);
}
