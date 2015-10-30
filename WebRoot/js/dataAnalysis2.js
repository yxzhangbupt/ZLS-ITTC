//JQuery的入口

$(function() {
	listDataAnalysis();
	// 日期加上日期控件
	$("#t").datetimebox({
		invalidMessage:"时间无效",
		missingMessage:"请选择时间",
		required : true,		
	});
	// 给文本框加上验证器
	$("#PoolID").validatebox({
		required : true,
		invalidMessage:"水池编号无效",
		missingMessage:"请选择水池"
	});
	//
	$("#InV").numberbox({
		min:0,
		precision:0,
	});

	$("#OutV").numberbox({
		min:0,
		precision:0,
	});
	$("#HLInV").numberbox({
		min:0,
		precision:0,
		missingMessage : '不能为空'
	});
	$("#HXOutV").numberbox({
		min:0,
		precision:0,
	});
	$("#LCOutV").numberbox({
		min:0,
		precision:0,
	});
	$("#TCOutV").numberbox({
		min:0,
		precision:0,
		missingMessage : '不能为空'
	});
	$("#JJOutV").numberbox({
		min:0,
		precision:0,
		missingMessage : '不能为空'
	});
//	$("#Storage").validatebox({
//	required : true,
//	missingMessage : '不能为空'
//	});
//	$("#PreH").validatebox({
//	required : true,
//	missingMessage : '不能为空'
//	});

});

var tburl = 'searchDataAnalysis.action';
var datalist = new Array();
var title="清水池水位计算表";

//加载项目列表
function listDataAnalysis() {
	$("#dataAnalysisbody").datagrid({
		title:title,
		width : "1050",
		height : "200",
//		iconCls : 'icon-save', // 表格左上角的图标样式
		/*url : 'listDataAnalysis.action', // 访问服务器的地址，要求返回JSON对象*/
		url:tburl,
		rownumbers : true, // 在最前面显示行号
		fitColumns : true, // 自动适应列宽
		striped : true, // 隔行变色
		singleSelect : true, // 每次只选中一行
		loadMsg : '加载项目列表ing……',
		remoteSort : false, // 排序，true表示从服务器端排序
		
//		pagination : true, // 在底部显示分页工具栏
//		pageSize : 10, // 指定每页的大小，服务器要加上page属性和total属性
//		pageList : [ 3,5,10, 15, 20, 25], // 可以设置每页记录条数的列表，服务器要加上rows属性
		
		idField : 'ID', // 主键属性
		onLoadSuccess: function(data){
			datalist = eval(data).rows;
			prehImage(); //作图
			
		},
		columns : [ [ /*{field : 'ID', title : '编号', align :'center', sortable : true,width:80},*/
		              {field : 'poolID', title : '水池编号', align : 'center', sortable : true,width:150},
		              {field : 't', title : '时间',align : 'center', sortable : true, width:150,
		            	  formatter : function(value) {
		            		  //显示日期到小时
		            		  return value.substring(0, 10)+" "+value.substring(11,13)+"时";
		            	  }},
		            	  {field : 'inV', title : '总来水量', align :'center', sortable : true, orderwidth:80},
		            	  {field : 'outV', title : '出水量', align : 'center', sortable : true,width:80},
		            	  {field : 'HXOutV', title : '洗虹吸滤池', align :'center', sortable : true,width:100},
		            	  {field : 'LCOutV', title : '洗V型滤池', align : 'center', sortable : true,width:100},
		            	  {field : 'TCOutV', title : '炭池反冲洗', align :'center', sortable : true,width:100},
		            	  {field : 'JJOutV', title : '机加池排泥', align : 'center', sortable : true,width:100},
		            	  {field : 'HLInV', title : '回流进水', align : 'center', sortable : true,width:80},
		            	  {field : 'storage',	title : '蓄水量',	align : 'center',sortable : true,width:80},
		            	  {field : 'preH', title : '预测水位', align :'center', sortable : true,width:80,
		            		  //只显示两位小数
		            		  formatter : function(value) {
		            			  return value.toFixed(2);
		            		  }}
		            	  ] ],

		            	  onDblClickRow: function (rowIndex,rowData){
		            		  editDataAnalysis();
		            	  },
		            	  onHeaderContextMenu: function(e, field){
		            		  e.preventDefault();
		            		  if (!cmenu){
		            			  createColumnMenu();
		            		  }
		            		  cmenu.menu('show', {
		            			  left:e.pageX,
		            			  top:e.pageY
		            		  });
		            	  }
	});

	$("#dataAnalysisbody").datagrid('enableFilter',[{
		fileld:'inV',
		type:'numberbox',
		options:{precision:0},
		op:['equal','notequal','less','greater']
	}]);
}
var cmenu;
function createColumnMenu(){
	cmenu = $('<div/>').appendTo('body');
	cmenu.menu({
		onClick: function(item){
			if (item.iconCls == 'icon-ok'){
				$('#dataAnalysisbody').datagrid('hideColumn', item.name);
				cmenu.menu('setIcon', {
					target: item.target,
					iconCls: 'icon-empty'
				});
			} else {
				$('#dataAnalysisbody').datagrid('showColumn', item.name);
				cmenu.menu('setIcon', {
					target: item.target,
					iconCls: 'icon-ok'
				});
			}
		}
	});
	var fields = $('#dataAnalysisbody').datagrid('getColumnFields');
	for(var i=0; i<fields.length; i++){
		var field = fields[i];
		var col = $('#dataAnalysisbody').datagrid('getColumnOption', field);
		cmenu.menu('appendItem', {
			text: col.title,
			name: field,
			iconCls: 'icon-ok'
		});
	}
}
//显示编辑窗口
function showEditForm() {
	$("#tabEdit").dialog({
		modal : true,// 模式窗口
		title : '添加 / 编辑操作',
		iconCls : 'icon-edit',
		buttons : [ {
			text : '确认',
			handler : function() {
				// 进行表单字段验证，当全部字段都有效时返回true和validatebox一起使用
				if ($('#frmEdit').form('validate')) {
					// 提交到服务器并写入数据库
					dealSave();
					// 关闭窗口
					closeForm();
				} else {
					$.messager.alert('验证', '项目信息有误或不完整', 'error');
				}
			}
		}, {
			text : '取消',
			handler : function() {
				closeForm();
			}
		} ]
	});
}

