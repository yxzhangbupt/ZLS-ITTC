package com.water.service.impl;
import java.util.List;

import com.water.beans.DataAnalysis;
import com.water.dao.DataAnalysisDao;
import com.water.service.DataAnalysisService;
public class DataAnalysisServiceImpl implements DataAnalysisService{
	private DataAnalysisDao dataAnalysisDao;

	
	public DataAnalysisDao getDataAnalysisDao() {
		return dataAnalysisDao;
	}

	public void setDataAnalysisDao(DataAnalysisDao dataAnalysisDao) {
		this.dataAnalysisDao = dataAnalysisDao;
	}

	@Override
	public int addDataAnalysis(DataAnalysis dataAnalysis) {
		// TODO Auto-generated method stub
		return dataAnalysisDao.add(dataAnalysis);
	}
	
	@Override
	public int deleteDataAnalysis(long id) {
		// TODO Auto-generated method stub
		return dataAnalysisDao.delete(id);
	}
	@Override
	public int updateDataAnalysis(DataAnalysis dataAnalysis) {
		// TODO Auto-generated method stub
		return dataAnalysisDao.update(dataAnalysis);
	}
	@Override
	public DataAnalysis findDataAnalysisById(long id) {
		// TODO Auto-generated method stub
		return dataAnalysisDao.findById(id);
	}
	@Override
	public List<DataAnalysis> findAll() {
		// TODO Auto-generated method stub
		return dataAnalysisDao.find();
	}
	@Override
	public long findTotal() {
		// TODO Auto-generated method stub
		return dataAnalysisDao.findTotal();
	}
	@Override
	public List<DataAnalysis> findPages(int page, int size, String sort, String order) {
		// TODO Auto-generated method stub
		int begin = (page - 1) * size;
		return dataAnalysisDao.findPages(begin, size, sort, order);
	}

	@Override
	public List<DataAnalysis> findBySql(String sql) {
		// TODO Auto-generated method stub
		
		return dataAnalysisDao.findBySql(sql);
	}
	
}
