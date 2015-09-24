<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>北京自来水集团工艺平台</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/normal.css">
    <link rel="stylesheet" href="css/breadcrumb.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ocanvas-2.7.4.min.js"></script>
    <script src="js/GN_CY.js"></script>


    <style>
        #canvas_QS {
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
        }
        #CY_Y1A{
            position: absolute;
            left: 950px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #CY_Y2A{
            position: absolute;
            left: 780px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #CY_Y3A{
            position: absolute;
            left: 500px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
		    #CY_Y4A{
            position: absolute;
            left: 300px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
		    #CY_Y5A{
            position: absolute;
            left: 200px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        /*#readout_SimTime{*/
            /*position: absolute;*/
            /*left: 678px;*/
            /*top: 30px;*/
            /*width: 200px;*/
            /*height: 200px;*/
            /*font-size: 15px;*/
            /*color: #00082b;*/
            /*z-index: 10;*/
        /*}*/
        #readout_CY_Y1A {
            position: absolute;
            left: 980px;
            top: 650px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
       
        #readout_CY_Y2A {
            position: absolute;
            left: 790px;
            top: 650px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }

      
        #readout_CY_Y3A {
            position: absolute;
            left: 500px;
            top: 650px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        
		#readout_CY_Y4A {
            position: absolute;
            left: 300px;
            top: 650px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
       
		#readout_CY_Y5A {
            position: absolute;
            left: 150px;
            top: 650px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
    #btn_group {
    left: 1300px;
    }
    #readout_SimTime{
    left: 1300px;
    }
    </style>
</head>
<body>
    <jsp:include page="top.jsp" />
    <ol class="breadcrumb">
    <li><a href="main.jsp">水量控制</a></li>
    <li><a href="main.jsp">水量增减</a></li>
    <li class="active">臭氧接触池</li>
    </ol>
<div id="myPage">
    <div id="myContent" style="overflow: hidden">
        <div id="btn_group" class="btn-group-vertical btn-group-lg" role="group">
            <button id="btn_start" class="btn btn-primary">暂停演示</button>
            <button id="btn_fast" class="btn btn-primary">加速</button>
            <button id="btn_slow" class="btn btn-primary">减速</button>
            <button id="btn_reset" class="btn btn-primary">重置</button>
            <button  id="btn_last" class="btn btn-primary">上一个</button>
            <button  id="btn_next" class="btn btn-primary">下一个</button>
            <button  id="btn_home" class="btn btn-primary">平面图</button>
			<button  id="btn_CYB" class="btn btn-primary">B面</button>
        </div>
        <canvas id="canvas_CY" width="1600" height="753"></canvas>
        <!--<div id="test1">-->
            <!--<p>测试cookie</p>-->
        <!--</div>-->
        <div id="GZW">
              <p>臭氧接触池</p>
        </div>
        <div id="CY_Y1A">
              <p>堰1A</p>
        </div>
        
        <div id="CY_Y2A">
            <p>堰2A</p>
        </div>
        
        <div id="CY_Y3A">
            <p>堰3A</p>
        </div>
        
		 <div id="CY_Y4A">
            <p>堰4A</p>
        </div>
        
		 <div id="CY_Y5A">
            <p>堰5A</p>
        </div>

        <div id="readout_SimTime">
            <p id="SimTime"></p>
            <p id="step"></p>
        </div>
        <div id="readout_CY_Y2A">
            <p id="readout_CY_Y2A_Vnow">水量: 0.0</p>
        </div>
      
        <div id="readout_CY_Y1A">
            <p id="readout_CY_Y1A_Vnow">水量: 0.0</p>
        </div>
     
        <div id="readout_CY_Y3A">
            <p id="readout_CY_Y3A_Vnow">水量: 0.0</p>
        </div>
       
		<div id="readout_CY_Y4A">
            <p id="readout_CY_Y4A_Vnow">水量: 0.0</p>
        </div>
      
		<div id="readout_CY_Y5A">
            <p id="readout_CY_Y5A_Vnow">水量: 0.0</p>
        </div>
     
    </div>
    <jsp:include page="down.jsp" />
    <script>
        function open_mainView(){
            window.open("main1.html",'_self');
        }
    </script>
</div>
</body>
</html>