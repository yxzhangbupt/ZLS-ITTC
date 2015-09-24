package com.water.service;
import java.util.List;

import com.water.beans.User;
public interface UserService {
	int addUser(User user);			//添加用户
	int deleteUser(long id);			//删除用户
	int updateUser(User user);			//更新用户
	User findUserById(long id);			//按id查找用户
	List<User> findAll();				//查找全部用户
	long findTotal();
	List<User> findPages(int page, int size, String sort, String order);

}
