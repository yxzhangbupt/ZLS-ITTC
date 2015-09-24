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
    <link rel="stylesheet" href="css/top_down.css">
    <link rel="stylesheet" href="css/breadcrumb.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ocanvas-2.7.4.min.js"></script>
    <script src="js/GN_FMControl.js"></script>


    <style>
        #myContent {
	    margin: 0px 0px 0px 0px;
	    position: relative;
	    height: 750px;
	    width: 1600px;
        }
    #myContent a{
    color: #ff4400;
    }
    .name_ob{
    font-family: '微软雅黑','Arial';
    color:#ff4400;
    font-size: 20px;
    font-weight:bold;
    }
    #name_QS{
    position: absolute;
    left: 681px;
    top: 62px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_JJC1{
    position: absolute;
    left: 858px;
    top: 383px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_JJC2{
    position: absolute;
    left: 1067px;
    top: 383px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_JJC3{
    position: absolute;
    left:1146px;
    top: 616px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_VL{
    position: absolute;
    left: 860px;
    top: 681px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_HHJ1{
    position: absolute;
    left:965px;
    top: 343px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_HHJ2{
    position: absolute;
    left:1166px;
    top: 355px;
    height: auto;
    width: 30px;
    z-index:999;
    }
    #name_HX{
    position: absolute;
    left:837px;
    top: 532px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_QSC1{
    position: absolute;
    left:305px;
    top: 485px;
    height: 50px;
    width: 150px;
    z-index:999;
    }
    #name_CY{
    position: absolute;
    left:590px;
    top: 663px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_CYC{
    position: absolute;
    left:620px;
    top: 453px;
    height: auto;
    width: 30px;
    z-index:999;
    }
    #name_QSC2{
    position: absolute;
    left:315px;
    top: 301px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_QSC3{
    position: absolute;
    left:487px;
    top: 301px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_QSC4{
    position: absolute;
    left:450px;
    top: 489px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_TC{
    position: absolute;
    left:375px;
    top: 655px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_TC1{
    position: absolute;
    left:485px;
    top: 655px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_YC{
    position: absolute;
    left:960px;
    top: 139px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #FM05{
    position: absolute;
    left:695px;
    top: 106px;
    z-index:999;
    }
    #FM06{
    position: absolute;
    left:733px;
    top: 106px;
    z-index:999;
    }
    #FM05{
    position: absolute;
    left:695px;
    top: 106px;
    z-index:999;
    }
    #FM07{
    position: absolute;
    left:713px;
    top: 172px;
    z-index:999;
    }#FM09{
    position: absolute;
    left:688px;
    top: 192px;
    z-index:999;
    }#FM010{
    position: absolute;
    left:738px;
    top: 193px;
    z-index:999;
    }#FM065{
    position: absolute;
    left:1032px;
    top: 240px;
    z-index:999;
    }#FM062{
    position: absolute;
    left:978px;
    top: 275px;
    z-index:999;
    }#FM045{
    position: absolute;
    left:879px;
    top: 458px;
    z-index:999;
    }
    #FM014{
    position: absolute;
    left:826px;
    top: 475px;
    z-index:999;
    }#FM015{
    position: absolute;
    left:989px;
    top: 463px;
    z-index:999;
    }#FM069{
    position: absolute;
    left:1034px;
    top: 463px;
    z-index:999;
    }#FM066{
    position: absolute;
    left:1174px;
    top: 466px;
    z-index:999;
    }#FM016{
    position: absolute;
    left:978px;
    top: 501px;
    z-index:999;
    }#FM068{
    position: absolute;
    left:1012px;
    top: 567px;
    z-index:999;
    }#FM067{
    position: absolute;
    left:1011px;
    top: 635px;
    z-index:999;
    }#FM017{
    position: absolute;
    left:834px;
    top:569px;
    z-index:999;
    }#FM018{
    position: absolute;
    left:869px;
    top: 569px;
    z-index:999;
    }#FM019{
    position: absolute;
    left:867px;
    top: 605px;
    z-index:999;
    }#FM020{
    position: absolute;
    left:705px;
    top: 645px;
    z-index:999;
    }
    #FM052{
    position: absolute;
    left:756px;
    top: 693px;
    z-index:999;
    }
    #FM056{
    position: absolute;
    left:692px;
    top: 723px;
    z-index:999;
    }#FM053{
    position: absolute;
    left:653px;
    top:634px;
    z-index:999;
    }#FM054{
    position: absolute;
    left:622px;
    top: 632px;
    z-index:999;
    }#FM057{
    position: absolute;
    left:663px;
    top: 699px;
    z-index:999;
    }#FM058{
    position: absolute;
    left:633px;
    top: 703px;
    z-index:999;
    }#FM059{
    position: absolute;
    left:588px;
    top: 657px;
    z-index:999;
    }
    #FM021{
    position: absolute;
    left:597px;
    top: 616px;
    z-index:999;
    }
    #FM022{
    position: absolute;
    left:611px;
    top: 578px;
    z-index:999;
    }
    #FM046{
    position: absolute;
    left:382px;
    top: 469px;
    z-index:999;
    }
    #FM024{
    position: absolute;
    left:559px;
    top: 578px;
    z-index:999;
    }#FM044{
    position: absolute;
    left:402px;
    top: 627px;
    z-index:999;
    }
    #FM055{
    position: absolute;
    left:526px;
    top: 618px;
    z-index:999;
    }
    #FM026{
    position: absolute;
    left:401px;
    top: 572px;
    z-index:999;
    }
    #FM047{
    position: absolute;
    left:347px;
    top: 394px;
    z-index:999;
    }#FM048{
    position: absolute;
    left:389px;
    top: 415px;
    z-index:999;
    }#FM049{
    position: absolute;
    left:451px;
    top: 418px;
    z-index:999;
    }#FM050{
    position: absolute;
    left:485px;
    top: 392px;
    z-index:999;
    }
    #FM051{
    position: absolute;
    left:515px;
    top: 416px;
    z-index:999;
    }
    #readout_input{
    position: absolute;
    left: 665px;
    top: 24px;
    z-index: 999;
    }
    #setConfig{
    font-family: '微软雅黑','Arial';
    position: absolute;
    left:1472px;
    top: 315px;
    z-index: 999;
    font-size:15px;
    width:137px;
    }
    #setConfig h1{
    font-size:20px;
    color:#ff4400;
    font-weight:bold;
    }
    #setConfig input{
    width:50px;
    padding:2px;
    font-size:12px;
    }
    #btn_submit{
    margin:60px auto auto 30px ;
    }
    #FMhelp{
    position: absolute;
    left:1203px;
    top: 27px;
    z-index: 999;
    color:black;
    }
    #WFM05{
    position: absolute;
    left:695px;
    top: 106px;
    z-index:999;
    }
    #WFM06{
    position: absolute;
    left:733px;
    top: 106px;
    z-index:999;
    }
    #WFM05{
    position: absolute;
    left:695px;
    top: 106px;
    z-index:999;
    }
    #WFM07{
    position: absolute;
    left:713px;
    top: 172px;
    z-index:999;
    }#WFM09{
    position: absolute;
    left:688px;
    top: 192px;
    z-index:999;
    }#WFM010{
    position: absolute;
    left:738px;
    top: 193px;
    z-index:999;
    }#WFM065{
    position: absolute;
    left:1032px;
    top: 240px;
    z-index:999;
    }#WFM062{
    position: absolute;
    left:978px;
    top: 275px;
    z-index:999;
    }#WFM045{
    position: absolute;
    left:879px;
    top: 458px;
    z-index:999;
    }
    #WFM014{
    position: absolute;
    left:826px;
    top: 475px;
    z-index:999;
    }#WFM015{
    position: absolute;
    left:989px;
    top: 463px;
    z-index:999;
    }#WFM069{
    position: absolute;
    left:1034px;
    top: 463px;
    z-index:999;
    }#WFM066{
    position: absolute;
    left:1174px;
    top: 466px;
    z-index:999;
    }#WFM016{
    position: absolute;
    left:978px;
    top: 501px;
    z-index:999;
    }#WFM068{
    position: absolute;
    left:1012px;
    top: 567px;
    z-index:999;
    }#WFM067{
    position: absolute;
    left:1011px;
    top: 635px;
    z-index:999;
    }#WFM017{
    position: absolute;
    left:834px;
    top:569px;
    z-index:999;
    }#WFM018{
    position: absolute;
    left:869px;
    top: 569px;
    z-index:999;
    }#WFM019{
    position: absolute;
    left:867px;
    top: 605px;
    z-index:999;
    }#WFM020{
    position: absolute;
    left:705px;
    top: 645px;
    z-index:999;
    }
    #WFM052{
    position: absolute;
    left:756px;
    top: 693px;
    z-index:999;
    }
    #WFM056{
    position: absolute;
    left:692px;
    top: 723px;
    z-index:999;
    }#WFM053{
    position: absolute;
    left:653px;
    top:634px;
    z-index:999;
    }#WFM054{
    position: absolute;
    left:622px;
    top: 632px;
    z-index:999;
    }#WFM057{
    position: absolute;
    left:663px;
    top: 699px;
    z-index:999;
    }#WFM058{
    position: absolute;
    left:633px;
    top: 703px;
    z-index:999;
    }#WFM059{
    position: absolute;
    left:588px;
    top: 657px;
    z-index:999;
    }
    #WFM021{
    position: absolute;
    left:597px;
    top: 616px;
    z-index:999;
    }
    #WFM022{
    position: absolute;
    left:611px;
    top: 578px;
    z-index:999;
    }
    #WFM046{
    position: absolute;
    left:382px;
    top: 469px;
    z-index:999;
    }
    #WFM024{
    position: absolute;
    left:559px;
    top: 578px;
    z-index:999;
    }#WFM044{
    position: absolute;
    left:402px;
    top: 627px;
    z-index:999;
    }
    #WFM055{
    position: absolute;
    left:526px;
    top: 618px;
    z-index:999;
    }
    #WFM026{
    position: absolute;
    left:401px;
    top: 572px;
    z-index:999;
    }
    #WFM047{
    position: absolute;
    left:347px;
    top: 394px;
    z-index:999;
    }#WFM048{
    position: absolute;
    left:389px;
    top: 415px;
    z-index:999;
    }#WFM049{
    position: absolute;
    left:451px;
    top: 418px;
    z-index:999;
    }#WFM050{
    position: absolute;
    left:485px;
    top: 392px;
    z-index:999;
    }
    #WFM051{
    position: absolute;
    left:515px;
    top: 416px;
    z-index:999;
    }
    .name_FM{
    font-family: '微软雅黑','Arial';
    color:black;
    font-size: 15px;
    font-weight:bold;
    }
    #FMList{
    margin-left:144px;
    margin-top:10px;
    }
    #FM_table{
    height:257px;
    width:1333px;
    text-align:center;
    }
    </style>
    <script>
    function changeImage(id){
    var image = document.getElementById(id);
    if(image.src.match("image/y3.png"))
    image.src = "image/y2.png";
    else image.src = "image/y3.png";
    }
    function changeInput(){
    var read =document.getElementById("read").value ;
    var textFeild =document.getElementById("write");
    textFeild.innerHTML="进水量："+read+" m3/h";
    }
    function setOpenDgree(id){
        var num = id.substr(2);
        var table =document.getElementById(num);
        var image = document.getElementById(id);
        var openDgree = prompt("请输入"+id+"开启度   (输入范围0-100的整数：0为关闭，1为完全开启):","0");
        if(openDgree<0||openDgree>100||isNaN(openDgree)){
            alert("输入有误！请重新输入！");
            return;
        }
        else if(openDgree==null){
            return;
         }
        else if (openDgree==0){
             table.innerHTML=openDgree+"%";
             image.src = "image/y2.png";
             $('#'+num).toggleClass('danger');
    return;
        }
        else if(openDgree==100)
    {
    table.innerHTML=openDgree+"%";
            image.src = "image/y3.png";
             $('#'+num).toggleClass('info');
    return;

    }
        else{
    table.innerHTML=openDgree+"%";
             image.src = "image/y1.png";
             $('#'+num).toggleClass('warning');
    return;

    }
    }
    </script>