//关闭窗口
function closeForm() {
	$("#frmEdit").form('clear');
	$('#tabEdit').dialog('close');
}

var editRow = undefined;
//添加的函数
function addDataAnalysis() {

	// 清空原有的数据
	$('#frmEdit').form('clear');

	// 显示添加对话框
	showEditForm();
}

//编辑按钮的操作
function editDataAnalysis() {
	var dataAnalysis = $('#dataAnalysisbody').datagrid('getSelected');// 得到选中的一行数据
	// 如果没有选中记录
	if (dataAnalysis == null) {
		$.messager.alert('项目', '请先选中要编辑的项目', 'info');
		return;
	}
	$('#frmEdit').form('clear');

	// 填充数据 填充的是json数据
	$("#ID").val(dataAnalysis.ID);
	$("#PoolID").val(dataAnalysis.poolID);
	$("#t").datetimebox("setValue",dataAnalysis.t);
	$("#InV").numberbox('setValue',dataAnalysis.inV);
	$("#OutV").numberbox('setValue',dataAnalysis.outV);
	$("#HLInV").numberbox('setValue',dataAnalysis.HLInV);
	$("#HXOutV").numberbox('setValue',dataAnalysis.HXOutV);
	$("#LCOutV").numberbox('setValue',dataAnalysis.LCOutV);
	$("#TCOutV").numberbox('setValue',dataAnalysis.TCOutV);
	$("#JJOutV").numberbox('setValue',dataAnalysis.JJOutV);
	$("#Storage").numberbox("setValue",dataAnalysis.storage);
	$("#PreH").numberbox("setValue",dataAnalysis.preH);
	// 显示编辑页面
	showEditForm();
}

//在增加和更新时点确定按钮的处理函数
function dealSave() {
	// 表单数据序列化成一个字符串用&拼接
	var params = $("#frmEdit").serialize();
	// 得到id的值，为空串表示添加
	if ($("#ID").val() == "") {
		$.post("addDataAnalysis.action", params, function(result) {
			if (result.operateSuccess){
				$('#dataAnalysisbody').datagrid('reload');// 重新加载
//				listTreeNode(tlist);
				$.messager.alert('添加', '添加成功', 'info');
			} else {
				$.messager.alert('添加', '添加失败', 'warning');
			}
		});
	} else {
		// 表示更新
		$.post("updateDataAnalysis.action", params, function(result) {
			if (result.operateSuccess) {
				$('#dataAnalysisbody').datagrid('reload');// 重新加载
//				listTreeNode(tlist);
				$.messager.alert('更新', '更新成功', 'info');
			} else {
				$.messager.alert('更新', '更新失败', 'warning');
			}
		});
	}
}


