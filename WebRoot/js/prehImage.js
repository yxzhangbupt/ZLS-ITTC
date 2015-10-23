
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
						var flag_i = jQuery.inArray(row.poolID, poollist); //判断水池是否存在
						if(flag_i<0){  //不存在
							poollist.push(row.poolID);	//添加水池
							flag_i=poollist.length-1;
							listArray[flag_i]=[];							
						}//if flag_i
						listArray[flag_i].push([Date.UTC(row.t.substring(0, 4),
								row.t.substring(5, 7)-1, //highcharts 月份要减一，因为Date.UTC从0-11计数
								row.t.substring(8, 10),
								row.t.substring(11, 13)
								),row.preH]);	//填充数据，预测高度
					} //for
				} //if datalist.length
				}//success
		});  //ajax 

		/**绘图**/
		options = {
				//常规图表选项设置
				chart: {
					renderTo: 'imageContainer',	//在哪个区域呈现			
					//type: 'spline'          //指定图表的类型，默认是折线图（line）
					zoomType: 'x',	//图标缩放
				},
				lang:{					
					printChart: "打印",
					downloadJPEG: "下载JPEG 图片",
	                downloadPDF: "下载PDF文档",
	                downloadPNG: "下载PNG 图片",
	                downloadSVG: "下载SVG 矢量图",
	                exportButtonTitle: "导出图片",
	                resetZoom:"重置"
	                },
				title:{
			            text: "水位预测图",
				},
				xAxis: {
					title:{
						text:" 日  期 "
					},
//					categories: tlist   //指定x轴分组
					type: 'datetime',
					dateTimeLabelFormats: { // don't display the dummy year
		                hours: '%Y-%m-%d %H时',
		                day: "%Y-%m-%d",
						month:'%Y年 %m月',
		                year: '%Y年'
		            }
				},
				yAxis: [
				        {	//第一个y轴坐标
				        	min: 0,
				        	title: {
				        		text: '单位：米'                  //指定y轴的标题
				        	},
				        	//添加标示线
				        	plotLines:[
				        	           {//第一条标示线	
				        	        	   color:'red',           //线的颜色，定义为红色
				        	        	   dashStyle:'ShortDash',     //默认值，这里定义为实线
				        	        	   value:3,               //定义在那个值上显示标示线，这里是在y轴上刻度为3的值处垂直化一条线
				        	        	   width:2,               //标示线的宽度，2px
				        	        	   label:{
				        	        		   text:'高预警线',     //标签的内容
//				        	        		   align:'left',                //标签的水平位置，水平居左,默认是水平居中center
//				        	        		   x:10                         //标签相对于被定位的位置水平偏移的像素，重新定位，水平居左10px
				        	        	   },
				        	        	   zIndex:100, 				//标示线位置，值越大，显示在越前面
				        	           },
				        	           {//第二条标示线	
				        	        	   color:'orange',           //线的颜色，定义为红色
				        	        	   dashStyle:'ShortDash',     //默认值，这里定义为实线
				        	        	   value:0.5,               //定义在那个值上显示标示线，这里是在y轴上刻度为0.5的值处垂直化一条线
				        	        	   width:2,               //标示线的宽度，2px
				        	        	   label:{
				        	        		   text:'低预警线',     //标签的内容
				        	        	   },
				        	        	   zIndex:100, 			//标示线位置，值越大，显示在越前面
				        	           }]
				        },
//				        {	//第二个Y坐标
//				        	title: {
//				        		text: '测试单位：米'                  //指定y轴的标题
//				        	},
//				        	opposite:true,
//				        }
				        ],
				//鼠标移动时显示的数据
			    tooltip: {
		            enabled: true,
		            formatter: function() {
		                return  "水池编号： "+this.series.name
		                      +' <br> 日期： ' +Highcharts.dateFormat('%Y-%m-%d <br> 时间： %H 点',this.x)
		                      +' <br> 预测水位：  '
		                      + this.y +'米';
		            }
		        },
				//显示数据
		        plotOptions: {
		            line: {
		                dataLabels: {
		                    enabled: true,
		                    formatter: function() {
				                return this.y;
				            } 
		                },
		                enableMouseTracking: true,
		            }, 
		        },
		        legend: {
		            enabled: true,	//显示图例	
		            layout:"vertical",
		            align: 'right', //水平方向位置
		            verticalAlign: 'top', //垂直方向位置
		            x:0,
		            y:100		            	            
		        },
		        credits:false,	//不显示图表版权信息
				//指定数据列
				series: []
		}//options
		options.series = new Array();
		
		for(var i=0;i<poollist.length;i++)
		{	
		options.series[i] = new Object();
		options.series[i].data=listArray[i].sort(); //对listArray[i]进行排序，否则会造成时间轴上的图错乱
		options.series[i].name=poollist[i];
		options.series[i].type="line";

//		if (i==0){		
//		options.series[i].yAxis=1;	//坐标轴	
//		}
		
//			options.series[i+poollist.length] = new Object();
//			options.series[i+poollist.length].data=listArray[i].sort();
//			options.series[i+poollist.length].name=poollist[i];
//			options.series[i+poollist.length].type="column";
//			options.series[i+poollist.length].visible=false;
		}

////	
		chart = new Highcharts.Chart(options);
		
		
		/************/
		
	}); //document; 

var type=1;
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


     