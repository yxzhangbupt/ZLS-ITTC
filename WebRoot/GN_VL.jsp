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
    <script src="js/GN_VL.js"></script>


    <style>


        #canvas_QS {
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
        }
        #VL_SC01{
            position: absolute;
            left: 447px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #VL_SC02{
            position: absolute;
            left: 691px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #VL_SC03{
            position: absolute;
            left: 932px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #VL_SC04{
            position: absolute;
            left: 1165px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #VL_SC05{
            position: absolute;
            left: 1374px;
            top: 183px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #readout_VL_SC03 {
            position: absolute;
            left: 880px;
            top: 569px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_VL_SC04 {
            position: absolute;
            left: 1100px;
            top:  569px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_VL_SC01 {
            position: absolute;
            left: 405px;
            top:  569px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }

        #readout_VL_SC02 {
            position: absolute;
            left: 640px;
            top:  569px;
            width: 150px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_VL_SC05 {
            position: absolute;
            left: 1370px;
            top:  569px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
    }
    #readout_SimTime
    {
    position: absolute;
    left: 1720px;
    top: 100px;
    width: 200px;
    height: 200px;
    font-size: 15px;
    z-index: 100;
    }
    #btn_group {
    position: absolute;
    top: 170px;
    left: 1720px;
    z-index: 100;
    }
    </style>
</head>
<body>
    <jsp:include page="top.jsp" />
        <ol class="breadcrumb">
        <li><a href="main.jsp">水量控制</a></li>
        <li><a href="main.jsp">水量增减</a></li>
        <li class="active">V型滤池</li>
        </ol>
<div id="myPage">
    <div id="myContent" style="overflow: hidden;width: 1600px;">
        <canvas id="canvas_HH" width="1600" height="753"></canvas>
        <!--<div id="test1">-->
            <!--<p>测试cookie</p>-->
        <!--</div>-->
        <div id="GZW">
        <p>V型滤池</p>
        </div>
        <div id="VL_SC01">
              <p>水池01</p>
        </div>
        <div id="VL_SC02">
            <p>水池02</p>
        </div>
        <div id="VL_SC03">
            <p>水池03</p>
        </div>
        <div id="VL_SC04">
            <p>水池04</p>
        </div>
        <div id="VL_SC05">
            <p>水池05</p>
        </div>

        <div id="readout_VL_SC01">
            <p id="readout_VL_SC01_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_VL_SC02">
            <p id="readout_VL_SC02_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_VL_SC03">
            <p id="readout_VL_SC03_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_VL_SC04">
            <p id="readout_VL_SC04_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_VL_SC05">
            <p id="readout_VL_SC05_Vnow">水量: 0.0</p>
        </div>
    </div>

        <div id="btn_group" class="btn-group-vertical btn-group-lg" role="group">
        <button id="btn_start" class="btn btn-primary">暂停演示</button>
        <button id="btn_fast" class="btn btn-primary">加速</button>
        <button id="btn_slow" class="btn btn-primary">减速</button>
        <button id="btn_reset" class="btn btn-primary">重置</button>
        <button  id="btn_vertical" class="btn btn-primary">纵剖视图</button>
        <button  id="btn_last" class="btn btn-primary">上一个</button>
        <button  id="btn_next" class="btn btn-primary">下一个</button>
        <button  id="btn_home" class="btn btn-primary">平面图</button>
        </div>
    <jsp:include page="down.jsp" />
    <script>
        function open_mainView(){
            window.open("main1.html",'_self');
        }
    </script>
</div>
        <div id="readout_SimTime">
        <p id="SimTime"></p>
        <p id="step"></p>
        </div>
</body>
</html>