package com.water.action;

import java.io.File;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import com.opensymphony.xwork2.ActionSupport;
import com.water.beans.DataAnalysis;
import com.water.service.DataAnalysisService;


@SuppressWarnings("serial")
public class DataAnalysisAction extends ActionSupport{
	//保存的文件名
	private String filename;

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	private DataAnalysisService dataAnalysisService;

	private DataAnalysis dataAnalysis; 

	//查询条件
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

	private int page;//  当前第几页
	private Map<String, Object> data = new HashMap<String, Object>();// 封装数据
	private int size; // 页面大小，页面是rows
	private String order;//排序方向，desc和asc
	private String sort;  // 排序属性名

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
	 * 查询某一页的数据
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
	 * 添加一项数据
	 */
	public String addDataAnalysis() {
		operateSuccess = (dataAnalysisService.addDataAnalysis(dataAnalysis) > 0);
		return "success";
	}

	/**
	 * 更新一项数据
	 */
	public String updateDataAnalysis() {
		operateSuccess = (dataAnalysisService.updateDataAnalysis(dataAnalysis) > 0);
		return "success";
	}

	/**
	 * 删除一项数据
	 */
	public String deleteDataAnalysis() {
		operateSuccess = (dataAnalysisService.deleteDataAnalysis(dataAnalysis.getID()) > 0);
		return "success";
	}

	/**
	 * 通过ID查询数据
	 */
	public String findDataAnalysis() {
		dataAnalysis = dataAnalysisService.findDataAnalysisById(dataAnalysis.getID());
		return "success";
	}
	
	/**
	 * 通过设置查询条件查询
	 */
	public String searchDataAnalysis() {
		String sql;
		//查询条件拼接
		if(searchT==null && searchPoolID ==null ){
			sql="from DataAnalysis";
		}
		else {
			sql="from DataAnalysis where 1=1";
			if (searchT!=null)
			{
				sql+= " and t = '"+(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(searchT)+"'";
			}
			if(!searchPoolID.equals(""))
			{
				sql+=" and PoolID like '%"+searchPoolID+"'";
			}
		}

		System.out.println(sql);

		List<DataAnalysis> searchList = dataAnalysisService.findBySql(sql);
		data.put("total", searchList.size());// 查询的结果总数
		data.put("rows", searchList);// 查询的结果
		return "success";
	}
	
	public String export2excel(){
		String sql;
		/*查询条件拼接*/
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

		System.out.println(sql);
		List<DataAnalysis> list = dataAnalysisService.findBySql(sql);
		WritableWorkbook book = null;
		try{
			//打开文件
			if(filename==null || filename.isEmpty())
			{
				//导出文件名为系统当前时间
				filename=(new SimpleDateFormat("yyyyMMdd-HHmmss")).format(System.currentTimeMillis());
			}
			String path="D://数据分析表-"+filename+".xls";
			book = Workbook.createWorkbook(new File(path));
			//生成工作表
			WritableSheet sheet = book.createSheet("sheet1", 0);


			//给sheet电子版中所有的列设置默认的列的宽度;  
			sheet.getSettings().setDefaultColumnWidth(15);
			sheet.setColumnView(1, 20);//给第二列设置列宽 
			//设置格式
			WritableFont formatH = new WritableFont(WritableFont.TAHOMA,10,WritableFont.BOLD);   
			WritableCellFormat formatHead = new WritableCellFormat(formatH);
			//设置自动对齐 
			formatHead.setAlignment(jxl.format.Alignment.CENTRE);  

			WritableFont formatB = new WritableFont(WritableFont.TAHOMA,10);   
			WritableCellFormat formatBody = new WritableCellFormat(formatB);
			formatBody.setAlignment(jxl.format.Alignment.CENTRE); 

//			List<DataAnalysis> list = dataAnalysisService.findAll();
			if(list!=null && !list.isEmpty()){
				sheet.addCell(new Label(0,0," 编号 ",formatHead));
				sheet.addCell(new Label(1,0," 水池编号 ",formatHead));
				sheet.addCell(new Label(2,0," 时间 ",formatHead));
				sheet.addCell(new Label(3,0," 总来水量 ",formatHead));
				sheet.addCell(new Label(4,0," 出水量 ",formatHead));
				sheet.addCell(new Label(5,0," 洗虹吸滤池 ",formatHead));
				sheet.addCell(new Label(6,0," 洗V型滤池 ",formatHead));				
				sheet.addCell(new Label(7,0," 炭池反冲洗 ",formatHead));
				sheet.addCell(new Label(8,0," 机加池排泥 ",formatHead));					
				sheet.addCell(new Label(9,0," 回流水量 ",formatHead));
				sheet.addCell(new Label(10,0," 蓄水量 ",formatHead));
				sheet.addCell(new Label(11,0," 预测水位 ",formatHead));

				for (int i=0;i<list.size();i++){

					sheet.addCell(new Label(0,i+1,Long.toString(list.get(i).getID()),formatBody));
					sheet.addCell(new Label(1,i+1,list.get(i).getPoolID()));
					sheet.addCell(new Label(2,i+1,(new SimpleDateFormat("yyyy-MM-dd hh")).format(list.get(i).getT()),formatBody));
					sheet.addCell(new Label(3,i+1,Double.toString(list.get(i).getInV()),formatBody));
					sheet.addCell(new Label(4,i+1,Double.toString(list.get(i).getOutV()),formatBody));
					sheet.addCell(new Label(5,i+1,Double.toString(list.get(i).getHXOutV()),formatBody));
					sheet.addCell(new Label(6,i+1,Double.toString(list.get(i).getLCOutV()),formatBody));
					sheet.addCell(new Label(7,i+1,Double.toString(list.get(i).getTCOutV()),formatBody));					
					sheet.addCell(new Label(8,i+1,Double.toString(list.get(i).getJJOutV()),formatBody));	
					sheet.addCell(new Label(9,i+1,Double.toString(list.get(i).getHLInV()),formatBody));
					sheet.addCell(new Label(10,i+1,Double.toString(list.get(i).getStorage()),formatBody));
					sheet.addCell(new Label(11,i+1,Double.toString(list.get(i).getPreH()),formatBody));

				}//for
			}//if
			System.out.println("--写入excel:"+path+"--");
			//写入数据并关闭文件
			book.write();
		}catch(Exception e){
			System.out.println(e);
		}finally{
			if(book!=null){
				try{
					book.close();
				}catch(Exception e){
					e.printStackTrace();
				}
			}
		}
		return "success";

	}
}
