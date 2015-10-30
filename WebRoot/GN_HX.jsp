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
    <script src="js/GN_HX.js"></script>
     <style>

         #HX_SC01{
            position: absolute;
            left: 222px;
            top: 19px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC02{
            position: absolute;
            left: 332px;
            top: 19px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC03{
            position: absolute;
            left: 442px;
            top: 19px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC04{
            position: absolute;
            left: 552px;
            top: 19px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC05{
            position: absolute;
            left: 222px;
            top: 397px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC06{
            position: absolute;
            left: 332px;
            top: 397px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC07{
            position: absolute;
            left: 442px;
            top: 397px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC08{
            position: absolute;
            left: 552px;
            top: 397px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC09{
            position: absolute;
            left: 772px;
            top: 19px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC10{
            position: absolute;
            left: 882px;
            top: 19px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        
        #HX_SC11{
            position: absolute;
            left: 992px;
            top: 19px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC12{
            position: absolute;
            left: 772px;
            top: 397px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
        #HX_SC13{
            position: absolute;
            left: 882px;
            top: 397px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
		  #HX_SC14{
            position: absolute;
            left: 992px;
            top: 397px;
            width: 100px;
            height: 30px;
            font-size: 20px;
            color: #ec1800;
            z-index: 10;
        }
          /*#readout_SimTime{*/
            /*position: absolute;*/
            /*left: 1334px;*/
            /*top: 12px;*/
            /*width: 200px;*/
            /*height: 200px;*/
            /*font-size: 15px;*/
            /*color: #00082b;*/
            /*z-index: 10;*/
        /*}*/
        #readout_HX_SC01 {
            position: absolute;
            left:222px;
            top: 290px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC02 {
            position: absolute;
            left: 332px;
            top: 290px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC03 {
            position: absolute;
            left: 442px;
            top: 290px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC04 {
            position: absolute;
            left: 552px;
            top: 290px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC05 {
            position: absolute;
            left: 222px;
            top: 662px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC06 {
            position: absolute;
            left: 332px;
            top: 662px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC07 {
            position: absolute;
            left: 442px;
            top: 662px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC08 {
            position: absolute;
            left: 552px;
            top: 662px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC09 {
            position: absolute;
            left: 772px;
            top: 290px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC10 {
            position: absolute;
            left: 882px;
            top: 290px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC11 {
            position: absolute;
            left: 992px;
            top: 290px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC12 {
            position: absolute;
            left: 772px;
            top: 662px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        } #readout_HX_SC13 {
            position: absolute;
            left: 882px;
            top: 662px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
         #readout_HX_SC14 {
            position: absolute;
            left: 992px;
            top: 662px;
            width: 200px;
            height: 200px;
            font-size: 10px;
            color: #00082b;
            z-index: 10;
        }
    #btn_group {
    left: 1200px;
    }
    #readout_SimTime{
    left: 1200px;
    }
    </style>
</head>
<body>
    <jsp:include page="top.jsp" />
    <ol class="breadcrumb">
    <li><a href="main.jsp">水量控制</a></li>
    <li><a href="main.jsp">水量增减</a></li>
    <li class="active">虹吸滤池</li>
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
        <canvas id="canvas_HX" width="1600" height="753"></canvas>
        <!--<div id="test1">-->
            <!--<p>测试cookie</p>-->
        <!--</div>-->
         <div id="GZW">
              <p>虹吸滤池</p>
        </div>
        <div id="HX_SC01">
              <p>水池01</p>
        </div>
         <div id="HX_SC02">
              <p>水池02</p>
        </div> 
         <div id="HX_SC03">
              <p>水池03</p>
        </div> 
         <div id="HX_SC04">
              <p>水池04</p>
        </div> 
         <div id="HX_SC05">
              <p>水池05</p>
        </div> 
         <div id="HX_SC06">
              <p>水池06</p>
        </div> 
         <div id="HX_SC07">
              <p>水池07</p>
        </div> 
         <div id="HX_SC08">
              <p>水池08</p>
        </div> 
         <div id="HX_SC09">
              <p>水池09</p>
        </div> 
         <div id="HX_SC10">
              <p>水池10</p>
        </div> 
         <div id="HX_SC11">
              <p>水池11</p>
        </div> 
         <div id="HX_SC12">
              <p>水池12</p>
        </div> 
         <div id="HX_SC13">
              <p>水池13</p>
        </div> 
         <div id="HX_SC14">
              <p>水池14</p>
        </div>
        <div id="readout_SimTime">
            <p id="SimTime"></p>
            <p id="step"></p>
        </div>
         <div id="readout_HX_SC01">
            <p id="readout_HX_SC01_Vnow">水量: 0.0</p>
        </div>
        <div id="readout_HX_SC02">
            <p id="readout_HX_SC02_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC03">
            <p id="readout_HX_SC03_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC04">
            <p id="readout_HX_SC04_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC05">
            <p id="readout_HX_SC05_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC06">
            <p id="readout_HX_SC06_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC07">
            <p id="readout_HX_SC07_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC08">
            <p id="readout_HX_SC08_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC09">
            <p id="readout_HX_SC09_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC10">
            <p id="readout_HX_SC10_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC11">
            <p id="readout_HX_SC11_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC12">
            <p id="readout_HX_SC12_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC13">
            <p id="readout_HX_SC13_Vnow">水量: 0.0</p>
        </div>
            <div id="readout_HX_SC14">
            <p id="readout_HX_SC14_Vnow">水量: 0.0</p>
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
