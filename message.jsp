<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>会员--消息中心</title>
    <link rel="stylesheet" href="css/myCss.css"/>
    <link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/message.css"/>
    <!-- 当小于980px时，为导航栏添加新样式-->
    <link media="(max-width:993px)" href="css/mobile.css" rel="stylesheet"/>
</head>
<body>
<div class="myNav">
    <nav class="navbar navbar-expand-lg navbar-light">
        <button id="menu-toggle" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="nav-wrap clearfix hidden">
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item" id="fist-nav">
                        <a class="nav-link" href="index.jsp"><i class="icon-home"></i> 主页 <span class="sr-only">(current)</span></a>
                    </li>
                    <!--<li class="nav-item">-->
                    <!--<a class="nav-link" href="#">Features</a>-->
                    <!--</li>-->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            帮助中心
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">平台规则</a>
                            <a class="dropdown-item" href="info-member-feedback.jsp">联系客服</a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="collapse navbar-collapse f-left">
                <ul class="navbar-nav">
                    <li class="nav-item" id="face-item">

                        <a href="#" id="face-link">
                            <div class="face" id="face-img">
                                <img src="img/girl.jpeg" alt=""/>
                            </div>
                        </a>
                        <div class="face-bar" id="face-bar">
                            <%
                            String name;String score;
                            name=(String)request.getSession().getAttribute("NameInSession");
                            score=(request.getSession().getAttribute("totalScore").toString());
                            %>
                            <div class="name"><%=name%></div>
                            <div class="score btm-line">
                                <a href="info-member-score.jsp">
                                    <i class="icon-star" style="color: #fee575"></i>
                                    当前会员积分:  <%=score%>
                                </a>
                            </div>
                            <div class="face-menu">
                                <ul class="clearfix">
                                    <li> <a href="info-member.jsp"><i class="icon-user"></i>个人中心</a></li>
                                    <li><a href="#"><i class="icon-check"></i>订单中心</a></li>
                                </ul>
                            </div>
                            <!-- 退出功能待完善-->
                            <div class="quit"><a href="#">退出</a></div>
                        </div>
                    </li>
                    <!-- 手机端-->
                    <li class="nav-item dropdown"id="mobile-face">
                        <a class="nav-link dropdown-toggle" href="#" id="myface" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            我的中心
                        </a>
                        <div class="dropdown-menu" aria-labelledby="myface">
                            <a class="dropdown-item" href="info-member.jsp">个人中心</a>
                            <a class="dropdown-item" href="#">订单中心</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="myIfo" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            消息
                        </a>
                        <div class="dropdown-menu" aria-labelledby="myIfo">
                            <a class="dropdown-item" href="#">回复我的</a>
                            <a class="dropdown-item" href="#">系统通知</a>
                            <a class="dropdown-item" href="#">我的消息</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">收藏夹</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<div class="container container-md">
    <div class="content row">
        <div class="col-md-2 nav nav-pills flex-column">
            <li class="nav-header btm-line">消息中心</li>
            <a href="#" class="active"><li class="nav-item"><i class="icon-circle-blank"></i><span>回复我的</span></li></a>
            <a href="#"><li class="nav-item"><i class="icon-circle-blank"></i><span>系统通知</span></li></a>
            <a href="#"><li class="nav-item"><i class="icon-circle-blank"></i><span>我的消息</span></li></a>
        </div>
        <div class="col-md-10" id="news-list">
        </div>
    </div>
</div>
<div class="footer">@七彩云</div>
<script src="Jquery/jquery.js"></script>
<script src="js/message.js"></script>
<script src="js/nav.js"></script>
</body>
</html>
