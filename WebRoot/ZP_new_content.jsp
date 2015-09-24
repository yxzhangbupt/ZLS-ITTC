<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<head >
    <meta charset="UTF-8" pageEncoding="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/ZP_new.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ocanvas-2.7.4.min.js"></script>
    <script src="js/my_oCanvas.js"></script>
    <script src="js/ZP_new.js"></script>
</head>
<body>
    <div id="myContent" style="overflow: auto">
    <button id="btn_start" class="btn btn-info">开始</button>
    <button id="btn_pause" class="btn btn-info">暂停</button>
    <button id="btn_upS" class="btn btn-info">加速</button>
    <button id="btn_downS" class="btn btn-info">减速</button>
    <div id="mainView" style="position: absolute;z-index: 1" >
        <canvas id="canvas_ZP_new" width="1600" height="757"></canvas>
    </div>
</body>
</html>