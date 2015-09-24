
	var tburl='searchDataAnalysis.action';
	var tlist=new Array();
	var listArray=new Array();
	var poollist = new Array();
	var chart;
	var title;
	var options;
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
//						listArray.push(row.preH);   //	预测高度
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
						listArray[flag_i][flag_j]=row.preH;
						
					} //for
				} //if
			
				title  = "水位预测图";
				}//success
		});  //ajax 
	
//		document.getElementById("id1").innerHTML=title;
		/**绘图**/
		options = {
				//常规图表选项设置
				chart: {
					renderTo: 'imageContainer',	//在哪个区域呈现			
					//type: 'spline'          //指定图表的类型，默认是折线图（line）
				},
				lang:{
					printChart: "打印",
					downloadJPEG: "下载JPEG 图片",
	                downloadPDF: "下载PDF文档",
	                downloadPNG: "下载PNG 图片",
	                downloadSVG: "下载SVG 矢量图",
	                exportButtonTitle: "导出图片"},
				title: {
					text: title     //指定图表标题
				},
				xAxis: {
					categories: tlist   //指定x轴分组
				},
				yAxis: {
					min: 0,
					title: {
						text: '单位：米'                  //指定y轴的标题
					},
					//添加告警线
					plotLines:[{
			        color:'red',           //线的颜色，定义为红色
			        dashStyle:'ShortDash',     //默认值，这里定义为实线
			        value:0.5,               //定义在那个值上显示标示线，这里是在y轴上刻度为3的值处垂直化一条线
			        width:2,               //标示线的宽度，2px
			        label:{
			            text:'高预警线',     //标签的内容
//			            align:'left',                //标签的水平位置，水平居左,默认是水平居中center
//			            x:10                         //标签相对于被定位的位置水平偏移的像素，重新定位，水平居左10px
			        },
			        zIndex:100, 				//标示线位置，值越大，显示在越前面
					},
					{
				        color:'orange',           //线的颜色，定义为红色
				        dashStyle:'ShortDash',     //默认值，这里定义为实线
				        value:0.35,               //定义在那个值上显示标示线，这里是在y轴上刻度为3的值处垂直化一条线
				        width:2,               //标示线的宽度，2px
				        label:{
				            text:'低预警线',     //标签的内容
//				            align:'left',                //标签的水平位置，水平居左,默认是水平居中center
//				            x:10                         //标签相对于被定位的位置水平偏移的像素，重新定位，水平居左10px
				        },
				        zIndex:100, 				//标示线位置，值越大，显示在越前面
						}]
				},
				//柱状图 鼠标移动时显示的数据
			    tooltip: {
		            enabled: true,
		            formatter: function() {
		                return  this.series.name+'<br>'+this.x +':<br> '+ this.y +'米';
		            }
		        },
				//显示数据
		        plotOptions: {
		            spline: {
		                dataLabels: {
		                    enabled: true,
		                    formatter: function() {
				                return this.y +'米';
				            } 
		                },
		                enableMouseTracking: false
		            }
		        },
		        legend: {
		            enabled: true
		        },
				//指定数据列
				series: [
//				         {
//				    name:"柱状图",
//					type:"column",
//					data:listArray
//				},{
//					name:"折线图",
//					type:"spline",
//					data:listArray
//				}
				]
		}//options
		options.series = new Array();
		
		for(var i=0;i<poollist.length;i++)
		{
			options.series[i] = new Object();
			options.series[i].data=listArray[i];
			options.series[i].name=poollist[i];
			options.series[i].type="column";
			options.series[i+poollist.length] = new Object();
			options.series[i+poollist.length].data=listArray[i];
			options.series[i+poollist.length].name=poollist[i];
			options.series[i+poollist.length].type="spline";
			options.series[i+poollist.length].visible=false;
		}

////	
		chart = new Highcharts.Chart(options);
		
		
		/************/
		
	}); //document; 

var type=0;
function showSpline(){
	type=(type+1)%3;
	switch(type)
	{
	case 0:
		for(var i=0;i<poollist.length;i++){
			options.series[i].visible=true;
			options.series[i+poollist.length].visible=false;
			}
		break;
	case 1:
		{
		for(var i=0;i<poollist.length;i++){
			options.series[i].visible=false;
			options.series[i+poollist.length].visible=true;
			}
		}
		break;
	case 2:
		{		
		for(var i=0;i<poollist.length;i++){
			options.series[i].visible=true;
			options.series[i+poollist.length].visible=true;
			}
		}
		break;
	}
	chart = new Highcharts.Chart(options);
}


     