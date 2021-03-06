<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head lang="en">
    <meta charset="UTF-8">
    <title>会员注册</title>
    <link rel="stylesheet" href="css/myCss.css"/>
    <link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
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
        /*如果注册出错,比如用户名重复,则提示出错信息*/
        String registError = (String) request.getSession().getAttribute(
        "registError");
        if (registError != null) {
        %>
    <h3>
    <font color="red"><%=registError%></font>
    </h3>
        <%
        }
        %>
    </center>
    <div class="container container-sm">
    <h3>会员注册</h3>
    <div class="ex goto">已有帐号？  去<a href="loginHome.html">登录</a></div>
    <form action="memberregistServlet" method="post" id="signup">
    <div class="form-group has-success">
    <label>姓名</label>
    <input type="text" class="form-control" name="realName" id="realName" data-rule="maxlength:5|minlength:2"/>
    <div id="realName-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>姓名格式有误（2-5个字符）</span>
    </div>
    </div>
    <div class="form-group">
    <label>昵称</label>
    <input type="text" class="form-control" name="nickName" id="nickName" placeholder="长度不得大于12" data-rule="minlength:1|maxlength:12"/>
    <div id="nickName-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>昵称格式有误</span>
    </div>
    </div>
    <div class="form-group">
    <label>性别</label>
    <select name="sex" id="sex" class="form-control">
    <option value="male" selected="selected">男</option>
    <option value="female">女</option>
    </select>
    <div id="sex-input-check"></div>
    </div>
    <div class="form-group">
    <label>证件类型</label>
    <select name="idtype" id="idtype" class="form-control">
    <option value="1" selected="selected">身份证</option>
    </select>
    </div>
    <div class="form-group">
    <label>证件号码</label>
    <input type="text" class="form-control" name="idNum" id="idNum" data-rule="maxlength:18|minlength:15"/>
    <div id="idNum-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>证件号码有误</span>
    </div>
    </div>
    <div class="form-group">
    <label>生日</label>
    <div class="reRow">
    <input type="text" class="form-control col-3"  id="year" name="year" data-rule="max:2018|min:1800" /><p>年</p>
    <input type="text" class="form-control col-3"  id="month" name="month" data-rule="max:12|min:1"/><p>月</p>
    <input type="text" class="form-control col-3"  id="day" name="day" data-rule="max:31|min:1"/><p>日</p>
    </div>
    <div id="year-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>生日年份格式有误</span>
    </div>
    <div id="month-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>生日月份格式有误</span>
    </div>
    <div id="day-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>生日日期格式有误</span>
    </div>
    </div>
    <div class="form-group">
    <label>地址</label>
    <input type="text" class="form-control" name="addr" id="addr" data-rule="minlength:1"/>
    <div id="addr-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>地址不能为空</span>
    </div>
    </div>
    <div class="form-group">
    <label>email</label>
    <input type="text" class="form-control" name="email" id="email"/>
    <div id="email-input-check"></div>
    </div>
    <div class="form-group">
    <label>密码</label>
    <!-- 需要正则-->
    <input type="password" class="form-control" name="password" id="password" data-rule="maxlength:16|minlength:6" placeholder="设置6到16位的密码"/>
    <div id="password-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>密码长度有误</span>
    </div>
    </div>
    <div class="form-group">
    <button class="btn btn-primary btn-block" name="newMember-btn" id="newMember-btn" type="submit">注册</button>
    </div>
    </form>
    </div>
    <div class="footer">@七彩云</div>
    </div>
    <script src="Jquery/jquery.js"></script>
    <script src="js/validateReg/validator.js"></script>
    <script src="js/validateReg/input.js"></script>
    <script src="js/validateReg/main.js"></script>
    </body>
    </html>
