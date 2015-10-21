package com.water.action;

import java.io.File;
import java.sql.Date;
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
import com.water.beans.PoolEvaluate;
import com.water.service.PoolEvaluateService;


@SuppressWarnings("serial")
public class PoolEvaluateAction extends ActionSupport{
	//保存的文件名
	private String filename;

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	private PoolEvaluateService poolEvaluateService;

	private PoolEvaluate poolEvaluate; 
	private int page;// 当前页码
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
	/*NTU查询参数*/
	private double lowNTU;  //来水浊度下限
	private double highNTU;	//来水浊度上限
	

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
	private int searchState=-1;		//查询状态	
	public int getSearchState() {
		return searchState;
	}
	public void setSearchState(int searchState) {
		this.searchState = searchState;
	}
	/*来水藻类含量查询参数*/
	private double lowAlgaeContent;  //来水藻类含量下限
	private double highAlgaeContent; //来水藻类含量上限
	
	
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
	
	/* 出水浊度查询参数	 */
	private double lowOutNTU;	//出水浊度下限
	private double highOutNTU;	//出水浊度上限
		
	public double getLowOutNTU() {
		return lowOutNTU;
	}

	public void setLowOutNTU(double lowOutNTU) {
		this.lowOutNTU = lowOutNTU;
	}

	public double getHighOutNTU() {
		return highOutNTU;
	}

	public void setHighOutNTU(double highOutNTU) {
		this.highOutNTU = highOutNTU;
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
	 * 查询某一页数据
	 */
	public String list() {
		data.clear();// 清除
		if (sort == null) {
			sort = "ID";//默认按ID排序
		}
		if (order == null) {
			order = "asc";// 默认升序
		}
		data.put("total", poolEvaluateService.findTotal());// 得到所有的记录数
//		data.put("rows", poolEvaluateService.findAll());
		data.put("rows", poolEvaluateService.findPages(page, size, sort, order));// 得到某一页数据
		
		return "success";
	}

	/**
	 * 添加一项数据
	 */
	public String addPoolEvaluate() {
		operateSuccess = (poolEvaluateService.addPoolEvaluate(poolEvaluate) > 0);
		return "success";
	}

	/**
	 * 更新一项数据
	 */
	public String updatePoolEvaluate() {
		operateSuccess = (poolEvaluateService.updatePoolEvaluate(poolEvaluate) > 0);
		return "success";
	}

	/**
	 * 删除一项数据
	 */
	public String deletePoolEvaluate() {
		operateSuccess = (poolEvaluateService.deletePoolEvaluate(poolEvaluate.getID()) > 0);
		return "success";
	}

	/**
	 * 通过ID查询一项数据
	 */
	public String findPoolEvaluate() {
		poolEvaluate = poolEvaluateService.findPoolEvaluateById(poolEvaluate.getID());
		return "success";
	}
	
	public String searchPoolEvaluate() {
		String sql;
		//查询条件拼接
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
			if(lowNTU!=0)
			{
				sql+=" and NTU >='"+lowNTU+"'";
			}
			if(highNTU!=0)
			{
				sql+=" and NTU <= '"+highNTU+"'";
			}
			if(lowAlgaeContent!=0)
			{
				sql+=" and AlgaeContent >='"+lowAlgaeContent+"'";
			}
			if(highAlgaeContent!=0)
			{
				sql+=" and AlgaeContent <= '"+highAlgaeContent+"'";
			}
			if(lowOutNTU!=0)
			{
				sql+=" and OutNTU >='"+lowOutNTU+"'";
			}
			if(highOutNTU!=0)
			{
				sql+=" and OutNTU <= '"+highOutNTU+"'";
			}			
		}
		System.out.println(sql);
		data.clear();//清除数据
		List<PoolEvaluate> searchList = poolEvaluateService.findBySql(sql);
		data.put("total", searchList.size());// 查询到的记录总数
		data.put("rows", searchList);// 查询的结果
		return "success";
	}
	
