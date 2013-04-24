package com.nankai.teaching.service;

import java.util.List;

import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.User;

public interface UserService {

	public boolean checkUserEmail(String email);
	
	public boolean saveUserAndRole(User user, String[] roles);
	
	public boolean updateUser(User user) ;
	
	public Pagination<User> getUsers(User user, int pageIndex, int pageSize);
	
	public List<User> getUsersByRoleId(int roleId);
	
	public boolean deleteUser(int userId);
}
