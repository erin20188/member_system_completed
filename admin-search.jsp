<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head lang="en">
    <meta charset="UTF-8">
    <title>管理员--经营--搜索商家</title>
    <link rel="stylesheet" href="css/myCss.css"/>
    <link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
    <link rel="stylesheet" href="css/admin-main.css"/>
    <link rel="stylesheet" href="css/admin-search.css"/>
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
    搜索商家
    </li>
    </div>
    <div class="block">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias assumenda debitis dolor ipsam iusto perspiciatis quis sequi ullam. Autem, culpa debitis id
    nostrum nulla quos tempore vitae! Recusandae, sequi, voluptates.
    </div>
    <div class="block">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias assumenda debitis dolor ipsam iusto perspiciatis quis sequi ullam. Autem, culpa debitis id
    nostrum nulla quos tempore vitae! Recusandae, sequi, voluptates.
    </div>
    </div>
    <div class="col-md-10">
    <div class="block search">
    <form action="merchantservlet" method="post">
    <div class="clearfix">
    <input type="text" placeholder="搜索商户名" name="search-bar" id="search-bar">
    <button type="submit" id="search-btn" name="search-btn"><span class="icon-search"></span>搜索</button>
    </div>
    </form>
    </div>
    </div>
    </div>
    </div>
    <div class="footer"></div>
    </body>
    </html>