//删除项目
function deleteDataAnalysis() {
	var dataAnalysis = $('#dataAnalysisbody').datagrid('getSelected');// 得到选中的一行数据
	// 如果没有选中记录
	if (dataAnalysis == null) {
		$.messager.alert('删除', '请先选中要删除的项目', 'info');
		return;
	}
	$.messager.confirm('确认', '真的要删除选中的记录吗？', function(r) {
		if (r) {
			var url = "deleteDataAnalysis.action?dataAnalysis.ID=" + dataAnalysis.ID;
			// 试一下get方法（地址，回调函数）
			$.get(url, function(result) {
				if (result.operateSuccess) {
					$.messager.alert('删除', '选中的项目成功删除！', 'info');
					// 重新加载
					$("#dataAnalysisbody").datagrid('reload');
				} else {
					$.messager.alert('删除', '删除失败！', 'warning');
				}
			});
		}
	});

//	var rows = $('#dataAnalysisbody').datagrid('getSelections'); //获取选中的行数据
//	if(rows==null || rows.length==0){
//		$.messager.alert('删除', '请先选中要删除的项目', 'info');
//		return;
//	}
//	$.messager.confirm('确认', '确定要删除选中的记录吗？', function(r) {
//		if (r) {
//			for(var i=0;i<rows.length;i++){
//				var dataAnalysis = rows[i];
//				var url = "deleteDataAnalysis.action?dataAnalysis.ID=" + dataAnalysis.ID;
//				// 试一下get方法（地址，回调函数）
//				$.get(url, function(result) {
//					if (result.operateSuccess) {
//						$.messager.alert('删除', '选中的项目成功删除！', 'info');
//						// 重新加载
//						$("#dataAnalysisbody").datagrid('reload');
//						listTreeNode();
//					} else {
//						$.messager.alert('删除', '删除失败！', 'warning');
//					}
//				});
//			}
//		}
//	});
}

function listAllDataAnalysis(){
	$('#frmSearch').form('clear');
	dealSearch();
}

function searchDataAnalysis(){
	$("#searchT").val(searchT);
	$("#searchPoolID").val(searchPoolID);
	showSearchForm();
}

//查询处理
function dealSearch() {
	// 表单数据序列化成一个字符串用&拼接
	var params = $("#frmSearch").serialize();
	if ($("#searchT").datetimebox("getValue")!= null || $("#searchPoolID").combobox("getValue")!= null){
		console.log($("#searchT").datetimebox("getValue"));
		$.post("searchDataAnalysis.action", params, function(result) {
			if (result.total!=0) {
				$('#dataAnalysisbody').datagrid('reload');// 重新加载
//				listTreeNode(tlist);
//				$.messager.alert('查询', '查询成功', 'info');
			} else {
				$.messager.alert('查询', '查询失败', 'warning');
			}
		});
	} else {
		$.messager.alert('查询', '请选择。。。', 'warning');
	}
}


//显示查询窗口
function showSearchForm() {
	$("#tabSearch").dialog({
		modal : true,// 模式窗口
		title : '查询操作',
		iconCls : 'icon-search',
		buttons : [ {
			text : '确认',
			handler : function() {
				// 进行表单字段验证，当全部字段都有效时返回true和validatebox一起使用
				if ($('#frmSearch').form('validate')) {
					// 提交到服务器并写入数据库
					dealSearch();
					// 关闭窗口
					closeSearchForm();
				} else {
					$.messager.alert('验证', '项目信息有误或不完整', 'error');
				}
			}
		}, {
			text : '取消',
			handler : function() {
				closeSearchForm();
			}
		} ]
	});
}

//关闭窗口
function closeSearchForm() {
	$("#frmSearch").form('clear');
	$('#tabSearch').dialog('close');
}

