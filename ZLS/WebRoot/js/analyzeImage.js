$(function () {
	var tburl='searchDataAnalysis.action';
	var tlist=new Array();
	var listArray=new Array();
	var poollist = new Array();
	var chart;
	$(document).ready(function(){ 	
		$.ajax({  
			url :tburl,  //后台处理程序  
			type:"post",    //数据发送方式  
			async:false,  
			dataType:"json",   //接受数据格式             
			error: function(){  
				alert("服务器没有返回数据，可能服务器忙，请重试");  
			},  


			success: function(json){  
				var datalist = eval(json).rows;
				if (datalist.length>0){
					for (var i=0; i<datalist.length;i++){
						var row = datalist[i];
						var flag_i = jQuery.inArray(row.poolID, poollist); //判断水池是否存在
						var flag_j = jQuery.inArray(row.t.substring(0, 10),tlist);
						if(flag_i<0){  //不存在
							poollist.push(row.poolID);
							flag_i=poollist.length-1;
							listArray[flag_i]=new Array();
						}
						if(flag_j<0){
							tlist.push(row.t.substring(0, 10)); //添加不存在的日期
							flag_j=tlist.length-1;
						}
						var tempArray=new Array();
						tempArray.push(row.inV);	//进水量
						tempArray.push(row.outV);  //出水量
						tempArray.push(row.LCOutV);  //洗滤池用水
						tempArray.push(row.TCOutV);   //碳池用水
						tempArray.push(row.JJOutV);   //机加池排水
						tempArray.push(row.HXOutV);   //虹吸滤池用水
						tempArray.push(row.storage);   //储水量
						tempArray.push(row.HLInV);   //回流水
						tempArray.push(row.preH);   //	预测高度
						listArray[flag_i][flag_j]=tempArray;
						
					} //for
				} //if
			}//success
		});  //ajax  

		/**绘图**/
		var options = {

				//常规图表选项设置
				chart: {
					renderTo: 'imageContainer',	//在哪个区域呈现			
					type: 'column'          //指定图表的类型，默认是折线图（line）
				},
				lang:{
					printChart: "打印",
					downloadJPEG: "下载JPEG 图片",
	                downloadPDF: "下载PDF文档",
	                downloadPNG: "下载PNG 图片",
	                downloadSVG: "下载SVG 矢量图",
	                exportButtonTitle: "导出图片"},
				title: {
					text: '数据分析图'      //指定图表标题
				},
				xAxis: {
					categories: ['来水量','出水量','洗滤池用水','洗活性炭池用水','机加池排水','虹吸滤池水','蓄水量 ','回流水','预测水位']   //指定x轴分组
				},
				yAxis: {
					title: {
						text: '单位 '                  //指定y轴的标题
					}
				},
				
				//指定数据列
				series: []
		}//options
		
		options.series = new Array();
		for(var j=0;j<tlist.length;j++){

			for(var i=0;i<poollist.length;i++)
			{
				options.series[poollist.length*j+i] = new Object();
				options.series[poollist.length*j+i].data=listArray[i][j];
				options.series[poollist.length*j+i].name=poollist[i]+"<br>"+tlist[j];
				options.series[poollist.length*j+i].type="column";
			}
		}
		chart = new Highcharts.Chart(options);
	}); //document; 
}); 

