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

    #myContent{
    margin: 0px auto;
    position: relative;
    height: 1200px;
    width: 1300px;

    background-position: bottom;
    }

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
    { height: 40px;
    font-size: 15px;
    font-family: '宋体';
    background: orange;
    position: absolute;
    left: 1100px;

    }
    .btn_main{
    width: 80px;
    background-color: #337ab7;
    }
    #btn_submit{
    position:absolute;
    left:1370px;
    top:82px;
    }


    </style>
</head>
<body>
    <jsp:include page="top.jsp" />
    <ol class="breadcrumb">
    <li><a href="main.jsp">水量控制</a></li>
    <li class="active">数据分析</li>
    </ol>
<div id="myPage">
    <div id="myContent" style="overflow: hidden">

        <div id="main">
            <table   style='margin:0px auto;' width="900px" cellspacing="0px" >
                <tr>
                    <td>
                        <form  name="input" action="html_form_action.asp" style="text-align: match-parent"   method="get" >
                            <table  border="1px solid dashed" cellspacing="0px">
                                <tr>
                                    <td colspan="13"  id="head">清水池水位计算</td>
                                </tr>
                                <tr class="cont">
                                    <td >时间</td>
                                    <td>东水西调</td>
                                    <td>四湖一线</td>
                                    <td>总来水量</td>
                                    <td>出水量</td>
                                    <td>蓄水量</td>
                                    <td>实际水位<br>（计数）</td>
                                    <td>预测水位1</td>
                                    <td>洗虹吸滤池</td>
                                    <td>洗V型滤池</td>
                                    <td>炭池反冲洗</td>
                                    <td>机加池排泥</td>
                                    <td>回流进水</td>
                                </tr>
                                <tr class="cont">
                                    <td > 0</td>
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
                                    <td > 1</td>
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
                                    <td > 2</td>
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
                                    <td > 3</td>
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
                                    <td > 4</td>
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
                                    <td >5</td>
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
                                    <td > 6</td>
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
                                    <td > 7</td>
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
                                    <td >8</td>
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
                                    <td >9</td>
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
                                    <td > 10</td>
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
                                    <td >11</td>
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
                                    <td > 12</td>
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
                                    <td > 13</td>
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
                                    <td > 14</td>
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
                                    <td > 15</td>
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
                                    <td > 16</td>
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
                                    <td > 17</td>
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
                                    <td > 18</td>
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
                                    <td > 19</td>
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
                                    <td > 20</td>
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
                                    <td > 21</td>
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
                                    <td > 22</td>
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
                                    <td > 23</td>
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
                                    <td > 24</td>
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

                <%--<span> <input height="100px" class="put"  type="submit" value="&nbsp;提&nbsp;交&nbsp;" /></span>--%>

            </table>

        </div>

    </div>
    <button id="btn_submit" class="btn btn-info btn-sm btn_main" value="0">提交</button>
    <script src="js/QS1.js" type="text/javascript" charset="UTF-8"></script>
</div>
    <jsp:include page="down.jsp" />
</body>
</html>