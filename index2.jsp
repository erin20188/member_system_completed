<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="css/Normalize.css"/>
    <link rel="stylesheet" href="css/myCss.css"/>
    <link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/index.css"/>
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
                        <a class="nav-link" href="#"><i class="icon-home"></i> 主页 <span class="sr-only">(current)</span></a>
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
                            <a class="dropdown-item" href="message.jsp">回复我的</a>
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
    <div class="header">
        <div class="container clear_float">
            <div class="rcol-2">
                <a href="#"><div class="logo-sm"></div></a>
            </div>
            <div class="rcol-5 search">
                <form action="searchnew" method="post">
                    <input type="text" placeholder="搜索商户名、地址" name="search-bar" id="search-bar">
                    <button type="submit" id="search-btn" name="search-btn"><span class="icon-search"></span>搜索</button>
                </form>
            </div>
            <div class="rcol-3 position">
                <a href="#" id="position" name="position"><span class="icon-circle-arrow-down"></span>成都</a>
            </div>
        </div>
    </div>

    <div class="main_promote">
        <div class="container container-sm main_promote-bc">
            <div class="row">
            <div class="col-md-2 nav nav-pills flex-column">
                    <li class="nav-header"><span> 全部分类</span><i class="icon-reorder" style="float: right;margin-top: 5px"></i></li>
                    <a href="search-hotel.html" id="hotel"><li class="nav-item"><span>酒店</span> </li></a>
                    <a href="search-food.html" id="food"><li class="nav-item"><span>美食</span></li></a>
                    <a href="search-shopping.html" id="shopping"><li class="nav-item"><span>购物</span></li></a>
                    <a href="search-entertain.html" id="entertain"><li class="nav-item"><span>休闲娱乐</span></li></a>
                    <a href="search-travel.html" id="travel"><li class="nav-item"><span>周边游</span></li></a>

                    <a href="search-hotel.html" id="hotel2"><li class="nav-item"><span>酒店</span> </li></a>
                    <a href="search-food.html" id="food2"><li class="nav-item"><span>美食</span></li></a>
                    <a href="search-shopping.html" id="shopping2"><li class="nav-item"><span>购物</span></li></a>
                    <a href="search-entertain.html" id="entertain2"><li class="nav-item"><span>休闲娱乐</span></li></a>
                    <a href="search-travel.html" id="travel2"><li class="nav-item"><span>周边游</span></li></a>
            </div>
            <div class="col-md-8">
                <div class="slider" id="slider">
                    <!--实现图片轮播-->
                    <ol>
                        <li class="active">1</li>
                        <li>2</li>
                        <li>3</li>
                    </ol>
                    <ul>
                        <li><a href="#" onclick="ulrHtml('茶花民宿');"><img src="img/index-2.webp" alt=""/></a></li>
                        <li><a href="#" onclick="ulrHtml('MOHUANG');"><img src="img/index-1.webp" alt=""/></a></li>
                        <li><a href="#" onclick="ulrHtml('厘途');"><img src="img/index-3.jpeg" alt=""/></a></li>
                    </ul>
                </div>
                <div class="sub_promote row">
                    <div class="col-6">
                        <a href="#" onclick="ulrHtml('园里火锅');"><img src="img/index-4.png"></a>
                    </div>
                    <div class="col-6">
                        <a href="#" onclick="ulrHtml('集渔');"> <img src="img/index-5.png"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-2 rSide-bar">
                <div class="user-info btm-line">
                    <div class="user-header">
                        <a href="#"><img src="img/girl.jpeg" alt="xx会员头像"/></a>
                        <div class="user-title">欢迎来到七彩云</div>
                    </div>
                </div>
                <div class="anno">
                    <div class="title">公告：</div>
                    <div class="content">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur aut dignissimos eligendi fugit libero nisi quaerat rerum tenetur. Commodi doloribus dolorum est fugiat nemo quibusdam quidem rem tempore ut veritatis.
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    <p id="top">
        <a href="#top" id="goTop"><i class=" icon-arrow-up"></i>Top</a>
    </p>
    <div class="mycontainer container-sm">
        <div class="block">
            <div class="title">酒店</div>
            <div class="content">
                <ul class="clearfix">
                    <li class="con-item col-md-4">
                        <a href="#" onclick="ulrHtml('Loft古典新中式洋楼');"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#" onclick="ulrHtml('Loft古典新中式洋楼');">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#" onclick="ulrHtml('DUDUSA·画');"><img src="img/hotle-2.webp" alt=""/></a>
                        <div class="desc"><a href="#" onclick="ulrHtml('DUDUSA·画');">DUDUSA·画</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#" onclick="ulrHtml('茶花民宿');"><img src="img/index-2.webp" alt=""/></a>
                        <div class="desc"><a href="#" onclick="ulrHtml('茶花民宿');">茶花民宿</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#" onclick="ulrHtml('AIR');"><img src="img/hotle-3.webp" alt=""/></a>
                        <div class="desc"><a href="#" onclick="ulrHtml('AIR');">AIR【千と千寻の神隠し】</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#" onclick="ulrHtml('MOHUANG');"><img src="img/index-1.webp" alt=""/></a>
                        <div class="desc"><a href="#" onclick="ulrHtml('MOHUANG');">MOHUANG</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#" onclick="ulrHtml('花舍/菠萝');"><img src="img/hotle-4.webp" alt=""/></a>
                        <div class="desc"><a href="#" onclick="ulrHtml('花舍/菠萝');">【花舍/菠萝】</a></div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="block">
            <div class="title">美食</div>
            <div class="content">
                <ul class="clearfix">
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-2.webp" alt=""/></a>
                        <div class="desc"><a href="#">DUDUSA·画</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-2.webp" alt=""/></a>
                        <div class="desc"><a href="#">DUDUSA·画</a></div>
                    </li>

                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="block">
            <div class="title">购物</div>
            <div class="content">
                <ul class="clearfix">
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-2.webp" alt=""/></a>
                        <div class="desc"><a href="#">DUDUSA·画</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-2.webp" alt=""/></a>
                        <div class="desc"><a href="#">DUDUSA·画</a></div>
                    </li>

                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="block">
            <div class="title">休闲娱乐</div>
            <div class="content">
                <ul class="clearfix">
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-2.webp" alt=""/></a>
                        <div class="desc"><a href="#">DUDUSA·画</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-2.webp" alt=""/></a>
                        <div class="desc"><a href="#">DUDUSA·画</a></div>
                    </li>

                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="block">
            <div class="title">周边游</div>
            <div class="content">
                <ul class="clearfix">
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-2.webp" alt=""/></a>
                        <div class="desc"><a href="#">DUDUSA·画</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-2.webp" alt=""/></a>
                        <div class="desc"><a href="#">DUDUSA·画</a></div>
                    </li>

                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                    <li class="con-item col-md-4">
                        <a href="#"><img src="img/hotle-1.webp" alt=""/></a>
                        <div class="desc"><a href="#">Loft古典新中式洋楼</a></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">@七彩云</div>
</div>
<script src="Jquery/jquery.js"></script>
<script src="js/move.js"></script>
<script src="js/index.js"></script>
<script src="js/nav.js"></script>
</body>
</html>
