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
    <link rel="stylesheet" href="css/breadcrumb.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ocanvas-2.7.4.min.js"></script>
    <script src="js/GN_TC01.js"></script>

    <style>

        #canvas_QS {
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
        }
        #TC01_Y01{
            position: absolute;
            left: 230px;
            top: 143px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #TC01_Y02{
            position: absolute;
            left: 451px;
            top: 143px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #TC01_Y03{
            position: absolute;
            left: 671px;
            top: 143px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #TC01_Y04{
            position: absolute;
            left: 891px;
            top: 143px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #TC01_Y05{
            position: absolute;
            left: 1117px;
            top: 143px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
		   #TC01_Y06{
            position: absolute;
            left: 1337px;
            top: 143px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #readout_TC01_Y03 {
            position: absolute;
            left: 630px;
            top: 628px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_TC01_Y04 {
            position: absolute;
            left: 863px;
            top: 628px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_TC01_Y01 {
            position: absolute;
            left: 191px;
            top: 628px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }

        #readout_TC01_Y02 {
            position: absolute;
            left: 415px;
            top: 628px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_TC01_Y05 {
            position: absolute;
            left: 1105px;
            top: 628px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
		#readout_TC01_Y06 {
            position: absolute;
            left: 1300px;
            top: 628px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #test1 {
            position: absolute;
            left: 678px;
            top: 150px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #eef5fd;
            z-index: 10;
        }
        #water_input {
            position: absolute;
            left: 287px;
            top: 53px;
            height: 200px;
            width: 30px;
            font-size: 20px;
            color: #d9e4f5;
            z-index: 10;
        }

        .flow {
            position: absolute;
            height: 50px;
            width: 100px;
            font-size: 18px;
            color: #d9e4f5;
            z-index: 10;
        }

        #flow1 {
            top: 65px;
            left: 356px;
        }

        #flow2 {
            top: 275px;
            left: 356px;
        }

        .upLevel {
            position: absolute;
            height: 50px;
            width: 120px;
            font-size: 20px;
            color: #51f5eb;
            z-index: 10;
        }

        #upLevel1 {
            top: 340px;
            left: 752px;
        }

        #upLevel2 {
            top: 420px;
            left: 752px;
        }

        #upLevel3 {
            top: 500px;
            left: 752px;
        }

        #upLevel4 {
            top: 580px;
            left: 752px;
        }
    </style>
</head>
<body>
    <jsp:include page="top.jsp" />
    <ol class="breadcrumb">
    <li><a href="main.jsp">水量控制</a></li>
    <li><a href="main.jsp">水量增减</a></li>
    <li class="active">活性炭池</li>
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
        </div>
        <canvas id="canvas_TC" width="1600" height="753"></canvas>
        <!--<div id="test1">-->
            <!--<p>测试cookie</p>-->
        <!--</div>-->
        <div id="GZW">
              <p>活性炭池</p>
        </div>
        <div id="TC01_Y01">
              <p>堰01</p>
        </div>
        <div id="TC01_Y02">
            <p>堰02</p>
        </div>
        <div id="TC01_Y03">
            <p>堰03</p>
        </div>
        <div id="TC01_Y04">
            <p>堰04</p>
        </div>
        <div id="TC01_Y05">
            <p>堰05</p>
        </div>
		 <div id="TC01_Y06">
            <p>堰06</p>
        </div>
        <div id="readout_SimTime">
            <p id="SimTime"></p>
            <p id="step"></p>
        </div>
        <div id="readout_TC01_Y01">
            <p id="readout_TC01_Y01_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_TC01_Y02">
            <p id="readout_TC01_Y02_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_TC01_Y03">
            <p id="readout_TC01_Y03_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_TC01_Y04">
            <p id="readout_TC01_Y04_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_TC01_Y05">
            <p id="readout_TC01_Y05_Vnow">水量: 0.0</p>
        </div>
		<div id="readout_TC01_Y06">
            <p id="readout_TC01_Y06_Vnow">水量: 0.0</p>
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