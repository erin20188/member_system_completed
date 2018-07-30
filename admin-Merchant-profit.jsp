<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head lang="en">
	<meta charset="UTF-8">
		<% int number=0;
    if(!request.getSession().getAttribute("NumberInSession").equals(null)){
    number = (int)request.getSession().getAttribute("NumberInSession");
    }
    String name=null;
    name =(String)request.getSession().getAttribute("NameInSession");
    %>
	<title>管理员--<%=name%>商家盈利状况</title>
	<link rel="stylesheet" href="css/myCss.css"/>
	<link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
	<link rel="stylesheet" href="css/admin-main.css"/>
	<link rel="stylesheet" href="css/admin-merchant.css"/>
	<script src="js/canvas.js"></script>
	</head>
	<body>
	<div>
	<nav class="navbar navbar-expand-lg navbar-light">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
	data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
	aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-header">
	<img src="img/logo.jpg" alt="" class="navbar-brand"/>
	</div>
	<div class="collapse navbar-collapse" id="navbarNavDropdown">
	<ul class="navbar-nav">
	<li class="nav-item active"><a class="nav-link"
	href="admin-home.html"><i class="icon-home"></i> Home <span
	class="sr-only">(current)</span></a></li>
	<li class="nav-item"><a class="nav-link" href="#">Features</a>
	</li>
	<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
	</ul>
	</div>
	</nav>
	</div>
	<div class="container">
	<div class="content row">
	<div class="col-md-2">
	<div class="nav nav-pills flex-column block">
	<li class="nav-header">
	<div class="admin-header">
	<img src="img/merchant-header-1.jpg" alt="xx商家头像" />

	<div class="admin-title"><%=name%>商家
	</div>
	</div>
	</li> <a href="#"><li class="nav-item" id="score"><i
	class="icon-cogs"></i><span> 设置</span></li></a>
	</div>

	<div class="block">
	<div class="card-info">
	<p class="title">已发放会员卡数量：</p>
	<span id="card-num"><%=number%>张</span>
	</div>
	</div>
	</div>
	<div class="col-md-10">
	<div class="block">
	<p class="title">近期销售额：</p>
	<canvas id="chart" height="400" width="200"> 你的浏览器不支持HTML5
	canvas </canvas>
	</div>
	</div>
	</div>
	<div class="footer"></div>
	<script src="Jquery/jquery.js"></script>
	<script src="js/canvas.js"></script>
	</body>
	</html>
