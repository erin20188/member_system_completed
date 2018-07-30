<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html" %>
<!DOCTYPE html>
    <html>
    <head lang="en">
    <meta charset="UTF-8">
    <title>管理员--消息中心</title>
    <link rel="stylesheet" href="css/myCss.css"/>
    <link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
    <link rel="stylesheet" href="css/admin-main.css"/>
    <link rel="stylesheet" href="css/admin-news.css"/>
    </head>
    <body>
    <div>
    <nav class="navbar navbar-expand-lg navbar-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-header">
    <img src="img/logo.jpg" alt="" class="navbar-brand"/>
    </div>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
    <li class="nav-item active">
    <a class="nav-link" href="admin-home.html">Home <span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="#">Features</a>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="#">Pricing</a>
    </li>
    </ul>
    </div>
    </nav>
    </div>
    <div class="container">
    <div class="content row">
    <div class="col-md-2">
    <div class="nav nav-pills flex-column block">
    <li class="nav-header">
    消息中心
    </li>
    <a href="#"  class="mActive"><li class="nav-item"><i class="icon-user"></i><span> 会员消息</span></li></a>
    <a href="admin-news-2.jsp"> <li class="nav-item" id="info"><i class="icon-shopping-cart"></i><span> 商家消息</span><span class="badge">new</span></li></a>
    </div>
    <div class="block">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias assumenda debitis dolor ipsam iusto perspiciatis quis sequi ullam. Autem, culpa debitis id
    nostrum nulla quos tempore vitae! Recusandae, sequi, voluptates.
    </div>
    </div>
    <div class="col-md-10" id="message-list">
    </div>
    </div>
    </div>
    <div class="footer"></div>
    <script src="Jquery/jquery.js"></script>
    <script src="js/admin-news.js"></script>
    <script src="js/admin-news-ajax.js"></script>
    </body>
    </html>
