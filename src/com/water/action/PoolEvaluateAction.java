package com.water.action;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.water.beans.PoolEvaluate;
import com.water.service.PoolEvaluateService;


@SuppressWarnings("serial")
public class PoolEvaluateAction extends ActionSupport{
	private PoolEvaluateService poolEvaluateService;

	private PoolEvaluate poolEvaluate; // 一本书
	private int page;// 当前第几页
	private Map<String, Object> data = new HashMap<String, Object>();// 封装数据
	private int size;// 页面大小，页面是rows
	private String order;// 排序方向，desc和asc
	private String sort;// 排序属性名
	
	/*查询输入参数*/
	private String searchPoolID=null;	//查询水池编号
	public String getSearchPoolID() {
		return searchPoolID;
	}
	public void setSearchPoolID(String searchPoolID) {
		this.searchPoolID = searchPoolID;
	}
	
	private Date searchT=null;		//查询时间
	public Date getSearchT() {
		return searchT;
	}
	public void setSearchT(Date searchT) {
		this.searchT = searchT;
	}

	private int searchState=-1;		//查询的状态
	
	public int getSearchState() {
		return searchState;
	}
	public void setSearchState(int searchState) {
		this.searchState = searchState;
	}

	private double lowAlgaeContent;  //藻类含量查询下界
	private double highAlgaeContent; //藻类含量查询上界
	
	
	public double getLowAlgaeContent() {
		return lowAlgaeContent;
	}
	public void setLowAlgaeContent(double lowAlgaeContent) {
		this.lowAlgaeContent = lowAlgaeContent;
	}
	public double getHighAlgaeContent() {
		return highAlgaeContent;
	}
	public void setHighAlgaeContent(double highAlgaeContent) {
		this.highAlgaeContent = highAlgaeContent;
	}

	// 标识操作是否成功
	private boolean operateSuccess;

	// set注入
	public void setPoolEvaluateService(PoolEvaluateService poolEvaluateService) {
		this.poolEvaluateService = poolEvaluateService;
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

	public PoolEvaluate getPoolEvaluate() {
		return poolEvaluate;
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

	public void setPoolEvaluate(PoolEvaluate poolEvaluate) {
		this.poolEvaluate = poolEvaluate;
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
			data.put("total", poolEvaluateService.findTotal());// 得到所有的记录数
//		data.put("rows", poolEvaluateService.findAll());
		data.put("rows", poolEvaluateService.findPages(page, size, sort, order));// 得到某一页的数据
		
		return "success";
	}

	/**
	 * 添加书籍
	 */
	public String addPoolEvaluate() {
		operateSuccess = (poolEvaluateService.addPoolEvaluate(poolEvaluate) > 0);
		return "success";
	}

	/**
	 * 更新书籍
	 */
	public String updatePoolEvaluate() {
		operateSuccess = (poolEvaluateService.updatePoolEvaluate(poolEvaluate) > 0);
		return "success";
	}

	/**
	 * 删除书籍
	 */
	public String deletePoolEvaluate() {
		operateSuccess = (poolEvaluateService.deletePoolEvaluate(poolEvaluate.getID()) > 0);
		return "success";
	}

	/**
	 * 查询一本书
	 */
	public String findPoolEvaluate() {
		poolEvaluate = poolEvaluateService.findPoolEvaluateById(poolEvaluate.getID());
		return "success";
	}
	
	public String searchPoolEvaluate() {
		String sql;
//		/*查询条件拼接*/
		if(searchT==null && searchPoolID ==null){
			sql="from PoolEvaluate";
		}
		else {
			sql="from PoolEvaluate where 1=1";
			if (searchT!=null)
			{
				sql+= " and t = '"+searchT+"'";
			}
			if(!searchPoolID.equals(""))
			{
				sql+=" and PoolID like '%"+searchPoolID+"'";
			}
			if(searchState!=-1)
			{
				sql+=" and State ='"+searchState+"'";
			}
			if(lowAlgaeContent!=0)
			{
				sql+=" and AlgaeContent >='"+lowAlgaeContent+"'";
			}
			if(highAlgaeContent!=0)
			{
				sql+=" and AlgaeContent <= '"+highAlgaeContent+"'";
			}
			
		}
		System.out.println(sql);
		data.clear();// 清除
		List<PoolEvaluate> searchList = poolEvaluateService.findBySql(sql);
		data.put("total", searchList.size());// 得到所有的记录数
		data.put("rows", searchList);// 得到某一页的数据
		return "success";
	}

}
