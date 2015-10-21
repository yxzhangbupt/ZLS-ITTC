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
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
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
<script type="text/javascript" src="js/poolEvaluate.js"></script>
<link rel="stylesheet" href="style/myStyle.css" type="text/css" />
<link rel="stylesheet" type="text/css" 	href="style/myeasyui.css" />
    <style>
         body {
            background: #afd9ee;
        }
        #myPage {
            font-family: '微软雅黑','Source Sans Pro';
            font-size: 15px;
            width: 1600px;
            height: 800px;
            margin:0px auto;
        }
        #myNav{
            background: #f1f3f5;
        }
        #pageHead {
            height: 50px;
            font-size: 19px;
        }
        #pageHead .navbar{
            /*opacity: 0.85;*/
            z-index: 10;
        }
        #myContent{
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
        #pageFooter{
            background: #e5e5e5;
        }
        #pageFooter p{
            text-align: center;
        }
        #myNavbar a:hover
        {
            color: #d510ff;
            background: #ffeae4;}
   #myContent
   {
      /* background: url("image/QSC3.png") no-repeat;  */ 
      /* background-position: center; */
   }
   
      
    #tab_description{
    font-family: '微软雅黑','Arial';
    position: absolute;
    left:1400px;
    top: 435px;
    z-index: 999;
    font-size:14px;
    width:200px;
    }
    #tab_description h1{
    font-size:20px;
    color:#ff4400;
    font-weight:bold;
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

