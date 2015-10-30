<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.ddd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<base href="<%=basePath%>" />

<meta charset="UTF-8">
<meta http-equiv="Access-Control-Allow-Origin" content="*">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>北京自来水集团工艺平台</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="css/top_down.css">
<link rel="stylesheet" href="css/normal.css">
<link rel="stylesheet" href="css/top_down.css">
<link rel="stylesheet" href="css/breadcrumb.css">


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"	href="easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"	href="style/myeasyui.css" />
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css" />

<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/dataAnalysis.js"></script>
<link rel="stylesheet" href="style/myStyle.css" type="text/css" />
<style>
body {
	background: #afd9ee;
}

#myPage {
	font-family: '微软雅黑', 'Source Sans Pro';
	font-size: 15px;
	width: 1600px;
	height: 800px;
	margin: 0px auto;
}

#myNav {
	background: #f1f3f5;
}

#pageHead {
	height: 50px;
	font-size: 19px;
}

#pageHead .navbar {
	/*opacity: 0.85;*/
	z-index: 10;
}

#myContent {
	margin: 0px auto;
	position: relative;
	height: 1030px;
	width: 1600px;
	background-position: bottom;
}

/*#word_title{*/
/*font-family: '微软雅黑','Arial';*/
/*font-size: 39px;*/
/*color: #eeeeee;*/
/*position: absolute;*/
/*top: 180px;*/
/*left: 590px;*/
/*opacity: 0.85;*/
/*}*/
#pageFooter {
	background: #e5e5e5;
}

#pageFooter p {
	text-align: center;
}

#myNavbar a:hover {
	color: #d510ff;
	background: #ffeae4;
}

#myContent {
	/*   background: url("image/QSC3.png") no-repeat;
    		   background-position: center; */
	
}


 #tab_export{
    font-family: '微软雅黑','Arial';
    position: absolute;
    left:1482px;
    top: 320px;
    z-index: 999;
    font-size:14px;
    width:200px;
    }