	public String export2excel(){

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
			if(lowNTU!=0)
			{
				sql+=" and NTU >='"+lowNTU+"'";
			}
			if(highNTU!=0)
			{
				sql+=" and NTU <= '"+highNTU+"'";
			}
			if(lowAlgaeContent!=0)
			{
				sql+=" and AlgaeContent >='"+lowAlgaeContent+"'";
			}
			if(highAlgaeContent!=0)
			{
				sql+=" and AlgaeContent <= '"+highAlgaeContent+"'";
			}
			if(lowOutNTU!=0)
			{
				sql+=" and OutNTU >='"+lowOutNTU+"'";
			}
			if(highOutNTU!=0)
			{
				sql+=" and OutNTU <= '"+highOutNTU+"'";
			}
			
		}
		System.out.println(sql);
		List<PoolEvaluate> list = poolEvaluateService.findBySql(sql);
		WritableWorkbook book = null;
		try{
			//打开文件
			if(filename==null || filename.isEmpty())
			{
				//导出文件名为系统当前时间
				filename=(new SimpleDateFormat("yyyyMMdd-HHmmss")).format(System.currentTimeMillis());
			}
			String path="D://水池评估表-"+filename+".xls";
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
				
				sheet.addCell(new Label(0,0," 时间 ",formatHead));
				sheet.addCell(new Label(1,0," 机加池编号 ",formatHead));				
				sheet.addCell(new Label(2,0," PAC投加量 ",formatHead));
				sheet.addCell(new Label(3,0," FeCl3投加量 ",formatHead));
				sheet.addCell(new Label(4,0," 开启度 ",formatHead));
				sheet.addCell(new Label(5,0," 转速 ",formatHead));
				sheet.addCell(new Label(6,0," 沉降比 ",formatHead));
				sheet.addCell(new Label(7,0," 小斗排泥时长 ",formatHead));
				sheet.addCell(new Label(8,0," 大斗排泥时长 ",formatHead));				
				sheet.addCell(new Label(9,0," 原水浊度 ",formatHead));	
				sheet.addCell(new Label(10,0," 原水藻类含量 ",formatHead));
				sheet.addCell(new Label(11,0," 出水浊度 ",formatHead));
				sheet.addCell(new Label(12,0," 预加氯量 ",formatHead));

//				sheet.addCell(new Label(0,0," 编号 ",formatHead));
//				sheet.addCell(new Label(9,0," 水温 ",formatHead));
//				sheet.addCell(new Label(15,0," 状态 ",formatHead));
			
				for (int i=0;i<list.size();i++){

					
					sheet.addCell(new Label(0,i+1,(new SimpleDateFormat("yyyy-MM-dd")).format(list.get(i).getT()),formatBody));  //时间
					sheet.addCell(new Label(1,i+1,list.get(i).getPoolID()));	//水池编号
					sheet.addCell(new Label(2,i+1,Double.toString(list.get(i).getPAC()),formatBody)); //PAC投加量
					sheet.addCell(new Label(3,i+1,Double.toString(list.get(i).getFeCl3()),formatBody));	 //FeCl3投加量
					sheet.addCell(new Label(4,i+1,Double.toString(list.get(i).getOpenDegree()),formatBody)); //开启度
					sheet.addCell(new Label(5,i+1,Double.toString(list.get(i).getRotationSpeed()),formatBody)); //转速
					sheet.addCell(new Label(6,i+1,Double.toString(list.get(i).getSV()),formatBody)); //沉降比
					sheet.addCell(new Label(7,i+1,Double.toString(list.get(i).getSmallMudFre()),formatBody)); //小斗排泥时长
					sheet.addCell(new Label(8,i+1,Double.toString(list.get(i).getBigMudFre()),formatBody)); //大斗排泥时长
					sheet.addCell(new Label(9,i+1,Double.toString(list.get(i).getNTU()),formatBody)); //原水浊度
					sheet.addCell(new Label(10,i+1,Double.toString(list.get(i).getAlgaeContent()),formatBody)); //原水藻类含量
					sheet.addCell(new Label(11,i+1,Double.toString(list.get(i).getOutNTU()),formatBody)); // 出水浊度
					sheet.addCell(new Label(12,i+1,Double.toString(list.get(i).getCL()),formatBody));  //预加氯量
					
//					sheet.addCell(new Label(0,i+1,Long.toString(list.get(i).getID()),formatBody));
//					sheet.addCell(new Label(9,i+1,Double.toString(list.get(i).getWaterTemp()),formatBody));
//					sheet.addCell(new Label(15,i+1,list.get(i).getState()==0?"不正常":"正常",formatBody));
					

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
