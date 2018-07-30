<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head lang="en">
    <meta charset="UTF-8">
    <title>商家注册信息</title>
    <link rel="stylesheet" href="css/myCss.css"/>
    <link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/registerLogin.css"/>
    </head>
    <body>
    <div id="merchantReg">
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
    <div class="container container-md">
    <h3>商家注册表</h3>
    <div class="ex goto">已有帐号？  GO<a href="loginHome.html">登录</a></div>
    <form  action="merchantregistServlet" method="post" id="signup">
    <div class="form-group row">
    <div class="col-md-3">
    <span>企业类别</span>
    </div>
    <div class="col-md-9">
    <select name="classify" id="classify" class="form-control">
    <option value="hotel" selected="selected">酒店</option>
    <option value="food">美食</option>
    <option value="shopping">购物</option>
    <option value="entertainment">休闲娱乐</option>
    <option value="travel">周边游</option>
    </select>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>企业名称</span>
    </div>
    <div class="col-md-9">
    <input type="text" class="form-control" name="compName" id="compName" data-rule="minlength:1">
    <div id="compName-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>企业名不能为空</span>
    </div>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>地址</span>
    </div>
    <div class="col-md-9">
    <input type="text" placeholder="省+市+区+地址" class="form-control" name="addre" id="addre" data-rule="maxlength:60|minlength:1">
    <div id="addre-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>地址不能为空(并且不超过60字符)</span>
    </div>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>电话</span>
    </div>
    <div class="col-md-9">
    <input type="text" placeholder="请输入企业的电话号" class="form-control" name="call" id="call"
    data-rule="maxlength:11">
    <div id="call-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>请输入正确的座机号或者手机号</span>
    </div>
    </div>
    </div>
    <div class="form-group row">
    <!-- 需要正则-->
    <div class="col-md-3">
    <span>邮编</span>
    </div>
    <div class="col-md-9">
    <input type="text" class="form-control" name="zipCode" id="zipCode" data-rule='pattern:"^[0-8][0-7][0-9]{4}$"'>
    <div id="zipCode-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>请输入正确的邮编（ex：610000）</span>
    </div>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>星级</span>
    </div>
    <div class="col-md-9">
    <select name="startLevel" id="startLevel" class="form-control">
    <option value="5" selected="selected">五星</option>
    <option value="4">四星</option>
    <option value="3">三星</option>
    <option value="2">二星</option>
    <option value="1">一星</option>
    </select>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>消费积分比例</span>
    </div>
    <div class="col-md-9">
    <select name="prpor" id="prpor" class="form-control">
    <option value="5" selected="selected">5%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    </select>
    </div>
    </div>
    <h5>联系人信息</h5>
    <div class="form-group row">
    <div class="col-md-3">
    <span>姓名</span>
    </div>
    <div class="col-md-9">
    <input type="text" class="form-control" name="pName" id="pName" data-rule="maxlength:5|minlength:2">
    <div id="pName-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>姓名格式有误</span>
    </div>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>性别</span>
    </div>
    <div class="col-md-9">
    <select name="sex" id="sex" class="form-control">
    <option value="male" selected="selected">男</option>
    <option value="female">女</option>
    </select>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>职务</span>
    </div>
    <div class="col-md-9">
    <input type="text" class="form-control" name="job" id="job">
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>电话</span>
    </div>
    <div class="col-md-9">
    <input type="text" class="form-control" name="phone" id="phone" data-rule="required:false|maxlength:8|minlength:7">
    <div id="phone-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>电话长度有误(7-8位）</span>
    </div>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>手机</span>
    </div>
    <div class="col-md-9">
    <input type="text" class="form-control"  name="mob-phone"
    data-rule='pattern:"^1[34578][0-9]{9}$"' id="mob-phone" placeholder="请输入您的手机号（必填）">
    <div id="mob-phone-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>手机格式有误</span>
    </div>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>传真</span>
    </div>
    <div class="col-md-9">
    <input type="text" class="form-control" name="fax" id="fax">
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>Email</span>
    </div>
    <div class="col-md-9">
    <input type="text" class="form-control" name="email" id="email" data-rule="minlength:1">
    <div id="email-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>邮箱格式有误</span>
    </div>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>密码</span>
    </div>
    <div class="col-md-9">
    <input type="password" class="form-control" name="password" id="password" data-rule="maxlength:16|minlength:6" placeholder="设置6到16位的密码"/>
    <div id="password-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>密码长度有误</span>
    </div>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-md-3">
    <span>校验码</span>
    </div>
    <div class="col-md-9">
    <div class="input-group">
    <input type="text" class="form-control"  name="checkCode" id="checkCode" data-rule="length:4">
    <img src="" alt="动态图片"/>
    </div>
    <div id="checkCode-input-check" class="check">
    <span class="text-danger"><i class="icon-remove"></i>请输入校验码(4位)</span>
    </div>
    </div>
    </div>
    <div class="form-group">
    <button class="btn btn-primary btn-block " name="newMerchant-btn" id="newMerchant-btn" type="submit">提交入盟申请</button>
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