</style>
</head>
<body>
	<jsp:include page="top.jsp" />
	<div id="test"></div>
	<div id="myPage">
		<div id="myContent" style="overflow: hidden">
			<a href="download/QSC_cal.xlsx">点击下载清水池水位计算表 - 模板 .xlsx</a><br /> <br />
			<div id="analyze">

				<!-- <input type="button" id="analyzeButton" value=" 数据分析图  "
					onclick="window.open('analyzeImage.jsp');"></input> -->
				<!--  <input type="button" id="preHButton" value=" 水池水位分析图  "
					onclick="javascript:preHfun()"></input> -->
				<input type="button" id="preHButton" value=" 水池水位分析图  "
					onclick="window.open('preHImage.jsp');"></input>
			</div>

		<!-- 操作按钮 -->
			<div id="btn_group" class="btn-group-vertical btn-group-lg"
				role="group">

				<button id="btn_addRow" class="btn btn-primary"
					onclick="javascript:addDataAnalysis()">添加</button>
				<button id="btn_editRow" class="btn btn-primary"
					onclick="javascript:editDataAnalysis()">编辑</button>
				<button id="btn_deleteRow" class="btn btn-primary"
					onclick="javascript:deleteDataAnalysis()">删除</button>
				<button id="btn_searchAll" class="btn btn-primary"
					onclick="javascript:listAllDataAnalysis()">查询全部</button>
				<button id="btn_search" class="btn btn-primary"
					onclick="javascript:searchDataAnalysis()">条件查询</button>
			</div>
			
		<!-- 导出文件操作-->
		<div id="tab_export">
				<form action="exportDataAnalysis" id="exportDataAnalysis">
				   <span style="font-size:18px">导出文件名：</span><br/><input type="text" id="filename" name="filename" style="width:100px"/>
				   <br/><br/>			
				   <button id="btn-export" class="btn btn-primary" style="font-size:18px;" type="submit" 
					   onclick="alert('导出成功，请在D盘根目录下查看文件！')"> &nbsp; &nbsp; 导出  &nbsp; &nbsp; </button>
				</form>
		</div>
		<center>
			<table id="dataAnalysisbody" class="easyui-datagrid">
			</table>
		</center>
		<!-- <div id="main">
			<table id="dataAnalysisbody" class="easyui-datagrid">
			</table>
		</div> -->
		<!-- 编辑数据的div，默认看不到 -->
		<div id="divEdit">
			<div id="tabEdit">
				<form id="frmEdit">
					<input type="hidden" id="ID" name="dataAnalysis.ID" /> <br />
					<dl>
						<dd>
							&nbsp; &nbsp; &nbsp; &nbsp;水 池 编 号 : &nbsp; &nbsp; <input type="text"
								size="25" id="PoolID" name="dataAnalysis.PoolID" />
						</dd>
					</dl>
					<dl>
						<dd>
							&nbsp; &nbsp; &nbsp; &nbsp;时  &nbsp; &nbsp; &nbsp; &nbsp; 间 : &nbsp; &nbsp; <input
								type="date" width="100px" id="t" name="dataAnalysis.t" />
						</dd>
					</dl>
					<dl>
						<dd>
							&nbsp; &nbsp; &nbsp; &nbsp;总 进 水 量 : &nbsp; &nbsp; <input type="text"
								size="25" id="InV" name="dataAnalysis.InV" />
						</dd>
					</dl>
					<dl>
						<dd>
							&nbsp; &nbsp; &nbsp; &nbsp;出   &nbsp;水  &nbsp; 量 : &nbsp; &nbsp; &nbsp; <input type="text"
								size="25" id="OutV" name="dataAnalysis.OutV" />
						</dd>
					</dl>
					<dl>
						<dd>
							&nbsp; &nbsp; &nbsp; &nbsp;洗虹吸滤池 : &nbsp; &nbsp; <input type="text"
								size="25" id="HXOutV" name="dataAnalysis.HXOutV" />
						</dd>
					</dl>
					<dl>
						<dd>
							&nbsp; &nbsp; &nbsp; &nbsp;洗V型滤池 : &nbsp;&nbsp; &nbsp; <input type="text"
								size="25" id="LCOutV" name="dataAnalysis.LCOutV" />
						</dd>
					</dl>
					<dl>
						<dd>
							&nbsp; &nbsp; &nbsp; &nbsp;炭池反冲洗 : &nbsp; &nbsp; <input type="text"
								size="25" id="TCOutV" name="dataAnalysis.TCOutV" />
						</dd>
					</dl>
					<dl>
						<dd>
							&nbsp; &nbsp; &nbsp; &nbsp;机加池排泥 : &nbsp; &nbsp; <input type="text"
								size="25" id="JJOutV" name="dataAnalysis.JJOutV" />
						</dd>
					</dl>
					<dl>
						<dd>
							&nbsp; &nbsp; &nbsp; &nbsp;回 流 进 水: &nbsp;&nbsp; &nbsp; <input type="text"
								size="25" id="HLInV" name="dataAnalysis.HLInV" />
						</dd>
					</dl>
					<!-- <input type="hidden" class="easyui-numberbox" precision="2"
						id="Storage" name="dataAnalysis.Storage" />
				    <input type="hidden"
						class="easyui-numberbox" precision="2" id="PreH"
						name="dataAnalysis.PreH" /> -->
					<!-- 可以自动计算 -->
					<!--
				 <dl>
					<dd>
						Storage: <input type="text" size="10" id="Storage"
							name="dataAnalysis.Storage" />
					</dd>
				</dl>
				<dl>
					<dd>preH:</dd>
					<dd>
						<input type="text" style="width: 150px" id="PreH"
							name="dataAnalysis.PreH" />
					</dd>
				</dl> -->

				</form>
			</div>
		</div>
		<div id="divSearch">
			<div id="tabSearch">
				<form id="frmSearch">
				<dl>
					<dd>
						<br/>
						&nbsp; &nbsp; &nbsp; &nbsp;
					         时  &nbsp; 间 : &nbsp; <input class="easyui-datetimebox" style="width:150px" id="searchT"
					                        name="searchT" text="" type="text"></input>
					
						&nbsp; &nbsp; &nbsp; &nbsp;
  						<!-- 水池编号:  <input  class="easyui-validatebox" type="text" style="width:120px" id="searchPoolID"
					                 size="20px" name="searchPoolID" ></input> -->
					         清水池编号 :  <input type="text" size="20" id="searchPoolID" name="searchPoolID" />
					          <!-- <input class="easyui-combobox" style="width:120px" id="searchPoolID" 
								name="searchPoolID" text="" type="text"></input>  -->
					</dd>
				</dl>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="down.jsp" />

	<script src="js/QS1.js" type="text/javascript" charset="UTF-8"></script>
	</div>
</body>
</html>