var tlist = new Array();
var poolIDlist  = new Array();
//查询下拉框显示的数据
var url = "${pageContext.request.contextPath}/listDataAnalysis.action";
$.getJSON(url, function(json) {
	//去除重复项
	var datalist = eval(json).rows;
	var tempPoolIDlist = new Array();
	var pidlist=new Array();
	for(var i=0;i<json.total;i++){
		var row = datalist[i];
		pidlist.push({poolID:row.poolID});
		if(jQuery.inArray(row.poolID, tempPoolIDlist)<0){
			tempPoolIDlist.push(row.poolID);
			poolIDlist.push({poolID:row.poolID});
		}
		if(jQuery.inArray(row.t, tlist)<0){
			tlist.push(row.t);
		}
	}//for
	
	$('#searchPoolID').combobox({
		data : poolIDlist.sort(keysrt('poolID',false)),
		valueField:'poolID',
		textField:'poolID',
		onLoadSuccess: function () {
			$(this).combobox('setText', '');
		}			
	});
	listTreeNode(tlist.sort());
});

//水池编号转换
function transPoolID(value){
	var strs = new Array();
	var poolID=null;
	strs=value.split("_");//字符切割
	for(var i=0;i<strs.length;i++)
	{
		switch(strs[i]){
		case "MTG":
			poolID="门头沟";break;
		case "QingS":
			poolID=poolID+"清水池";break;
		default:
			poolID=poolID+strs[i].replace("SC","")+"#";
		}
	}
	return poolID;		
}


//根据对象key 对对象数组排序，使用 arr.sort(keystr('key',true)); false表示升序，ture表示降序 
function keysrt(key,desc) {
	return function(a,b){
		return desc ? ~~(a[key] < b[key]) : ~~(a[key] > b[key]);
	}
}

