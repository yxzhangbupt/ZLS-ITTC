<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="highcharts/highcharts.js" type="text/javascript"></script>
<script src="highcharts/exporting.src.js" type="text/javascript"></script>
<script src="highcharts/themes/grid.js" type="text/javascript"></script>
<script type="text/javascript" src="js/prehImage.js"></script>
<title>水位分析图</title>
</head>
<body>
<center>
<br>
	<button id="showSpline" onclick="javascript:showSpline()" style="width:200px;height:25px;font-size:16px">柱状图/折线图/混合图</button>

<br><br>
	<div id="imageContainer" style="max-width:1000px;height:600px;" ></div><br>
	
</center>
</body>
</html>