<div id="myPage">
    <div id="myContent" style="overflow: hidden">

        <a href="download/QSC_cal.xlsx">点击下载机加池评估表 - 模板 .xlsx</a>
     <!-- 操作按钮 -->
     <div id="btn_group" class="btn-group-vertical btn-group-lg" role="group">

				<button id="btn_addRow" class="btn btn-primary"
					onclick="javascript:addPoolEvaluate()">添加</button>
				<button id="btn_editRow" class="btn btn-primary"
					onclick="javascript:editPoolEvaluate()">编辑</button>
				<button id="btn_deleteRow" class="btn btn-primary"
					onclick="javascript:deletePoolEvaluate()">删除</button>
				<button id="btn_searchAll" class="btn btn-primary"
					onclick="javascript:listAllPoolEvaluate()">查询全部</button>
				<button id="btn_search" class="btn btn-primary"
					onclick="javascript:searchPoolEvaluate()">条件查询</button>    
		</div>
		<!-- 文件导出操作 -->
		<div id="tab_export">
				<form action="exportPoolEvaluate" id="exportPoolEvaluate">
				   <span style="font-size:18px">导出文件名：</span><br/><input type="text" id="filename" name="filename" style="width:100px"/>
				   <br/><br/>			
				   <button id="btn-export" class="btn btn-primary" style="font-size:18px;" type="submit" 
					   onclick="alert('导出成功，请在D盘根目录下查看文件！')"> &nbsp; &nbsp; 导出  &nbsp; &nbsp; </button>
				</form>
		</div>
		<!-- 特征量说明 -->
		<div id="tab_description">
             <h1 style="font-size: 20px" >填表说明:</h1>
        <p style="font-size: 15px" >各特征量取值分段为：</p>
       	<img src="image/JJC1.png" alt=""/><br/><br/>
        <img src="image/JJC2.png" alt=""/><br/><br/>
        <img src="image/JJC3.png" alt=""/><br/><br/>
        <img src="image/JJC4.png" alt=""/><br/>        
        </div>
  	
  	<center><br/>
			<table id="poolEvaluatebody" class="easyui-datagrid">
			</table>
	</center>
			
	<!-- <div id="main">
			 <table id="poolEvaluatebody" class="easyui-datagrid">
			</table>
		</div>  -->
		<!-- 编辑数据的div，默认看不到 -->
		<div id="divEdit">
				<div id="tabEdit">
					<form id="frmEdit">
				<input type="hidden" id="ID" name="poolEvaluate.ID" />
				<br/>
					<dl>
						<dd>&nbsp; &nbsp; &nbsp; &nbsp; 
							时 &nbsp; &nbsp; 间 :&nbsp;&nbsp;<input type="date" size="40" id="t" name="poolEvaluate.t" />
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							机加池编号 :&nbsp; <input type="text" size="18" id="PoolID" name="poolEvaluate.PoolID" />
						</dd><br/>
						<dd>&nbsp; &nbsp; &nbsp; &nbsp;
							PAC投加量 :&nbsp;
							<input class="easyui-numberbox" precision="2" type="text" size="17" id="PAC" name="poolEvaluate.PAC" />
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							FeCl3投加量 :&nbsp;
							<input class="easyui-numberbox" precision="2" type="text" size="16" id="FeCl3" name="poolEvaluate.FeCl3" />
						</dd><br/>						
						<dd>&nbsp; &nbsp; &nbsp; &nbsp;
							开 启 度 :&nbsp; <input class="easyui-numberbox" precision="2" type="text" size="20" id="OpenDegree" name="poolEvaluate.OpenDegree" />
							&nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;
							转 &nbsp; &nbsp; 速 : &nbsp; &nbsp; <input class="easyui-numberbox" precision="2" type="text" size="18" id="RotationSpeed" name="poolEvaluate.RotationSpeed" />
							
						</dd><br/>
						<dd>&nbsp; &nbsp; &nbsp; &nbsp;
							沉 降 比 : &nbsp;&nbsp;<input class="easyui-numberbox" precision="2" type="text" size="19" id="SV" name="poolEvaluate.SV" />
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							小斗排泥时长 :&nbsp;
							<input class="easyui-numberbox" precision="0" type="text" size="15" id="SmallMudFre" name="poolEvaluate.SmallMudFre" />
							</dd><br/>
						<dd>&nbsp; &nbsp; &nbsp; &nbsp;
							大斗排泥时长 :&nbsp;
							<input class="easyui-numberbox" precision="0" type="text" size="15" id="BigMudFre" name="poolEvaluate.BigMudFre" />
						    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							原水浊度 : &nbsp;  <input class="easyui-numberbox" precision="2" type="text" size="18" id="NTU" name="poolEvaluate.NTU" />
						</dd><br/>
						<dd>
							<!-- 	&nbsp; &nbsp;水&nbsp; &nbsp;温: &nbsp; &nbsp;  
							<input class="easyui-numberbox" precision="1"type="text" size="15" id="WaterTemp" name="poolEvaluate.WaterTemp" />
							 -->
							 &nbsp; &nbsp; &nbsp; &nbsp; 
							原水藻类含量 :&nbsp;
							<input class="easyui-numberbox" precision="2" type="text" size="15" id="AlgaeContent" name="poolEvaluate.AlgaeContent" />
						    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							出水浊度 : &nbsp; 
							<input class="easyui-numberbox" precision="2" type="text" size="18" id="OutNTU" name="poolEvaluate.OutNTU" />
							<!-- &nbsp; &nbsp;
							状&nbsp;态:&nbsp;
							<select id="state" class="easyui-combobox" name="poolEvaluate.state" style="width:150px;">
								<option value="0">不正常</option>
								<option value="1">正常</option>
							</select> -->
							<!-- <input type="text" size="10" id="state" name="poolEvaluate.state" /> -->
							</dd><br/>					
						
						<dd>&nbsp; &nbsp; &nbsp; &nbsp;
							预加氯量 :&nbsp;
							<input class="easyui-numberbox" precision="2" type="text" size="19" id="CL" name="poolEvaluate.CL" />
						</dd>
					</dl>
					</form>
				</div>
		</div>
		<div id="divSearch">
			<div id="tabSearch">
				<form id="frmSearch">
				<dl>
					<dd><br/>
					  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
					      时  &nbsp; 间： <input class="easyui-datebox" style="width:150px" id="searchT"
					                        name="searchT" text="" type="text"></input>
					
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

					    水 池 编 号 : &nbsp; <input type="text" size="20" id="searchPoolID" name="searchPoolID" />
					    	  <!-- <select  lass="easyui-combobox" type="text"  id="searchPoolID" style="width:120px"
					                  name="searchPoolID" >
					                   <option value="" selected="">--请选择--</option>
					          </select> -->
					</dd>
					<!-- <dd>
						<br/>
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
					 状  &nbsp; 态：<select id="searchState" name="searchState" style="width:120px" class="easyui-combobox" >
                                    <option value="-1" selected="">--请选择--</option>
                                    <option value="0">不正常</option>
                                    <option value="1">正常</option>
                                 </select>
					</dd> -->
					<dd>
						<br/>
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
					来水浊度： <input class="easyui-numberbox" id="lowNTU" name="lowNTU" style="width:60px" value="0" type="text"></input> ~ 
							<input class="easyui-numberbox" id="highNTU" name="highNTU" style="width:60px" value="100" type="text"></input>
					
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
					来水藻类含量： <input class="easyui-numberbox" id="lowAlgaeContent" name="lowAlgaeContent" style="width:60px" value="0" type="text"></input> ~ 
							<input class="easyui-numberbox" id="highAlgaeContent" name="highAlgaeContent" style="width:60px" value="100" type="text"></input>
					</dd>
					<dd>
						<br/>
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
					出水浊度： <input class="easyui-numberbox" id="lowOutNTU" name="lowOutNTU" style="width:60px" value="0" type="text"></input> ~ 
							<input class="easyui-numberbox" id="highOutNTU" name="highOutNTU" style="width:60px" value="100" type="text"></input>
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