var ImageTitle="清水池水位预测图";
function prehImage(){
	var listArray=new Array();
	var poollist = new Array();
	var chart;
	var options;
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
	/**绘图**/
	options = {
			//常规图表选项设置
			chart: {
				renderTo: 'imageContainer',	//在哪个区域呈现			
				//type: 'spline'          //指定图表的类型，默认是折线图（line）
//				zoomType: 'x',	//图标缩放
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
				text: ImageTitle,
			},
			xAxis: {
				title:{
					text:" 日  期 "
				},
//				categories: tlist   //指定x轴分组
				type: 'datetime',
				dateTimeLabelFormats: { // don't display the dummy year
					hours: '%Y-%m-%d %H时',
					day: "%Y-%m-%d",
					month:'%Y年 %m月',
					year: '%Y年'
				},
				labels: { 
					rotation: -45 
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
//			        	        		   align:'left',                //标签的水平位置，水平居左,默认是水平居中center
//			        	        		   x:10                         //标签相对于被定位的位置水平偏移的像素，重新定位，水平居左10px
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
//			        {	//第二个Y坐标
//			        title: {
//			        text: '测试单位：米'                  //指定y轴的标题
//			        },
//			        opposite:true,
//			        }
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
		options.series[i].name=transPoolID(poollist[i]);
		options.series[i].type="line";
	}
	options.series.sort(keysrt("name",false));
	chart = new Highcharts.Chart(options);


	/************/

//	}); //document; 
}//preH;


var treeNodeList= [{id:1,name:"时间列表",text:"时间列表",parentId:0}];
function listTreeNode(tlist){

	var yearlist = new Array();
	var monthlist = new Array();
	var daylist = new Array();
	var j=1; 
	for(var i=0;i<tlist.length;i++){
		var year = tlist[i].substring(0,4);
		var month = tlist[i].substring(0,7);
		var day = tlist[i].substring(0,10);
		var yearIndex=yearlist.indexOf(year);
		var monthIndex=monthlist.indexOf(month);
		var dayIndex=daylist.indexOf(day);
		if(yearIndex<0){	//不存在该年份
			j=j+1;	
			yearlist.push(year);
			treeNodeList.push({id:j,name:year+"年",text:year,parentId:1});	
			j=j+1;
			monthlist.push(month);
			treeNodeList.push({id:j,name:month.substring(5,7)+"月",text:month,parentId:j-1});
			j=j+1;
			daylist.push(day);
			treeNodeList.push({id:j,name:day.substring(8,10)+"日",text:day,parentId:j-1});		
		}
		else{
			if(monthIndex<0) //不存在该月份
			{	
				j=j+1;
				monthlist.push(month);
				treeNodeList.push({id:j,name:month.substring(5,7)+"月",text:month,
									parentId:findParentId(treeNodeList, year)});
				j=j+1;
				daylist.push(day);
				treeNodeList.push({id:j,name:day.substring(8,10)+"日",
								text:day,parentId:j-1});
			}else{
				if(dayIndex<0){
					j=j+1;
					daylist.push(day);
					treeNodeList.push({id:j,name:day.substring(8,10)+"日",text:day,
									parentId:findParentId(treeNodeList, month)});
				}
			}
		}
	}

	$('#timeTree').tree({
//		url: 'tree_data.json',
		data: treeNodeList,
		animate:true,	//动画效果
		lines:true,
		loadFilter: function(data){
			return convert(data);
		},
		onDblClick:function(node){
			var pnode=$('#timeTree').tree('getParent',node.target);
			var out=node.text;
			while(pnode.text!="时间列表"){
				out=pnode.text+out;
				pnode=$('#timeTree').tree('getParent',pnode.target);	
			}
			console.log(out);
			if($('#timeTree').tree('isLeaf',node.target)){	//是根节点
				out=out.replace("年",'-'); out=out.replace("月",'-'); out=out.replace("日",'');
				$("#searchT").datebox("setValue",out);
				$("#searchPoolID").val();
				dealSearch();		
			}
		},
		cascadeCheck:true,//是否支持级联选择
		
	});
}

function GetNode(type){  
    var node = $('#timeTree').tree('getChecked');  
    var chilenodes = '';  
    var parantsnodes = '';  
    var prevNode = '';  
    for (var i = 0; i < node.length; i++) {  
     
        if ($('#timeTree').tree('isLeaf', node[i].target)) {  
            chilenodes += node[i].text + ',';  
             
            var pnode = $('#timeTree').tree('getParent', node[i].target);  
            if (prevNode != pnode.text) {  
                parantsnodes += pnode.text + ',';  
                prevNode = pnode.text;  
            }  
        }  
    }  
    chilenodes = chilenodes.substring(0, chilenodes.length - 1);  
    parantsnodes = parantsnodes.substring(0, parantsnodes.length - 1);  
     
    if (type == 'child') {  
        return chilenodes;  
    }  
    else {  
        return parantsnodes  
    };  
}; 


function findParentId(rows, text){
	for(var i=0; i<rows.length; i++){
		if (rows[i].text == text) return rows[i].id;
	}
	return -1;
}
//显示树目录的数据
function convert(rows){
	//判断是否存在父节点
	function exists(rows, parentId){
		for(var i=0; i<rows.length; i++){
			if (rows[i].id == parentId) return true;
		}
		return false;
	}

	var nodes = [];
	// get the top level nodes
	//遍历查找最高一层节点
	for(var i=0; i<rows.length; i++){
		var row = rows[i];
		//如果不存在父节点，添加节点
		if (!exists(rows, row.parentId)){
			nodes.push({
				id:row.id,
				text:row.name
			});
		}
	}

//	利用堆栈的结构
	var toDo = []; //所有的父节点
	for(var i=0; i<nodes.length; i++){
		toDo.push(nodes[i]);
	}
	while(toDo.length){
		//	shift从集合中把第一个元素删除，并返回这个元素的值
		var node = toDo.shift();	// the parent node
		// get the children nodes
		//	获得所有父节点各自的子节点
		for(var i=0; i<rows.length; i++){
			var row = rows[i];
			if (row.parentId == node.id){
				var child = {id:row.id,text:row.name};
				if (node.children){
					node.children.push(child);
				} else {
					node.children = [child];
				}
				toDo.push(child);//添加子节点，以便进一步遍历子节点查看是否有子目录
			}
		}
	}
	return nodes;
}



function import2DB(){
	var params = $("#importDataAnalysis").serialize();
	alert(document.getElementById("importFileName").value);
	// 得到id的值，为空串表示添加
	if ($("#importFileName").val()!= "" && $("#importFileName").val()!=null) {
		$.post("importDataAnalysis.action", params, function(result) {
			if (result.operateSuccess){
				$('#dataAnalysisbody').datagrid('reload');// 重新加载
				$.messager.alert('导入', '导入成功', 'info');
			} else {
				$.messager.alert('导入', '导入失败', 'warning');
			}
		});
	}else{
		$.messager.alert('错误', '请输入上传的文件名', 'error');
	}
}