<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isErrorPage="true"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>错误</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="refresh" content="16;url=loginMerchant.jsp">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->
<script type="text/javascript">
	function login() {
		window.location = "loginMerchant.jsp";
	}
</script>
</head>
<body>
	<h3>
		出错了:<br> <font color="red"> <%=request.getSession().getAttribute("error")%></font>
		<br>16秒后自动跳转到登录页
	</h3>
	<br>
	<input type="button" onclick="login();" value="登录" />
</body>
</html>
