<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
    <html>
    <head lang="en">
    <meta charset="UTF-8">
    <title>商家登录</title>
    <link rel="stylesheet" href="css/myCss.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/registerLogin.css"/>
    </head>
    <body>
    <div>
    <div class="nav">
    <div class="logoName">七彩云</div>
    </div>

    <center>
        <%
        /*如果登录出错,比如用户名和(或)密码不对,则提示出错信息*/
        String loginError = (String) request.getSession().getAttribute(
        "loginError");
        if (loginError != null) {
        %>
    <h3>
    <font color="red"><%=loginError%></font>
    </h3>
        <%
        }

        %>
    </center>
    <div class="container container-sm">
    <h3>商家登录</h3>
    <form action="merchantLoginServlet" id="loginMember" method="post">
    <div class="form-group">
    <label>用户名</label>
    <input type="text" class="form-control" name="username"/>
    </div>
    <div class="form-group">
    <label>密码</label>
    <input type="password" class="form-control" name="password"/>
    </div>
    <div class="form-group">
    <button class="btn btn-primary btn-block">登录</button>
    </div>
    <div class="form-group">
    <a href="#">忘记密码？</a>
    <div class="float-right">没有账号？<a href="<%=request.getContextPath()%>/registerMerchant.jsp">注册</a></div>
    </div>
    </form>
    </div>
    <div class="footer">@七彩云</div>
    </div>
    <script src="Jquery/jquery.js"></script>
    <script src="js/login.js"></script>
    </body>
    </html>

