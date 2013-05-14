package com.nankai.teaching.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Maps;
import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.User;
import com.nankai.teaching.service.UserService;

/**
 * 用户管理相关服务
 * 
 * @author wangyafei
 * 
 */
@Service
public class UserServiceImpl extends BaseService implements UserService{

	/**
	 * 查看数据库是否存在已注册的邮箱
	 * @param email
	 * @return 此邮箱尚未注册返回true，表示可用；已注册返回false,表示此邮箱不可用
	 */
	public boolean checkUserEmail(String email) {
		Map<String, String> params = Maps.newHashMap();
		params.put("email", email);
		List<User> users = getGenericBaseDAO().executeForObjectList("user.equaleEmailList", params);
		if(users == null || users.size()==0){
			return false;
		}
		return true;
	}

	/**
	 * 保存新的用户，相应保存相应的用户角色
	 * 
	 * @param name
	 * @param email
	 * @param number
	 * @param roles
	 * @return
	 */
	@Transactional
	public boolean saveUserAndRole(User user, String[] roles) {

		user.setPwd("111111");
		// 保存这条user
		int i = getGenericBaseDAO().execute("user.saveUser", user);
		if (i <= 0) {
			return false;
		}
		// 保存此user的所有角色
		Map<String, Integer> params = Maps.newHashMap();
		params.put("userId", user.getId());
		for (String roleId : roles) {
			params.put("roleId", Integer.parseInt(roleId));
			i = getGenericBaseDAO().execute("user.saveUserRole", params);
			if (i <= 0) {
				return false;
			}
		}
		return true;
	}

	/**
	 * 更新用户的信息
	 * 
	 * @param user
	 * @return
	 */
	public boolean updateUser(User user) {
		
		int i = getGenericBaseDAO().execute("user.updateUser", user);
		if(i != 1){
			return false;
		}
		return true;
	}

	/**
	 * 根据user的相关属性获取分页列表
	 * 
	 * @param user
	 * @param pageIndex
	 *            页码
	 * @param pageSize
	 *            每页的个数
	 * @return
	 */
	@Transactional
	public Pagination<User> getUsers(User user, int pageIndex, int pageSize) {
		
		Integer count = getGenericBaseDAO().executeForObject("user.countList", user, Integer.class);
		Pagination<User> pageUsers = new Pagination<User>(count, pageIndex, pageSize);
		List<User> users = getGenericBaseDAO().executeForObjectList("user.userPageList", user, pageUsers.getStartPosition(), pageUsers.getPageSize());
		pageUsers.bindData(users);
		
		return pageUsers;
		
	}

	/**
	 * 根据角色id查询所有属于此角色的用户
	 * 
	 * @param roleId
	 * @return
	 */
	public List<User> getUsersByRoleId(int roleId) {
		
		Map<String, Integer> params = Maps.newHashMap();
		params.put("roleId", roleId);
		List<User>  users = getGenericBaseDAO().executeForObjectList("user.getUsersByRoleId", params);
		System.out.println("获取完毕");
		return users;
		
	}

	/**
	 * 根据用户id删除相应的用户
	 * 
	 * @param userId
	 * @return
	 */
	public boolean deleteUser(int userId) {
		
		Map<String, Integer> params = Maps.newHashMap();
		params.put("userId", userId);
		int i = getGenericBaseDAO().execute("user.deleteUserById", params);
		if(i != 1){
			return false;
		}
		return true;
	}

	public boolean checkUser(User user) {
		
		int count = getGenericBaseDAO().executeForObject("user.checkUser", user, Integer.class);
		if(count != 1){
			return false;
		}else{
			return true;
		}
		
	}

	public User getUserByEmail(String email) {
		Map<String, String> params = Maps.newHashMap();
		params.put("email", email);
		User user = getGenericBaseDAO().executeForObject("user.getUserByEmail", params, User.class);
		return user;
	}

}
