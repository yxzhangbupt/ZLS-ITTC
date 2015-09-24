package com.water.service.impl;
import java.util.List;

import com.water.beans.PoolEvaluate;
import com.water.dao.PoolEvaluateDao;
import com.water.service.PoolEvaluateService;
public class PoolEvaluateServiceImpl implements PoolEvaluateService{
	private PoolEvaluateDao poolEvaluateDao;

	
	public PoolEvaluateDao getPoolEvaluateDao() {
		return poolEvaluateDao;
	}

	public void setPoolEvaluateDao(PoolEvaluateDao poolEvaluateDao) {
		this.poolEvaluateDao = poolEvaluateDao;
	}

	@Override
	public int addPoolEvaluate(PoolEvaluate poolEvaluate) {
		// TODO Auto-generated method stub
		return poolEvaluateDao.add(poolEvaluate);
	}
	
	@Override
	public int deletePoolEvaluate(long id) {
		// TODO Auto-generated method stub
		return poolEvaluateDao.delete(id);
	}
	@Override
	public int updatePoolEvaluate(PoolEvaluate poolEvaluate) {
		// TODO Auto-generated method stub
		return poolEvaluateDao.update(poolEvaluate);
	}
	@Override
	public PoolEvaluate findPoolEvaluateById(long id) {
		// TODO Auto-generated method stub
		return poolEvaluateDao.findById(id);
	}
	@Override
	public List<PoolEvaluate> findAll() {
		// TODO Auto-generated method stub
		return poolEvaluateDao.find();
	}
	@Override
	public long findTotal() {
		// TODO Auto-generated method stub
		return poolEvaluateDao.findTotal();
	}
	@Override
	public List<PoolEvaluate> findPages(int page, int size, String sort, String order) {
		// TODO Auto-generated method stub
		int begin = (page - 1) * size;
		return poolEvaluateDao.findPages(begin, size, sort, order);
	}

	@Override
	public List<PoolEvaluate> findBySql(String sql) {
		// TODO Auto-generated method stub
		return poolEvaluateDao.findBySql(sql);
	}
	
}
