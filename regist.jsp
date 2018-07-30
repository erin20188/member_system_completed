<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册页</title>
</head>
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
		<form action="registServlet" method="post">
			<table>
			    <tr>
			        <td align="left">用户类型：</td>
					<td align="left">
					    <select name="usertype" id="usertype">
					        <option value="1">会员</option>
                            <option value="2">商家</option>
                            <option value="3">管理员</option>
                            
          </select>
					    
					</td>
				</tr>
				<tr>
					<td align="left">用户名：</td>
					<td align="left"><input type="text" name="name" size="26" /></td>
				</tr>
				<tr>
					<td align="left">密码:</td>
					<td align="left"><input type="password" name="password"
						size="27" /></td>
				</tr>
				<tr>
					<td align="left">确认密码:</td>
					<td align="left"><input type="password" name="rePassword"
						size="27" /></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="reset" value="重置" /><input
						type="submit" value="注册" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