</head>
<body>
    <jsp:include page="top.jsp" />
    <ol class="breadcrumb">
    <li><a href="main.jsp">水量控制</a></li>
    <li class="active">水量增减</li>
    </ol>
<div id="myPage">
    <div id="myContent" style="overflow: hidden">
        <div id="btn_group" class="btn-group-vertical btn-group-lg" role="group">
            <button id="btn_start" class="btn btn-primary" value="0">开始演示</button>
            <button id="btn_fast" class="btn btn-primary">加速</button>
            <button id="btn_slow" class="btn btn-primary">减速</button>
            <button id="btn_zero" class="btn btn-primary">默认速度</button>
            <button id="btn_reset" class="btn btn-primary">重置</button>
        </div>
        <canvas id="canvas_QS" width="1600" height="753"></canvas>
        <div id="SC01">
        <!--<div id="test1">-->
            <!--<p>测试cookie</p>-->
        <!--</div>-->
        </div>
        <div id="readout_SimTime">
            <p id="SimTime"></p>
            <p id="step"></p>
        </div>
        <div id="readout_input" class="name_ob">
           <P id="write">进水量：3600 m3/h</P>
        </div>
        <div id="setConfig">
            <h1>参数设置：</h1>
             <p> 1. 进水量</p>
            <p><input id="read" type="text"size="10px"/>&nbsp;m3/h</p>
            <button id="btn_submit" class="btn btn-info btn-sm btn_main" value="0" onclick="changeInput()">提交</button>
        </div>
        <div id="FMhelp" class="name_ob">
            单击阀门设置阀门开启度！
        </div>
    <a href="GN_getWater.jsp" id="name_QS"  style="text-decoration: none" class="name_ob">取水泵房</a>
    <a href="GN_JJ.jsp" id="name_JJC1" style="text-decoration: none" class="name_ob">1#机加池</a>
    <a href="GN_JJ.jsp" id="name_JJC2" style="text-decoration: none" class="name_ob">2#机加池</a>
    <a href="GN_JJ.jsp" id="name_JJC3" style="text-decoration: none" class="name_ob">3#机加池</a>
    <a href="GN_VL.jsp" id="name_VL" style="text-decoration: none" class="name_ob">V型滤池</a>
    <a href="GN_TC01.jsp" id="name_TC" class="name_ob" style="text-decoration: none">活性炭池</a>
    <a href="#" id="name_TC1" class="name_ob" style="text-decoration: none">活性炭池</a>
    <a href="GN_CY.jsp" id="name_CY" class="name_ob" style="text-decoration: none">臭氧混合池</a>
    <a href="#" id="name_CYC" class="name_ob" style="text-decoration: none">臭氧生产池</a>
    <a href="#" id="name_YC" class="name_ob" style="text-decoration: none">预沉池</a>
    <a href="GN_HH.jsp" id="name_HHJ1" class="name_ob" style="text-decoration: none">老混合井</a>
    <a href="GN_HH.jsp" id="name_HHJ2" class="name_ob" style="text-decoration: none">新混合井</a>
    <a href="GN_HX.jsp" id="name_HX" class="name_ob" style="text-decoration: none"> 虹吸滤池</a>
    <a href="GN_QingS.jsp" id="name_QSC1" class="name_ob" style="text-decoration: none">3#清水池</a>
    <a href="GN_QingS.jsp" id="name_QSC2" class="name_ob" style="text-decoration: none">1#清水池</a>
    <a href="GN_QingS.jsp" id="name_QSC3" class="name_ob" style="text-decoration: none">2#清水池</a>
    <a href="GN_QingS.jsp" id="name_QSC4" class="name_ob" style="text-decoration: none">4#清水池</a>

    <img id="FM05" src="image/y3.png" onclick="setOpenDgree('FM05')" hover="heighlight()">
    <img id="FM06" src="image/y3.png" onclick="setOpenDgree('FM06')">
    <img id="FM07" src="image/y3.png" onclick="setOpenDgree('FM07')">
    <img id="FM09" src="image/y3.png" onclick="setOpenDgree('FM09')">
    <img id="FM010" src="image/y3.png" onclick="setOpenDgree('FM010')">
    <img id="FM065" src="image/y3.png" onclick="setOpenDgree('FM065')">
    <img id="FM062" src="image/y3.png" onclick="setOpenDgree('FM062')">
    <img id="FM045" src="image/y3.png" onclick="setOpenDgree('FM045')">
    <img id="FM014" src="image/y3.png" onclick="setOpenDgree('FM014')">
    <img id="FM015" src="image/y3.png" onclick="setOpenDgree('FM015')">
    <img id="FM069" src="image/y3.png" onclick="setOpenDgree('FM069')">
    <img id="FM066" src="image/y3.png" onclick="setOpenDgree('FM066')">
    <img id="FM016" src="image/y3.png" onclick="setOpenDgree('FM016')">
    <img id="FM068" src="image/y3.png" onclick="setOpenDgree('FM068')">
    <img id="FM067" src="image/y3.png" onclick="setOpenDgree('FM067')">
    <img id="FM017" src="image/y3.png" onclick="setOpenDgree('FM017')">
    <img id="FM018" src="image/y3.png" onclick="setOpenDgree('FM018')">
    <img id="FM019" src="image/y3.png" onclick="setOpenDgree('FM019')">
    <img id="FM020" src="image/y3.png" onclick="setOpenDgree('FM020')">
    <img id="FM052" src="image/y3.png" onclick="setOpenDgree('FM052')">
    <img id="FM056" src="image/y3.png" onclick="setOpenDgree('FM056')">
    <img id="FM053" src="image/y3.png" onclick="setOpenDgree('FM053')">
    <img id="FM054" src="image/y3.png" onclick="setOpenDgree('FM054')">
    <img id="FM057" src="image/y3.png" onclick="setOpenDgree('FM057')">
    <img id="FM058" src="image/y3.png" onclick="setOpenDgree('FM058')">
    <img id="FM059" src="image/y3.png" onclick="setOpenDgree('FM059')">
    <img id="FM021" src="image/y3.png" onclick="setOpenDgree('FM021')">
    <img id="FM022" src="image/y3.png" onclick="setOpenDgree('FM022')">
    <img id="FM046" src="image/y3.png" onclick="setOpenDgree('FM046')">
    <img id="FM024" src="image/y3.png" onclick="setOpenDgree('FM024')">
    <img id="FM044" src="image/y3.png" onclick="setOpenDgree('FM044')">
    <img id="FM055" src="image/y3.png" onclick="setOpenDgree('FM055')">
    <img id="FM026" src="image/y3.png" onclick="setOpenDgree('FM026')">
    <img id="FM047" src="image/y3.png" onclick="setOpenDgree('FM047')">
    <img id="FM048" src="image/y3.png" onclick="setOpenDgree('FM048')">
    <img id="FM049" src="image/y3.png" onclick="setOpenDgree('FM049')">
    <img id="FM050" src="image/y3.png" onclick="setOpenDgree('FM050')">
    <img id="FM051" src="image/y3.png" onclick="setOpenDgree('FM051')">

    <p id="WFM05" class="name_FM">05#</p>
    <p id="WFM06" class="name_FM">06#</p>
    <p id="WFM07" class="name_FM">07#</p>
    <p id="WFM09" class="name_FM">09#</p>
    <p id="WFM010" class="name_FM">010#</p>
    <p id="WFM065" class="name_FM">065#</p>
    <p id="WFM062" class="name_FM">062#</p>
    <p id="WFM045" class="name_FM">045#</p>
    <p id="WFM014" class="name_FM">014#</p>
    <p id="WFM015" class="name_FM">015#</p>
    <p id="WFM069" class="name_FM">069#</p>
    <p id="WFM066" class="name_FM">066#</p>
    <p id="WFM016" class="name_FM">016#</p>
    <p id="WFM068" class="name_FM">068#</p>
    <p id="WFM067" class="name_FM">067#</p>
    <p id="WFM017" class="name_FM">017#</p>
    <p id="WFM018" class="name_FM">018#</p>
    <p id="WFM019" class="name_FM">019#</p>
    <p id="WFM020" class="name_FM">020#</p>
    <p id="WFM052" class="name_FM">052#</p>
    <p id="WFM056" class="name_FM">056#</p>
    <p id="WFM053" class="name_FM">053#</p>
    <p id="WFM054" class="name_FM">054#</p>
    <p id="WFM057" class="name_FM">057#</p>
    <p id="WFM058" class="name_FM">058#</p>
    <p id="WFM059" class="name_FM">059#</p>
    <p id="WFM021" class="name_FM">021#</p>
    <p id="WFM022" class="name_FM">022#</p>
    <p id="WFM046" class="name_FM">046#</p>
    <p id="WFM024" class="name_FM">024#</p>
    <p id="WFM044" class="name_FM">044#</p>
    <p id="WFM055" class="name_FM">055#</p>
    <p id="WFM026" class="name_FM">026#</p>
    <p id="WFM047" class="name_FM">047#</p>
    <p id="WFM048" class="name_FM">048#</p>
    <p id="WFM049" class="name_FM">049#</p>
    <p id="WFM050" class="name_FM">050#</p>
    <p id="WFM051" class="name_FM">051#</p>
    </div>
    <div id="FMList">

    <!-- Table -->
    <table id="FM_table" class="table table-bordered " >
    <thead>
    <td>#</td>
    <td>开启度</td>
    <td>#</td>
    <td>开启度</td>
    <td>#</td>
    <td>开启度</td>
    <td>#</td>
    <td>开启度</td>
    <td>#</td>
    <td>开启度</td>
    <td>#</td>
    <td>开启度</td>
    <td>#</td>
    <td>开启度</td>
    <td>#</td>
    <td>开启度</td>
    </thead>
    <tbody>
    <tr><td>05</td><td id="05" ">100</td><td>06</td><td id="06" >100</td><td>07</td><td id="07" >100</td><td>09</td><td id="09">100</td><td>010</td><td id="010">100</td><td>065</td><td id="065">100</td><td>062</td><td id="062">100</td><td>045</td><td id="045">100</td></tr>
    <tr><td>014</td><td id="014">100</td><td>015</td><td id="015">100</td><td>069</td><td id="069">100</td><td>066</td><td id="066">100</td><td>016</td><td id="016">100</td><td>068</td><td id="068">100</td><td>067</td><td id="067">100</td><td>017</td><td id="017">100</td></tr>
    <tr><td>018</td><td id="018">100</td><td>019</td><td id="019">100</td><td>020</td><td id="020">100</td><td>052</td><td id="052">100</td><td>056</td><td id="056">100</td><td>053</td><td id="053">100</td><td>054</td><td id="054">100</td><td>057</td><td id="057">100</td></tr>
    <tr><td>058</td><td id="058">100</td><td>059</td><td id="059">100</td><td>021</td><td id="021">100</td><td>022</td><td id="022">100</td><td>046</td><td id="046">100</td><td>024</td><td id="024">100</td><td>044</td><td id="044">100</td><td>055</td><td id="055">100</td></tr>
    <tr><td>026</td><td id="026">100</td><td>047</td><td id="047">100</td><td>048</td><td id="048</">100</td><td>049</td><td id="049">100</td><td>050</td><td id="050">100</td><td>051</td><td id="051">100</td></tr>

    </tbody>
    </table>
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