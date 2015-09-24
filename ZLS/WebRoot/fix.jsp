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
    <script src="js/ocanvas-2.7.4.min.js"></script>
    <script src="js/my_oCanvas.js"></script>
    <script src="js/fix.js"></script>
    <style>
        body {
            background: #afd9ee;
        }
        #myPage {
            font-family: '微软雅黑','Source Sans Pro';
            font-size: 15px;
            width: 1600px;
            height: 1600px;
            margin:0px auto;
        }
        #myContent{
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
    left: 705px;
    top: 98px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_JJC1{
    position: absolute;
    left: 870px;
    top: 435px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_JJC2{
    position: absolute;
    left: 1079px;
    top: 435px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_JJC3{
    position: absolute;
    left:1175px;
    top: 615px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_VL{
    position: absolute;
    left: 875px;
    top: 670px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_HHJ1{
    position: absolute;
    left:980px;
    top: 376px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_HHJ2{
    position: absolute;
    left:1190px;
    top: 376px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_HX{
    position: absolute;
    left:852px;
    top: 565px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_QSC1{
    position: absolute;
    left:320px;
    top: 521px;
    height: 50px;
    width: 150px;
    z-index:999;
    }
    #name_CY{
    position: absolute;
    left:605px;
    top: 678px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_QSC2{
    position: absolute;
    left:330px;
    top: 337px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_QSC3{
    position: absolute;
    left:502px;
    top: 337px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_QSC4{
    position: absolute;
    left:508px;
    top: 525px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_TC{
    position: absolute;
    left:455px;
    top: 675px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #name_YC{
    position: absolute;
    left:975px;
    top: 185px;
    height: 50px;
    width: auto;
    z-index:999;
    }
    #fix{
    margin-left:134px;
    }
    .panel{
    height:600px;
    width:1333px;
    }
    #FMhelp{
    position: absolute;
    left:1203px;
    top: 27px;
    z-index: 999
    }#FM05{
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
    z-index: 999
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
    <%--function changeImage(id){--%>
    <%--var image = document.getElementById(id);--%>
    <%--if(image.src.match("image/y3.png"))--%>
    <%--image.src = "image/y2.png";--%>
    <%--else image.src = "image/y3.png";--%>
    <%--}--%>
    <%--function changeInput(){--%>
    <%--var read =document.getElementById("read").value ;--%>
    <%--var textFeild =document.getElementById("write");--%>
    <%--textFeild.innerHTML="进水量："+read+" m3/h";--%>
    <%--}--%>
    function setFix(id){
    <%--var num = id.substr(2);--%>
    <%--var table =document.getElementById(num);--%>
    var image = document.getElementById(id);
        var fix = confirm("确定维修"+id+"?");
    if(fix==true){
        if( image.src.match("image/y3.png")){
            image.src ="image/y2.png";
            return;
        }
        else image.src ="image/y3.png";
    }
    }
    </script>
</head>
<body>
    <jsp:include page="top.jsp" />
    <ol class="breadcrumb">
    <li><a href="main.jsp">设备检修</a></li>
    <li class="active">维修单元显示</li>
    </ol>
<div id="myPage">
    <div id="myContent" style="overflow: hidden">
        <div id="mainView" style="position: absolute;z-index: 1" >
            <canvas id="canvas_fix" width="1583" height="757"></canvas>
        </div>
    <div id="FMhelp" class="name_ob">
    单击需要维修的部件！
    </div>

    <a href="#" id="name_QS"  style="text-decoration: none" class="name_ob">取水泵房</a>
    <a href="#" id="name_JJC1" style="text-decoration: none" class="name_ob">1#机加池</a>
    <a href="#" id="name_JJC2" style="text-decoration: none" class="name_ob">2#机加池</a>
    <a href="#" id="name_JJC3" style="text-decoration: none" class="name_ob">3#机加池</a>
    <a href="#" id="name_VL" style="text-decoration: none" class="name_ob">V型滤池</a>
    <a href="#" id="name_TC" class="name_ob" style="text-decoration: none">活性炭池</a>
    <a href="#" id="name_CY" class="name_ob" style="text-decoration: none">臭氧混合池</a>
    <a href="#" id="name_YC" class="name_ob" style="text-decoration: none">预沉池</a>
    <a href="#" id="name_HHJ1" class="name_ob" style="text-decoration: none">混合井</a>
    <a href="#" id="name_HHJ2" class="name_ob" style="text-decoration: none">混合井</a>
    <a href="#" id="name_HX" class="name_ob" style="text-decoration: none"> 虹吸滤池</a>
    <a href="#" id="name_QSC1" class="name_ob" style="text-decoration: none">3#清水池</a>
    <a href="#" id="name_QSC2" class="name_ob" style="text-decoration: none">1#清水池</a>
    <a href="#" id="name_QSC3" class="name_ob" style="text-decoration: none">2#清水池</a>
    <a href="#" id="name_QSC4" class="name_ob" style="text-decoration: none">4#清水池</a>

    <img id="FM05" src="image/y3.png" onclick="setFix('FM05')" >
    <img id="FM06" src="image/y3.png" onclick="setFix('FM06')">
    <img id="FM07" src="image/y3.png" onclick="setFix('FM07')">
    <img id="FM09" src="image/y3.png" onclick="setFix('FM09')">
    <img id="FM010" src="image/y3.png" onclick="setFix('FM010')">
    <img id="FM065" src="image/y3.png" onclick="setFix('FM065')">
    <img id="FM062" src="image/y3.png" onclick="setFix('FM062')">
    <img id="FM045" src="image/y3.png" onclick="setFix('FM045')">
    <img id="FM014" src="image/y3.png" onclick="setFix('FM014')">
    <img id="FM015" src="image/y3.png" onclick="setFix('FM015')">
    <img id="FM069" src="image/y3.png" onclick="setFix('FM069')">
    <img id="FM066" src="image/y3.png" onclick="setFix('FM066')">
    <img id="FM016" src="image/y3.png" onclick="setFix('FM016')">
    <img id="FM068" src="image/y3.png" onclick="setFix('FM068')">
    <img id="FM067" src="image/y3.png" onclick="setFix('FM067')">
    <img id="FM017" src="image/y3.png" onclick="setFix('FM017')">
    <img id="FM018" src="image/y3.png" onclick="setFix('FM018')">
    <img id="FM019" src="image/y3.png" onclick="setFix('FM019')">
    <img id="FM020" src="image/y3.png" onclick="setFix('FM020')">
    <img id="FM052" src="image/y3.png" onclick="setFix('FM052')">
    <img id="FM056" src="image/y3.png" onclick="setFix('FM056')">
    <img id="FM053" src="image/y3.png" onclick="setFix('FM053')">
    <img id="FM054" src="image/y3.png" onclick="setFix('FM054')">
    <img id="FM057" src="image/y3.png" onclick="setFix('FM057')">
    <img id="FM058" src="image/y3.png" onclick="setFix('FM058')">
    <img id="FM059" src="image/y3.png" onclick="setFix('FM059')">
    <img id="FM021" src="image/y3.png" onclick="setFix('FM021')">
    <img id="FM022" src="image/y3.png" onclick="setFix('FM022')">
    <img id="FM046" src="image/y3.png" onclick="setFix('FM046')">
    <img id="FM024" src="image/y3.png" onclick="setFix('FM024')">
    <img id="FM044" src="image/y3.png" onclick="setFix('FM044')">
    <img id="FM055" src="image/y3.png" onclick="setFix('FM055')">
    <img id="FM026" src="image/y3.png" onclick="setFix('FM026')">
    <img id="FM047" src="image/y3.png" onclick="setFix('FM047')">
    <img id="FM048" src="image/y3.png" onclick="setFix('FM048')">
    <img id="FM049" src="image/y3.png" onclick="setFix('FM049')">
    <img id="FM050" src="image/y3.png" onclick="setFix('FM050')">
    <img id="FM051" src="image/y3.png" onclick="setFix('FM051')">

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
    <div id="fix">
    <div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><h2 id="fix_head" >请点击需要维修的构筑物</h2></div>
    <div class="panel-body">
    <p><h3>配合开关闸门的顺序表</h3></p>
    </div>

    <!-- Table -->
    <table id="fix_table" class="table" >
     <thead>
        <td>#</td>
        <td>操作</td>
    </thead>
    <tbody>
        <tr><td>1</td><td>#59全开</td></tr>
        <tr><td>2</td><td>#58全开</td></tr>
        <tr><td>3</td><td>#56关闭</td></tr>
        <tr><td>4</td><td>#23关闭</td></tr>
        <tr><td>5</td><td>新炭池各格进水闸全开</td></tr>
        <tr><td>6</td><td>#19全开</td></tr>
        <tr><td>7</td><td>#23开启一格</td></tr>
        <tr><td>8</td><td>#21开启一格</td></tr>
        <tr><td>9</td><td>#57缓慢关闭</td></tr>
        <tr><td>10</td><td>老炭池2-6#进水闸关闭</td></tr>
    </tbody>
    </table>
    </div>
    </div>
    <jsp:include page="down.jsp" />
</div>

</body>
</html>