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
        body {
        background: #eeeeed;
        }
        #myPage {
        font-family: '微软雅黑','Source Sans Pro';
        font-size: 15px;
        width: 1600px;
        <%--height: 800px;--%>
        margin:0px auto;
        }

        #myContent1{
        margin: 0px 0px 0px 0px;
        position: relative;
        height: 1030px;
        width: 1600px;
        background: url("image/JJC_data.png") no-repeat;
        background-position: center;
        }
        #myContent{
        margin: 0px auto;
        position: relative;
        height: 2200px;
        width: 1100px;

        background-position: bottom;
        }

        .put
        { height: 40px;
        font-size: 15px;
        font-family: '宋体';
        background: orange;
        position: absolute;
        left: 1100px;
        top:80px;

        }
        .input
        {

        font-size: 20px;
        font-family: '宋体';
        height: 40px;
        }

        .table
        {
        font-size: 15px;
        font-family: '宋体';
        width: 800px;

        }
        #table1
        {
        width: 500px;
        }
        #table2
        {
        width: 500px;
        }
        #add
        {
        border: none;
        color: transparent;
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
        <li><a href="main.jsp">设备检修</a></li>
        <li class="active">方案生成</li>
        </ol>
        <div id="myPage">
        <div id="myContent" style="overflow: hidden">
        <table   style='margin:0px auto;'  cellspacing="0px" >
        <tr>
        <td>
        <table style='margin:0px auto;'  class="table" border="1px " cellspacing="0px" width="1400px"  align="center">
        <tr>
        <td>
        <form name="input" action="html_form_action.asp" style="text-align: match-parent"   method="get">
        <p  class="head" style="text-align: center" >炭池更换<input type="text" size="6" style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />闸门配合方案</p>
        <br><p>&nbsp;&nbsp;门头沟公司计划 <input type="text" size="5"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" width="1px" name="user" />  月
        <input size="5" type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />日
        更换 <input type="text"size="5"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />
        炭池<input type="text"size="5"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />
        滤格的 <input type="text"size="5"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />   闸门，
        换闸期间需要暂停该炭池进水，改由另一炭池单独处理全部水量。为配合此次换闸施工，制订本配合方案：</p>
        <p class="p" >&nbsp;&nbsp;一、配合工作小组组织机构</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;组长：<input size="30" type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;安装工艺负责人：<input size="20.8" type="text" size="10" style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生产运行负责人：<input type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;运行工艺负责人：<input type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;设备负责人：<input size="24" type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;现场安全负责人：<input type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p class="p">&nbsp;&nbsp;二、计划施工时间：</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  class="input"type="text" size="8"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /> 年
        <input class="input" type="text" size="8"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />月
        <input class="input"type="text" size="8"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />日
        <input class="input"type="text" size="8"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />时 ~
        <input class="input"type="text" size="8"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />月
        <input class="input"type="text" size="8"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />日
        <input class="input"type="text" size="8"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />时</p>
        <p class="p">&nbsp;&nbsp;三、计划施工内容与主要材料：</p>
        <p>&nbsp;&nbsp;1.施工内容</p>
        <p>&nbsp;&nbsp;2.主要材料</p>
        <p>
        <table style='margin:0px auto;'   border="1px solid dashed" cellspacing="0px" style="text-align: center">
        <tr>
        <td>设备名称</td>
        <td>规格</td>
        <td>数量</td>
        <td>备注</td>
        </tr>
        <tr>
        <td> <input  type="text" size="12"style="border:none" name="user" /></td>
        <td> <input type="text" size="12"style="border:none" name="user" /></td>
        <td> <input type="text" size="12"style="border:none;" name="user" /></td>
        <td> <input type="text" size="12"style="border:none; " name="user" /></td>
        </tr>
        </table>
        </p>
        <p>&nbsp;&nbsp;四、闸门更换配合方案：</p>
        <p>&nbsp;&nbsp;1、更换过程：</p>

        <p>&nbsp;&nbsp;2：配合开关闸门顺序表</p>
        <p style="text-align: center">配合开关闸门的顺序表</p>
        <p>
        <table id="table1" style='margin:0px auto;' width="100px" border="1px solid dashed" cellspacing="0px" >
        <tr>
        <td width="5px">操作顺序</td>
        <td>闸门编号</td>
        <td>现在状态</td>
        <td>计划动作</td>
        <td>完成状态</td>
        <td>备注</td>
        </tr>
        <tr>
        <td> <input size="10" type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="10" type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="10" type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="10" type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="10" type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="10" type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="10" type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        <td> <input size="10"type="text"style="border:none" name="user" /></td>
        </tr>
        </table>
        </p>
        <p>&nbsp;&nbsp;3：恢复开关闸的序列号</p>
        <p style="text-align: center">恢复开关闸的序列号</p>
        <p>
        <table id="table2" style='margin:0px auto;'border="1px solid dashed" cellspacing="0px" >
        <tr>
        <td>操作顺序</td>
        <td>闸门编号</td>
        <td>计划动作</td>
        <td>完成状态</td>
        <td>备注</td>
        </tr>
        <tr>
        <td> <input size="12" type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="12" type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="12" type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="12" type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="12" type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        </tr>
        <tr>
        <td> <input size="12" type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        <td> <input size="12"type="text"style="border:none" name="user" /></td>
        </tr>

        </table>
        </p>
        <p>&nbsp;&nbsp;4：示意图</p>

        </form>
        </td>
        </tr>
        </table>
        <p><br></p>
        <table style='margin:0px auto;'class="table"   border="1px solid" cellspacing="0px"  width="1400px" align="center">
        <tr>
        <td>
        <form name="input" action="html_form_action.asp" style="text-align: match-parent"   method="get">
        <p class="head" style="text-align: center" >炭池更换<input type="text" size="5" style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />水闸工程应急预案</p>
        <br><p> &nbsp;&nbsp;门头沟分公司为积极配合此项工程，安全、保质、按时地完成任务，特制定施工应急预案如下：</p>
        <p>1.成立安全工作领导组织机构</p>
        <p>&nbsp;&nbsp;总负责人：<input size="27" type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>&nbsp;&nbsp;施工现场负责人：<input size="21" type="text" size="10" style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>&nbsp;&nbsp;技术负责人：<input size="25" type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>&nbsp;&nbsp;运行工艺负责人：<input size="21"type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>&nbsp;&nbsp;安全员：<input size="28"type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" /></p>
        <p>2.安全措施：</p>
        <table  id="add" style='margin:0px auto;' width="780px" border="none" cellspacing="0px" >
        <tr>
        <td width="10px"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>

        </table>
        <p>2.1.对施工单位的要求：</p>
        <p>2.1.1.施工人员必须经过安全教育方可入场施工，特种作业人员证件齐备。</p>
        <p>2.1.2.施工人员只允许在规定的工作区和规定的设备上工作，严禁进入其他区域随意行动，否则造成的一切后果由施工单位负责。</p>
        <p>2.1.3.施工人员和施工单位必须做到有令则行，有禁则止。</p>
        <p>2.1.4.施工单位在施工现场必须设有专职安全员，负责现场的施工安全工作，并与水厂有关人员合作做好安全供水工作。</p>
        <p>2.1.5在施工中如遇严重的安全隐患危害安全供水时，现场安全员有权终止施工工作，并与施工单位负责人协商解决。</p>

        <p>2.1.6.施工单位应服从水厂现场指挥人的命令，水厂现场指挥人有权停止一切妨碍供水安全的操作。</p>
        <p>2.2.应急配合方案：</p>
        <p>
        2.4.1  现场发生突发情况，发现人员上报现场负责人，现场负责人不能处理的，汇报总负责人。施工最高指令统一由现场负责人发出。

        </p>
        <p>2.4.2  若焊接工作进行时发生人身伤害，立即将受伤人员送往区医院治疗。</p>
        <p>2.4.3  若施工未完成时出现清水池水位偏低且涨水缓慢的情况，可少量开启
        <input size="5" type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />
        阀门，并增加来水量，注意观察虹吸滤池出水浊度确保水质。</p>
        <p>2.4.4  若检查新换闸门有渗漏情况，则立即关闭
        <input size="5" type="text"style="border-left:none; border-right:none; border-top:none;border-bottom:1px solid #000000" name="user" />
        阀门，由施工单位进行抢修。
        </p>


        </form>
        </td></tr>
        </table>

        </td>
        </tr>
        </table>
        </div>
        </div>
        <button id="btn_submit" class="btn btn-info btn-sm btn_main" value="0">保存</button>
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