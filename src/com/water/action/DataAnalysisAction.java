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

	private DataAnalysis dataAnalysis; // һ����

	//��ѯ����
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

	private int page;// ��ǰ�ڼ�ҳ
	private Map<String, Object> data = new HashMap<String, Object>();// ��װ���
	private int size;// ҳ���С��ҳ����rows
	private String order;// ������desc��asc
	private String sort;// ������������price

	// ��ʶ�����Ƿ�ɹ�
	private boolean operateSuccess;

	// setע��
	public void setDataAnalysisService(DataAnalysisService dataAnalysisService) {
		this.dataAnalysisService = dataAnalysisService;
	}

	/*
	 * ��easyui�����õģ���ʾ���򷽷�
	 */
	public void setOrder(String order) {
		this.order = order;
	}

	/*
	 * ��easyui�����õģ���ʾ�����ֶ�
	 */
	public void setSort(String sort) {
		this.sort = sort;
	}

	/*
	 * ��easyuiָ��ҳ���С�õģ����Ҫָ��ҳ���С�ɱ�
	 * ҳ����rows
	 */
	public void setRows(int size) {
		this.size = size;
	}

	/*
	 * ��easyui��ҳ�õ�
	 */
	public void setPage(int page) {
		this.page = page;
	}

	// getter/setter����

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
	 * ��ѯĳһҳ���鼮
	 */
	public String list() {
		data.clear();// ���
		if (sort == null) {
			sort = "id";// Ĭ�ϰ���������
		}
		if (order == null) {
			order = "asc";// Ĭ�ϰ���������
		}
		
		data.put("total", dataAnalysisService.findTotal());// �õ����еļ�¼��
		data.put("rows", dataAnalysisService.findPages(page, size, sort, order));// �õ�ĳһҳ�����
		
		return "success";
	}

	/**
	 * ����鼮
	 */
	public String addDataAnalysis() {
		operateSuccess = (dataAnalysisService.addDataAnalysis(dataAnalysis) > 0);
		return "success";
	}

	/**
	 * �����鼮
	 */
	public String updateDataAnalysis() {
		operateSuccess = (dataAnalysisService.updateDataAnalysis(dataAnalysis) > 0);
		return "success";
	}

	/**
	 * ɾ���鼮
	 */
	public String deleteDataAnalysis() {
		operateSuccess = (dataAnalysisService.deleteDataAnalysis(dataAnalysis.getID()) > 0);
		return "success";
	}

	/**
	 * ��ѯһ����¼
	 */
	public String findDataAnalysis() {
		dataAnalysis = dataAnalysisService.findDataAnalysisById(dataAnalysis.getID());
		return "success";
	}
	
	public String searchDataAnalysis() {
		String sql;
//		/*��ѯ����ƴ��*/
		if(searchT==null && searchPoolID ==null ){
			sql="from DataAnalysis";
		}
		else {
			sql="from DataAnalysis where 1=1";
			if (searchT!=null)
			{
				sql+= " and t = '"+searchT+"'";
			}
			if(!searchPoolID.equals(""))
			{
				sql+=" and PoolID like '%"+searchPoolID+"'";
			}
		}
//		/*��ѯ����ƴ��*/
//		if (searchT!=null)
//		{
//			sql+= " and t = '"+searchT+"'";
//		}
//		if(!searchPoolID.equals(""))
//		{
//			sql+=" and PoolID like '%"+searchPoolID+"'";
//		}
		System.out.println(sql);
//		System.out.println("���Խ��");
//		data.clear();// ���
//		if (sort == null) {
//			sort = "ID";// Ĭ�ϰ��������
//		}
//		if (order == null) {
//			order = "asc";// Ĭ�ϰ���������
//		}
		List<DataAnalysis> searchList = dataAnalysisService.findBySql(sql);
		data.put("total", searchList.size());// �õ����еļ�¼��
		data.put("rows", searchList);// �õ�ĳһҳ�����
		return "success";
	}
}
