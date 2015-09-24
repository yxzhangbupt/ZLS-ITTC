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
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ocanvas-2.7.4.min.js"></script>
    <script src="js/my_oCanvas.js"></script>
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
        .sidebar a{
            color: #000000;
            margin-top: 2px;
        }
        .sidebar a:hover{
            color:blue;
        }
        .sidebar a:hover{
            background: #f5f5dc;
        }
        a {
            margin-left: 10px;
        }
        #myContent{
            margin: 0px 0px 0px 0px;
            position: relative;
            height: 750px;
            width: 1600px;
        }
        #pageFooter{
            background: #e5e5e5;
        }
        #pageFooter p{
            font-family: '微软雅黑','Arial';
            text-align: center;
        }
    </style>
    <script>
        oCanvas.domReady(function () {
            var canvas=oCanvas.create({
                canvas: "#canvas_main",
                background: "#ccc",
                fps: 15
            });
            var bg = canvas.display.image({
                x: 0,
                y: 0,
                image: "image/main.jpg"
            });
            canvas.addChild(bg);
        });
    </script>
</head>
<body>
    <jsp:include page="top.jsp" />
<div id="myPage">
    <div id="myContent" style="overflow: hidden">
        <div id="mainView" style="position: absolute;z-index: 1" >
            <canvas id="canvas_show" width="1600" height="757"></canvas>
        </div>

    </div>
    <jsp:include page="down.jsp" />
    <script>
        oCanvas.domReady(function () {
            var canvas = oCanvas.create({
                canvas: "#canvas_show",
                background: "#ccc",
                fps: 10
            });
            //背景图
            var bg = canvas.display.image({
                x: 0,
                y: 0,
                image: "image/show1600.png"
            });
            canvas.addChild(bg);
        });
    </script>
</div>
</body>
</html>