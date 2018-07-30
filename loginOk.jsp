<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	errorPage="error.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商家中心</title>
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/info.css"/>
</head>

<body>
<center>
	    <%			
			String modifyPasswordSession = (String) request.getSession().getAttribute(
					"modifyPasswordSession");
			if (modifyPasswordSession != null) {
		%>
		<h3>
			<font color="red"><%=modifyPasswordSession%></font>
		</h3>
		<%
			}
		%>
</center>
	
</body>
<div class="navbar">导航栏....</div>
<h3>欢迎您,${NameInSession}</h3>
<div class="container container-md">
    <div class="row">
        <div class="col-md-2 nav nav-pills flex-column">
            <li class="nav-header">个人中心</li>
            <a href="#"><li class="nav-item" id="home"><i class="icon-home"></i><span>首页</span></li></a>
            <a href="#"><li class="nav-item" id="score"><i class="icon-gift"></i><span>会员积分</span></li></a>
            <a href="#"> <li class="nav-item" id="info"><i class="icon-info"></i><span>我的信息</span></li></a>
            <a href="#"><li class="nav-item" id="rePassword"><i class="icon-lock"></i><span>修改密码</span></li></a>
            <a href="#"><li class="nav-item" id="comment"><i class="icon-comments-alt"></i><span>我的评价</span></li></a>
            <a href="#"><li class="nav-item" id="feedback"><i class=" icon-edit"></i><span>意见反馈</span></li></a>
        </div>
        <div class="col-md-10">
            <div id="homePage">首页，待写。。。。</div>
            <div id="scorePage">
                <div class="title btm-line">会员积分</div>
                <div class="scoreInfo btm-line">
                    当前会员积分：<span></span>
                </div>
                <div class="scoreRecord btm-line">
                    <span class="title2">积分消费记录</span>
                    <table class="table">
                        <thead></thead>
                    </table>
                </div>
            </div>
            <div id="infoPage">
                <div class="title btm-line">我的信息</div>
                <div class="box">
                    <form action="reInfoServ" method="post">
                        <div class="form-group">
                            <label>昵称</label>
                            <input type="text" class="form-control" name="nickName" id="nickName" value="${后台昵称参数名}"/>
                            <div id="nickName-input-check"></div>
                        </div>
                        <div class="form-group">
                            <label>性别</label>
                            <select name="sex" id="sex" class="form-control">
                                <option value="male">男</option>
                                <option value="female">女</option>
                            </select>
                            <div id="sex-input-check">!!待写入后台传入的值</div>
                        </div>
                        <div class="form-group">
                            <label>生日</label>
                            <div class="reRow">
                                <input type="text" class="form-control col-3"  id="year" name="year" value="${后台年份参数名}" /><p>年</p>
                                <input type="text" class="form-control col-3"  id="month" name="month" value="${后台月份参数名}" /><p>月</p>
                                <input type="text" class="form-control col-3"  id="day" name="day" value="${后台日期参数名}" /><p>日</p>
                            </div>
                            <div id="birth-input-check"></div>
                        </div>
                        <div class="form-group">
                            <label>地址</label>
                            <input type="text" class="form-control" name="addr" id="addr" value="${后台地址参数名}"/>
                            <div id="addr-input-check"></div>
                        </div>
                        <div class="form-group">
                            <label>email</label>
                            <input type="text" class="form-control" name="email" id="email" value="${后台email参数名}"/>
                            <div id="email-input-check"></div>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary btn-block" name="reInfo-btn" id="reInfo-btn">修改信息</button>
                        </div>
                    </form>
                </div>
            </div>
            <div id="rePasswordPage">
                <div class="title btm-line">修改密码</div>
                <div class="box">
                <form action="modifypasswordServlet" method="post">
                    <div class="form-group">
                        <label>原密码</label>
                        <input type="password" class="form-control" name="oldPwd" id="password"/>
                    </div>
                    <div class="form-group">
                        <label>新密码</label>
                        <input type="password" class="form-control" name="newPwd" id="newpassword" placeholder="设置6到16位的密码"/>
                    </div>
                    <div class="form-group">
                        <label>确认密码</label>
                        <input type="password" class="form-control" name="checkPwd" id="confirmPassword"/>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary btn-block" name="rePassword-btn" id="rePassword-btn">修改密码</button>
                    </div>
                </form>
                </div>
            </div>
            <div id="commentPage"></div>
            <div id="feedbackPage"></div>
        </div>
    </div>
</div>
<div class="footer">@七彩云
</div>
<script src="Jquery/jquery.js"></script>
<script src="js/info-member.js"></script>
</body>
</html>
</html>
