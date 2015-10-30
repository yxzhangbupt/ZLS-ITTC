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
    <script src="js/GN_QS_Test.js"></script>


    <style>
        #canvas_QS {
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
        }
        #readout_SC1 {
            position: absolute;
            left: 483px;
            top: 220px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            <%--color: #eef5fd;--%>
            z-index: 10;
        }

        #readout_SC2 {
            position: absolute;
            left: 483px;
            top: 680px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            <%--color: #eef5fd;--%>
            z-index: 10;
        }
        #readout_Y1 {
            position: absolute;
            left: 983px;
            top: 220px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            <%--color: #eef5fd;--%>
            z-index: 10;
        }
        #readout_Y2 {
            position: absolute;
            left: 983px;
            top: 680px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            <%--color: #eef5fd;--%>
            z-index: 10;
        }
        #test1 {
            position: absolute;
            left: 678px;
            top: 150px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            <%--color: #eef5fd;--%>
            z-index: 10;
        }
        #water_input {
            position: absolute;
            left: 287px;
            top: 53px;
            height: 200px;
            width: 30px;
            font-size: 20px;
            <%--color: #d9e4f5;--%>
            z-index: 10;
        }

        .flow {
            position: absolute;
            height: 50px;
            width: 100px;
            font-size: 18px;
            <%--color: #d9e4f5;--%>
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
    <li class="active">取水泵房</li>
    </ol>
<div id="myPage">
    <div id="myContent" style="overflow: hidden">
        <div id="btn_group" class="btn-group-vertical btn-group-lg" role="group">
            <button id="btn_start" class="btn btn-primary" value="0">暂停演示</button>
            <button id="btn_fast" class="btn btn-primary">加速</button>
            <button id="btn_slow" class="btn btn-primary">减速</button>
            <button id="btn_reset" class="btn btn-primary">重置</button>
            <button  id="btn_next" class="btn btn-primary">下一个</button>
            <button  id="btn_home" class="btn btn-primary">平面图</button>
        </div>
        <canvas id="canvas_QS" width="1600" height="753"></canvas>
        <div id="SC01">
        <!--<div id="test1">-->
            <!--<p>测试cookie</p>-->
        <!--</div>-->
        </div>
        <div id="GZW">
              <p>取水泵房</p>
        </div>
        <div id="readout_SimTime">
            <p id="SimTime"></p>
            <p id="step"></p>
        </div>
        <div id="readout_SC1">
            <p id="readout_SC1_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_SC2">
        <p id="readout_SC2_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_Y1">
            <p id="readout_Y1_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_Y2">
            <p id="readout_Y2_Vnow">水量: 0.0</p>
        </div>
        <div id="water_input">进厂水</div>
        <div id="flow1" class="flow">流量计</div>
        <div id="flow2" class="flow">流量计</div>
        <div id="upLevel1" class="upLevel">提升泵1</div>
        <div id="upLevel2" class="upLevel">提升泵2</div>
        <div id="upLevel3" class="upLevel">提升泵3</div>
        <div id="upLevel4" class="upLevel">提升泵4</div>
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