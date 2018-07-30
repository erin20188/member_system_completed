<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	errorPage="error.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登录成功 </title>
</head>

<body>
	<div align="center">
		<table>
			<tr>
				<td colspan="2">欢迎您,<%=request.getSession().getAttribute("NameInSession")%></td>
			</tr>
			<tr>
				<td><form action="manageragreeservlet" method="post">
						<!-- currentPage是当前页号，初始值设置为第1页-->
						<input type="hidden" name="currentPage" value="1" /> <input
							type="submit" name="jspSubmit" value="确认入盟" maxlength="16" />
					</form></td> 

				
			</tr>
		</table>
	</div>
</body>
</html>
