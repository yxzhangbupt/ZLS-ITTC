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

	private PoolEvaluate poolEvaluate; // һ����
	private int page;// ��ǰ�ڼ�ҳ
	private Map<String, Object> data = new HashMap<String, Object>();// ��װ���
	private int size;// ҳ���С��ҳ����rows
	private String order;// ������desc��asc
	private String sort;// ����������
	
	/*��ѯ�������*/
	private String searchPoolID=null;	//��ѯˮ�ر��
	public String getSearchPoolID() {
		return searchPoolID;
	}
	public void setSearchPoolID(String searchPoolID) {
		this.searchPoolID = searchPoolID;
	}
	
	private Date searchT=null;		//��ѯʱ��
	public Date getSearchT() {
		return searchT;
	}
	public void setSearchT(Date searchT) {
		this.searchT = searchT;
	}

	private int searchState=-1;		//��ѯ��״̬
	
	public int getSearchState() {
		return searchState;
	}
	public void setSearchState(int searchState) {
		this.searchState = searchState;
	}

	private double lowAlgaeContent;  //���ຬ����ѯ�½�
	private double highAlgaeContent; //���ຬ����ѯ�Ͻ�
	
	
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
	
	/*NTU查询参数*/
	private double lowNTU;
	private double highNTU;
	

	public double getLowNTU() {
		return lowNTU;
	}
	public void setLowNTU(double lowNTU) {
		this.lowNTU = lowNTU;
	}
	public double getHighNTU() {
		return highNTU;
	}
	public void setHighNTU(double highNTU) {
		this.highNTU = highNTU;
	}

	// ��ʶ�����Ƿ�ɹ�
	private boolean operateSuccess;

	// setע��
	public void setPoolEvaluateService(PoolEvaluateService poolEvaluateService) {
		this.poolEvaluateService = poolEvaluateService;
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
			data.put("total", poolEvaluateService.findTotal());// �õ����еļ�¼��
//		data.put("rows", poolEvaluateService.findAll());
		data.put("rows", poolEvaluateService.findPages(page, size, sort, order));// �õ�ĳһҳ�����
		
		return "success";
	}

	/**
	 * ����鼮
	 */
	public String addPoolEvaluate() {
		operateSuccess = (poolEvaluateService.addPoolEvaluate(poolEvaluate) > 0);
		return "success";
	}

	/**
	 * �����鼮
	 */
	public String updatePoolEvaluate() {
		operateSuccess = (poolEvaluateService.updatePoolEvaluate(poolEvaluate) > 0);
		return "success";
	}

	/**
	 * ɾ���鼮
	 */
	public String deletePoolEvaluate() {
		operateSuccess = (poolEvaluateService.deletePoolEvaluate(poolEvaluate.getID()) > 0);
		return "success";
	}

	/**
	 * ��ѯһ����
	 */
	public String findPoolEvaluate() {
		poolEvaluate = poolEvaluateService.findPoolEvaluateById(poolEvaluate.getID());
		return "success";
	}
	
	public String searchPoolEvaluate() {
		String sql;
//		/*��ѯ����ƴ��*/
		if(searchT==null && searchPoolID ==null && searchState==-1){
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
			if(lowNTU!=0)
			{
				sql+=" and NTU >='"+lowNTU+"'";
			}
			if(highNTU!=0)
			{
				sql+=" and NTU <= '"+highNTU+"'";
			}
			
		}
		System.out.println(sql);
		data.clear();// ���
		List<PoolEvaluate> searchList = poolEvaluateService.findBySql(sql);
		data.put("total", searchList.size());// �õ����еļ�¼��
		data.put("rows", searchList);// �õ�ĳһҳ�����
		return "success";
	}

}
