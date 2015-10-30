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
    <script src="js/GN_HH.js"></script>


    <style>
        #HH1_YA{
            position: absolute;
            left: 235px;
            top: 493px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HH1_YB{
            position: absolute;
            left: 970px;
            top: 493px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HH1_Y1{
            position: absolute;
            left: 565px;
            top: 496px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HH1_Y2{
            position: absolute;
            left: 1330px;
            top: 496px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HH2_Y1{
            position: absolute;
            left: 883px;
            top: 472px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HH2_Y2{
            position: absolute;
            left: 883px;
            top: 574px;
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
        #readout_HH1_YA {
            position: absolute;
            left: 115px;
            top: 448px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_HH1_YB {
            position: absolute;
            left: 867px;
            top: 448px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_HH1_Y1 {
            position: absolute;
            left: 565px;
            top: 448px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }

        #readout_HH1_Y2 {
            position: absolute;
            left: 1327px;
            top: 448px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_HH2_Y1 {
            position: absolute;
            left: 1080px;
            top: 468px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
        }
        #readout_HH2_Y2 {
            position: absolute;
            left: 1080px;
            top: 552px;
            width: 200px;
            height: 200px;
            font-size: 15px;
            color: #00082b;
            z-index: 10;
            }
        #btn_group {
        left: 1400px;
        }
        #readout_SimTime{
        left: 1400px;
        }
    </style>
</head>
<body>
    <jsp:include page="top.jsp" />
        <ol class="breadcrumb">
        <li><a href="main.jsp">水量控制</a></li>
        <li><a href="main.jsp">水量增减</a></li>
        <li class="active">混合井</li>
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
            <button  id="btn_new" class="btn btn-primary">新混合井</button>
        </div>
        <canvas id="canvas_HH" width="1600" height="753"></canvas>
        <!--<div id="test1">-->
            <!--<p>测试cookie</p>-->
        <!--</div>-->
        <div id="GZW">
        <p>混合井</p>
        </div>
        <div id="HH1_YA">
              <p>堰A</p>
        </div>
        <div id="HH1_YB">
            <p>堰B</p>
        </div>
        <div id="HH1_Y1">
            <p>堰1</p>
        </div>
        <div id="HH1_Y2">
            <p>堰2</p>
        </div>
        <%--<div id="HH2_Y1">--%>
            <%--<p>堰1</p>--%>
        <%--</div>--%>
        <%--<div id="HH2_Y2">--%>
            <%--<p>堰2</p>--%>
        <%--</div>--%>
        <div id="readout_SimTime">
            <p id="SimTime"></p>
            <p id="step"></p>
        </div>
        <div id="readout_HH1_Y1">
            <p id="readout_HH1_Y1_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_HH1_Y2">
            <p id="readout_HH1_Y2_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_HH1_YA">
            <p id="readout_HH1_YA_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_HH1_YB">
            <p id="readout_HH1_YB_Vnow">水量: 0.0</p>
        </div>
        <%--<div id="readout_HH2_Y1">--%>
            <%--<p id="readout_HH2_Y1_Vnow">水量: 0.0</p>--%>
            <%--<p id="readout_HH2_Y1_Onload">负载: 0.0</p>--%>
        <%--</div>--%>
        <%--<div id="readout_HH2_Y2">--%>
            <%--<p id="readout_HH2_Y2_Vnow">水量: 0.0</p>--%>
            <%--<p id="readout_HH2_Y2_Onload">负载: 0.0</p>--%>
        <%--</div>--%>
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