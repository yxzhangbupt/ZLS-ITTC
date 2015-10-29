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
    <link rel="stylesheet" href="css/breadcrumb.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ocanvas-2.7.4.min.js"></script>
    <script src="js/my_oCanvas.js"></script>
    <script src="js/VL.js"></script>


    <style>
         body {
            background: #afd9ee;
        }
        a {
            margin-left: 10px;
        }

        #myContent{
            margin: 0px auto;
            position: relative;
            height: 750px;
            width: 1600px;
        }
        * {
            font-family: '微软雅黑', 'Arial';
        }
        #up{
            height: 30%;
            background-color: #f1f3f5;
        }
        #down{
            height:70%;
            background-color: #f1f3f5;
        }
        #left {
            padding-right: 0px;
            padding-top: 0px;
            padding-left: 0px;
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
        }
        #right {
            padding-right: 0px;
            padding-top: 0px;
            padding-left: 0px;
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
        }
             #btn_start{
             position: relative;
             left: 60px;
         }
         #btn_downS{
             position: relative;
             left: 60px;
         }
         #btn_upS{
             position: relative;
             left: 60px;
         }#btn_reset{
              position: relative;
              left: 60px;
          }
         .btn_main{
             width: 150px;
             display: block;
             background-color: #337ab7;
         }
          .btn_list{
             width: 100%;
             display: block;
             color:black;
             background-color: #ffffff;
             font-size:18px;
             margin:0px 5px;
         }
		.btn-info.disabled{
			background-color: #eeeeee;
		}
    </style>
</head>
<body>
    <jsp:include page="top.jsp" />
    <ol class="breadcrumb">
    <li><a href="main.jsp">动态演示</a></li>
    <li><a href="main.jsp">厂平展示</a></li>
    <li class="active">V型滤池</li>
    </ol>
   <div id="myContent" style="overflow: hidden">
        <div id="left" class="col-lg-10" style="height: 753px">
            <canvas id="canvas_VL" width="1400" height="775"></canvas>
        </div>
        <div id="right" class="col-lg-2" style="height: 753px">
            <div id="up">
                <ul class="list-group">
                    <li class="list-group-item"><span class="badge" >暂未添加</span>当前仿真时间：</li>
                    <li class="list-group-item"><span class="badge" >暂未添加</span>当前水位情况：</li>
                    <li class="list-group-item"><span class="badge" >暂未添加</span>当前水流量：</li>
                    <li class="list-group-item"><span class="badge" >暂未添加</span>当前负载情况：</li>
                    <li class="list-group-item"><span class="badge" >暂未添加</span>预警信息：</li>
                </ul>
            </div>
            <div id="down">
                <div id="btn_group" class="list-group">
                    <button id="btn_start" class="btn btn-info btn-lg btn_main" value="0">开始演示</button>
                    <button id="btn_upS" class="btn btn-info btn-lg btn_main">速度加</button>
                    <button id="btn_downS" class="btn btn-info btn-lg btn_main">速度减</button>
                    <button id="btn_reset" class="btn btn-info btn-lg btn_main">重新开始</button>
                </div>
                 <div id="list_group" class="list-group">
                    <button  class="btn btn-info  btn_list" onclick="window.location.href='QS.jsp'" >取水泵房</button>
                    <button  class="btn btn-info  btn_list" onclick="window.location.href='hhj.jsp'" >混合井</button>
                    <button  class="btn btn-info  btn_list" onclick="window.location.href='JJC.jsp'"  >机加池</button>
                    <button  class="btn btn-info  btn_list active" onclick="window.location.href='VL.jsp'">V型滤池</button>
                    <button  class="btn btn-info  btn_list" onclick="window.location.href='cy.jsp'" >臭氧池</button>
                    <button  class="btn btn-info  btn_list" onclick="window.location.href='hxt.jsp'">活性炭池</button>
                    <button class="btn btn-info  btn_list" onclick="window.location.href='qsc.jsp'">清水池</button>
                    <button class="btn btn-info  btn_list " onclick="window.location.href='main.jsp'">厂平图</button>
                 </div>
            </div>
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