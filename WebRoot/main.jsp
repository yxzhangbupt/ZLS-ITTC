    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8" %>

        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <meta http-equiv="Access-Control-Allow-Origin" content="*">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>北京自来水集团工艺平台</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/breadcrumb.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/ocanvas-2.7.4.min.js"></script>
        <script src="js/my_oCanvas.js"></script>
        <script src="js/main.js"></script>
        <style>
        body {
        background: #eeeeed;
        }

        #myPage {
        font-family: '微软雅黑', 'Source Sans Pro';
        font-size: 15px;
        width: 1600px;
        height: 800px;
        margin: 0px auto;
        }
        a {
        margin-left: 10px;
        }

        #myContent {
        margin: 0px 0px 0px 0px;
        position: relative;
        height: 750px;
        width: 1600px;
        }


        #btn_start{
        position: absolute;
        left: 1475px;
        top: 50px;
        }
        #btn_downS{
        position: absolute;
        left: 1475px;
        top: 100px;
        }
        #btn_upS{
        position: absolute;
        left: 1475px;
        top: 150px;
        }#btn_reset{
        position: absolute;
        left: 1475px;
        top: 200px;
        }
        .btn_main{
        width: 120px;
        background-color: #337ab7;
        }
        .name_ob{
        font-family: '微软雅黑','Arial';
        color:#006699;
        font-size: 20px;
        font-weight:bold;
        ext-decoration: none;
        }
        #name_QS{
        position: absolute;
        left: 681px;
        top: 62px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_QS2{
        position: absolute;
        left: 674px;
        top: 139px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_JJC1{
        position: absolute;
        left: 858px;
        top: 383px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_JJC2{
        position: absolute;
        left: 1067px;
        top: 383px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_JJC3{
        position: absolute;
        left:1146px;
        top: 616px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_VL{
        position: absolute;
        left: 860px;
        top: 681px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_HHJ{
        position: absolute;
        left:965px;
        top: 343px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_HHJ2{
        position: absolute;
        left:1166px;
        top: 355px;
        display: none;
        height: auto;
        width: 30px;
        }
        #name_HX{
        position: absolute;
        left:837px;
        top: 532px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_QSC1{
        position: absolute;
        left:305px;
        top: 485px;
        display: none;
        height: 50px;
        width: 150px;
        }
        #name_CY{
        position: absolute;
        left:590px;
        top: 663px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_CYC{
        position: absolute;
        left:620px;
        top: 453px;
        display: none;
        height: auto;
        width: 30px;
        }
        #name_QSC2{
        position: absolute;
        left:315px;
        top: 301px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_QSC3{
        position: absolute;
        left:487px;
        top: 301px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_QSC4{
        position: absolute;
        left:450px;
        top: 489px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_TC{
        position: absolute;
        left:375px;
        top: 655px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_TC1{
        position: absolute;
        left:485px;
        top: 655px;
        display: none;
        height: 50px;
        width: auto;
        }
        #name_YC{
        position: absolute;
        left:960px;
        top: 139px;
        display: none;
        height: 50px;
        width: auto;
        }
        #mainView>a{
        color: #ff4400;
        }
        </style>
        </head>
        <body>
        <div style="overflow:hidden">
        <jsp:include page="top.jsp"/>
        <ol class="breadcrumb">
        <li><a href="main.jsp">动态演示</a></li>
        <li class="active">厂平展示</li>
        </ol>
        <div id="myPage">
        <div id="myContent" style="overflow: hidden">
        <div id="mainView" style="position: absolute;z-index: 1" >
        <button id="btn_start" class="btn btn-info btn-lg btn_main" value="0">开始</button>
        <button id="btn_upS" class="btn btn-info btn-lg btn_main">加速</button>
        <button id="btn_downS" class="btn btn-info btn-lg btn_main">减速</button>
        <button id="btn_reset" class="btn btn-info btn-lg btn_main">重新开始</button>
        <canvas id="canvas_main" width="1600" height="757"></canvas>
        <a href="QS.jsp" id="name_QS" class="name_ob">取水泵房</a>
        <a href="JJC.jsp" id="name_JJC1"  class="name_ob">1#机加池</a>
        <a href="JJC.jsp" id="name_JJC2" class="name_ob">2#机加池</a>
        <a href="JJC.jsp" id="name_JJC3"  class="name_ob">3#机加池</a>
        <a href="VL.jsp" id="name_VL" class="name_ob">V型滤池</a>
        <a href="#" id="name_TC" class="name_ob" >活性炭池</a>
        <a href="#" id="name_TC1" class="name_ob" >活性炭池</a>
        <a href="#" id="name_CY" class="name_ob" >臭氧混合池</a>
        <a href="#" id="name_CYC" class="name_ob" >臭氧生产池</a>
        <a href="#" id="name_YC" class="name_ob" >预沉池</a>
        <a href="#" id="name_HHJ" class="name_ob" >旧混合井</a>
        <a href="#" id="name_HHJ2" class="name_ob" >新混合井</a>
        <a href="#" id="name_HX" class="name_ob" > 虹吸滤池</a>
        <a href="#" id="name_QSC1" class="name_ob" >3#清水池</a>
        <a href="#" id="name_QSC2" class="name_ob">1#清水池</a>
        <a href="#" id="name_QSC3" class="name_ob" >2#清水池</a>
        <a href="#" id="name_QSC4" class="name_ob" >4#清水池</a>
        </div>

        </div>
        </div>
        <jsp:include page="down.jsp"/>
        </div>

        </body>
        </html>