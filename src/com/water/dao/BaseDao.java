package com.water.dao;

import java.util.List;

public interface BaseDao<Object> {

	/**
		 * 查询所有书籍
		 * 
		 * @return
		 */
		public List<Object> find(String tableName);

		/**
		 * 添加书籍
		 * 
		 * @param object
		 * @return
		 */
		public int add(Object object);

		/**
		 * 删除书籍
		 * 
		 * @param id
		 * @return
		 */
		public int delete(Class c,int id);

		/**
		 * 获得一书籍记录
		 * 
		 * @param id
		 * @return
		 */
		public Object findById(Class c, int id);

		/**
		 * 更新书籍
		 * 
		 * @param object
		 * @return
		 */
		public int update(Object object);

		/**
		 * 统计书籍共多少本
		 * 
		 * @return
		 */
		public long findTotal(String tableName);

		/**
		 * 查询一页的数据
		 * 
		 * @param begin 从哪条开始0
		 * @param end 得到多少条
		 * @param sort 排序字段
		 * @param order 升序或降序 desc/asc
		 */
		public List<Object> findPages(int begin, int end, String sort, String order,Class c);

	}
