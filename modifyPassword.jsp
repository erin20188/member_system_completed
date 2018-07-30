<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>修改密码</title>
        <meta charset="utf-8">
        <link type="text/css" rel="stylesheet" href="Bootstrap/css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css">
        <link type="text/css" rel="stylesheet" href="indie-mcenter.css">
</head>
<script src="/Jquery/jquery.js"></script>
<script type="text/javascript" src="mcenter.js"></script>
<body>
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
            <div class="row">
                <div class="col-md-2 nav nav-pills flex-column">
                    <li class="nav-header">个人中心</li>
                    <li class="nav-item" id="mcent-home"><a href="#"><i class="icon-home"></i><span>首页</span></a></li>
                    <li class="nav-item" id="mcent-info"><a href="#"><i class="icon-info"></i><span>商家信息</span></a></li>
                    <li class="nav-item" id="mcent-picture"><a href="#"><i class="icon-picture"></i><span>图片展示</span></a></li>
                    <li class="nav-item" id="mcent-product"><a href="#"><i class="icon-suitcase"></i><span>产品资料</span></a></li>
                    <li class="nav-item" id="mcent-event"><a href="#"><i class="icon-calendar"></i><span>活动设置</span></a></li>
                    <li class="nav-item" id="mcent-password"><a href="#"><i class="icon-key"></i><span>修改密码</span></a></li>
                    <li class="nav-item last-item" id="mcent-review"><a href="#"><i class="icon-pencil"></i><span>意见反馈</span></a></li>
                </div>
                <div id="mContent" class="col-md-10">
                    <div id="mHomepage" class="page-block">
                        <div class="home-head"></div>
                    </div>
                    <div id="mInfopage" class="page-block"></div>
                    <div id="mPicpage" class="page-block"></div>
                    <div id="mProductpage" class="page-block"></div>
                    <div id="mEventpage" class="page-block"></div>
                    <div id="mPwdpage" class="page-block">
                      <form action="modifyPasswordServlet" method="post">
                        <div class="pwd-block">
                            <div class="pwd-item">原密码</div>
                            <input id="oldPwd" name="oldPwd" class="pwd-input">
                        </div>
                        <div class="pwd-block">
                            <div class="pwd-item">新密码</div>
                            <input id="newPwd" name="newPwd" class="pwd-input">
                        </div>
                        <div class="pwd-block">
                            <div class="pwd-item">确认密码</div>
                            <input id="checkPwd" name="checkPwd" class="pwd-input">
                        </div>
                        <div class="pwd-button">
                            <button id="pwd-ok">提交</button>
                        </div>
                        
                      </form>
                    </div>
                    <div id="mReviewpage" class="page-block"></div>
                </div>
            </div>
        </div>
</body>
</html>
