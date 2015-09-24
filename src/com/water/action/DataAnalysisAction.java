package com.water.action;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.water.beans.DataAnalysis;
import com.water.service.DataAnalysisService;


@SuppressWarnings("serial")
public class DataAnalysisAction extends ActionSupport{
	private DataAnalysisService dataAnalysisService;

	private DataAnalysis dataAnalysis; // 一本书

	//查询参数
	private String searchPoolID=null;
	public String getSearchPoolID() {
		return searchPoolID;
	}

	public void setSearchPoolID(String searchPoolID) {
		this.searchPoolID = searchPoolID;
	}

	private Date searchT=null;

	public Date getSearchT() {
		return searchT;
	}

	public void setSearchT(Date searchT) {
		this.searchT = searchT;
	}

	private int page;// 当前第几页
	private Map<String, Object> data = new HashMap<String, Object>();// 封装数据
	private int size;// 页面大小，页面是rows
	private String order;// 排序方向，desc和asc
	private String sort;// 排序属性名，如price

	// 标识操作是否成功
	private boolean operateSuccess;

	// set注入
	public void setDataAnalysisService(DataAnalysisService dataAnalysisService) {
		this.dataAnalysisService = dataAnalysisService;
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

	public DataAnalysis getDataAnalysis() {
		return dataAnalysis;
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

	public void setDataAnalysis(DataAnalysis dataAnalysis) {
		this.dataAnalysis = dataAnalysis;
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
		
		data.put("total", dataAnalysisService.findTotal());// 得到所有的记录数
		data.put("rows", dataAnalysisService.findPages(page, size, sort, order));// 得到某一页的数据
		
		return "success";
	}

	/**
	 * 添加书籍
	 */
	public String addDataAnalysis() {
		operateSuccess = (dataAnalysisService.addDataAnalysis(dataAnalysis) > 0);
		return "success";
	}

	/**
	 * 更新书籍
	 */
	public String updateDataAnalysis() {
		operateSuccess = (dataAnalysisService.updateDataAnalysis(dataAnalysis) > 0);
		return "success";
	}

	/**
	 * 删除书籍
	 */
	public String deleteDataAnalysis() {
		operateSuccess = (dataAnalysisService.deleteDataAnalysis(dataAnalysis.getID()) > 0);
		return "success";
	}

	/**
	 * 查询一个记录
	 */
	public String findDataAnalysis() {
		dataAnalysis = dataAnalysisService.findDataAnalysisById(dataAnalysis.getID());
		return "success";
	}
	
	public String searchDataAnalysis() {
		String sql="from DataAnalysis where 1=1";
		/*查询条件拼接*/
		if (searchT!=null)
		{
			sql+= " and t = '"+searchT+"'";
		}
		if(!searchPoolID.equals(""))
		{
			sql+=" and PoolID like '%"+searchPoolID+"'";
		}
		System.out.println(sql);
//		System.out.println("测试结果");
//		data.clear();// 清除
//		if (sort == null) {
//			sort = "ID";// 默认按编号排序
//		}
//		if (order == null) {
//			order = "asc";// 默认按升序排序
//		}
		List<DataAnalysis> searchList = dataAnalysisService.findBySql(sql);
		data.put("total", searchList.size());// 得到所有的记录数
		data.put("rows", searchList);// 得到某一页的数据
		return "success";
	}
}
