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
    <link rel="stylesheet" href="css/top_down.css">
    <link rel="stylesheet" href="css/breadcrumb.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style>
        #myPage {
        font-family: '微软雅黑','Source Sans Pro';
        font-size: 15px;
        width: 1300px;
        <%--height: 800px;--%>
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
        #myContent{
        margin: 0px auto;
        position: relative;
        height: 1200px;
        width: 1300px;

        background-position: bottom;
        }

        /*#word_title{*/
        /*font-family: '微软雅黑','Arial';*/
        /*font-size: 39px;*/
        /*color: #eeeeee;*/
        /*position: absolute;*/
        /*top: 180px;*/
        /*left: 590px;*/
        /*opacity: 0.85;*/
        /*}*/
        #pageFooter{
        background: #e5e5e5;
        }
        #pageFooter p{
        text-align: center;
        }
        #myNavbar a:hover
        {
        color: #d510ff;
        background: #ffeae4;}
        #myContent
        {

        background-position: center;
        }
        #head
        {
        font-size: 30px;
        font-family: '微软雅黑', 'Arial';
        text-align: center;
        }

        .cont
        {
        text-align: center;
        height: 40px;
        font-family: '宋体';
        font-size: 10px;
        }
        .input
        {
        height: 40px;
        font-size: 10px;
        font-family: '宋体';
        }
        .put
        {height: 40px;
        font-size: 15px;
        font-family: '宋体';
        background: orange;
        position: absolute;
        left: 1150px;

        }
        .btn_main{
        width: 80px;
        background-color: #337ab7;
        }
        #btn_submit{
        position:absolute;
        left:1470px;
        top:82px;
        }

        </style>
</head>
<body>
    <jsp:include page="top.jsp" />
        <ol class="breadcrumb">
        <li><a href="main.jsp">运行评估</a></li>
        <li class="active">机加池分析</li>
        </ol>
        <div id="myPage">
        <div id="myContent" style="overflow: hidden">
        <div id="main">
        <table   style='margin:0px auto;'  cellspacing="0px" >
        <tr>
        <td>
        <form  name="input" action="html_form_action.asp" style="text-align: match-parent"   method="get" >
        <table  border="1px solid dashed" cellspacing="0px">
        <tr><td colspan="13"  id="head">机加池评估表</td></tr>
        <tr class="cont">
        <td >时间</td>
        <td > 开启度</td>
        <td>转速</td>
        <td> 沉降比</td>
        <td> 小斗排<br>泥频率</td>
        <td> 大斗排<br>泥频率</td>
        <td>浊度</td>
        <td> 水温</td>
        <td> 藻类含量</td>
        <td>加FeCL3量</td>
        <td> 加PAC量</td>
        <td> 机加池<br>出水浊度</td>
        <td> 是否认可</td>
        </tr>
        <tr class="cont">
        <td >2014年01月02日</td>
        <td > <input  class="input" type="text" height="30" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年01月14日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年02月17日</td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年02月24日</td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年03月10日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年03月24日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年04月08日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年04月21日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年05月16日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年05月27日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年06月09日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年06月16日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年07月08日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年07月23日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年08月04日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年08月18日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年09月01日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年09月16日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年10月09日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>
        <tr class="cont">
        <td >2014年10月20日
        </td>
        <td > <input  class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        <td> <input class="input" type="text" size="10"style="border:none" name="user" /></td>
        </tr>


        </table>
        </form>
        </td>

        </tr>
        </table>

        </div>
        <div>
        <p style="font-size: 20px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;填表说明:</p>
        <p style="font-size: 15px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;各特征量取值分段为：</p>
        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/JJC1.png" alt=""/></span>
        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/JJC2.png" alt=""/></span>
        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/JJC3.png" alt=""/></span>
        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/JJC4.png" alt=""/></span>
        </div>
        </div>
        </div>
        <button id="btn_submit" class="btn btn-info btn-sm btn_main" value="0">提交</button>
    <jsp:include page="down.jsp" />
    <script>
        function open_mainView(){
            window.open("main1.html");
        }
    </script>
    <script src="js/QS1.js" type="text/javascript" charset="UTF-8"></script>
</div>
</body>
</html>