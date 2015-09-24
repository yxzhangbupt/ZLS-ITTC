package com.water.service.impl;
import java.util.List;

import com.water.beans.User;
import com.water.dao.UserDao;
import com.water.service.UserService;
public class UserServiceImpl implements UserService{
	private UserDao userDao;

	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return userDao.add(user);
	}
	
	@Override
	public int deleteUser(long id) {
		// TODO Auto-generated method stub
		return userDao.delete(id);
	}
	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return userDao.update(user);
	}
	@Override
	public User findUserById(long id) {
		// TODO Auto-generated method stub
		return userDao.findById(id);
	}
	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userDao.find();
	}
	@Override
	public long findTotal() {
		// TODO Auto-generated method stub
		return userDao.findTotal();
	}
	@Override
	public List<User> findPages(int page, int size, String sort, String order) {
		// TODO Auto-generated method stub
		int begin = (page - 1) * size;
		return userDao.findPages(begin, size, sort, order);
	}
	
}
