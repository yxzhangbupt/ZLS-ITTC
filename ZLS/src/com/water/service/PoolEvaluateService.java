package com.water.service;
import java.util.List;

import com.water.beans.PoolEvaluate;
public interface PoolEvaluateService {
	int addPoolEvaluate(PoolEvaluate poolEvaluate);			//添加用户
	int deletePoolEvaluate(long id);			//删除用户
	int updatePoolEvaluate(PoolEvaluate poolEvaluate);			//更新用户
	PoolEvaluate findPoolEvaluateById(long id);			//按id查找用户
	List<PoolEvaluate> findAll();				//查找全部用户
	long findTotal();
	List<PoolEvaluate> findPages(int page, int size, String sort, String order);
	List<PoolEvaluate> findBySql(String sql);
}
