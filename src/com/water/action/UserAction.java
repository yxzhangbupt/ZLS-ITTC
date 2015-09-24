package com.water.action;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.water.beans.User;

import com.water.service.UserService;


@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	private UserService userService;

	private User user; // 一本书
	private int page;// 当前第几页
	private Map<String, Object> data = new HashMap<String, Object>();// 封装数据
	private int size;// 页面大小，页面是rows
	private String order;// 排序方向，desc和asc
	private String sort;// 排序属性名，如price

	// 标识操作是否成功
	private boolean operateSuccess;

	// set注入
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/*
	 * 给easyui排序用的，表示排序方法
	 */
	public void setOrder(String order) {
		this.order = order;
	}

	/*
	 * 给easyui排序用的，表示排序字段
	 */
	public void setSort(String sort) {
		this.sort = sort;
	}

	/*
	 * 给easyui指定页面大小用的，如果要指定页面大小可变
	 * 页面是rows
	 */
	public void setRows(int size) {
		this.size = size;
	}

	/*
	 * 给easyui分页用的
	 */
	public void setPage(int page) {
		this.page = page;
	}

	// getter/setter方法

	public User getUser() {
		return user;
	}

	public int getPage() {
		return page;
	}

	public Map<String, Object> getData() {
		return data;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	public int getRows() {
		return size;
	}

	public String getOrder() {
		return order;
	}

	public String getSort() {
		return sort;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public boolean isOperateSuccess() {
		return operateSuccess;
	}

	public void setOperateSuccess(boolean operateSuccess) {
		this.operateSuccess = operateSuccess;
	}

	/**
	 * 查询某一页的书籍
	 */
	public String list() {
		data.clear();// 清除
		if (sort == null) {
			sort = "id";// 默认按书名排序
		}
		if (order == null) {
			order = "asc";// 默认按升序排序
		}
			data.put("total", userService.findTotal());// 得到所有的记录数
//		data.put("rows", userService.findAll());
		data.put("rows", userService.findPages(page, size, sort, order));// 得到某一页的数据
		
		return "success";
	}
	
	/**
	 * 添加书籍
	 */
	public String addUser() {
		operateSuccess = (userService.addUser(user) > 0);
		return "success";
	}

	/**
	 * 更新书籍
	 */
	public String updateUser() {
		operateSuccess = (userService.updateUser(user) > 0);
		return "success";
	}

	/**
	 * 删除书籍
	 */
	public String deleteUser() {
		operateSuccess = (userService.deleteUser(user.getId()) > 0);
		return "success";
	}

	/**
	 * 查询一本书
	 */
	public String findUser() {
		user = userService.findUserById(user.getId());
		return "success";
	}

}
