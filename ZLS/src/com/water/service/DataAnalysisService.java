package com.water.service;
import java.util.List;

import com.water.beans.DataAnalysis;
public interface DataAnalysisService {
	int addDataAnalysis(DataAnalysis dataAnalysis);			//添加DataAnalysis
	int deleteDataAnalysis(long id);			//删除DataAnalysis
	int updateDataAnalysis(DataAnalysis dataAnalysis);			//更新DataAnalysis
	DataAnalysis findDataAnalysisById(long id);			//按id查找DataAnalysis
	List<DataAnalysis> findAll();				//查找全部DataAnalysis
	long findTotal();
	List<DataAnalysis> findPages(int page, int size, String sort, String order);
	List<DataAnalysis> findBySql(String sql);
}
