<%@page contentType="text/html" import="java.util.ArrayList"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>确认商家入盟</title>
<script type="text/javascript">
  function  toUpdate(obj1, obj2) {
      var name,retn;
      //sId = document.getElementById("jspSID_" + obj1).value;
      name = document.getElementById("jspcompName_" + obj1).value;
      //born = document.getElementById("jspBorn_" + obj1).value;
      retn = confirm("确认商家入盟吗?");
        if(retn)
        {          window.location = "comfirmmerchantServlet?name=" + name +"&&currentPage=" + obj2;
        }
      }

</script>
</head>
<body>
	<%
		/*currentPage : 当前页号 ，count ：记录的总数目 ，pageCount ：总页数 ,
		 *i ： 数组元素的下标，用于遍历数组元素；
		 */
		Integer currentPage = 1, count = 0, pageCount = 1, i = 0;
		ArrayList<com.qicaiyun.beans.Merchant> jspStudentList = null;
		String classify,addre,compName,phonenumber,startLevel,prpor;
	%>
	<!--调用FenYeServlet-->
	<form action="manageragreeservlet" id="frm" style="display: inline;">
		<div>
			<!--从request中提取值-->
			<%
				try {
							//获取当前页号
							currentPage = (Integer) request.getAttribute("currentPage");
							//获取记录总数
							count = (Integer) request.getAttribute("count");
							//获取接收到的request中的学生记录列表
							jspStudentList = (java.util.ArrayList<com.qicaiyun.beans.Merchant>) request
									.getAttribute("MerchantList");
							if (currentPage.equals(null)) {
								currentPage = 1;
							}
							if (count.equals(null)) {
								count = 0;
							}
							pageCount = count / 3 + 1;
			%>
			<table width="670" height="100" border="1" cellspacing="0"
				cellpadding="0" bgcolor="white">
				<!--表头-->
				<thead align="center">
					<tr>
						<th>行业类别</th>
						<th>地址</th>
						<th>公司名称</th>
						<th>电话</th>
						<th>星级</th>
						<th>比例</th>
						<th>确认</th>
					</tr>
				</thead>
				<tbody>
					<!--提取数组元素属性值-->
					<%
						//提取数组元素;第一个数组元素的下标是零,最后一个元素的下标是 (count - 1)
							for (i = (currentPage - 1) * 3; i < currentPage * 3; i++) {
								if (i > (count - 1)) {
									break;
								}
								//提取数组元素的属性值；jspStudentList.get(i)提取第i+1个元素
								 classify=jspStudentList.get(i).getClassify();
								 addre=jspStudentList.get(i).getAddr();
								 compName=jspStudentList.get(i). getCompName();
								 phonenumber=jspStudentList.get(i).getPhonenumber();
								 startLevel=jspStudentList.get(i).getStartLevel();
								 prpor=jspStudentList.get(i).getPrpor();
								
					%>
					<!--显示属性值-->
					<tr>
						<!-- 透明的文本框: style="background-color: transparent; border: 0px"-->
						<td><input type="text" id="jspclassify_<%=i%>" value="<%=classify%>"
							disabled width="100" height="30"
							style="background-color: transparent; border: 0px;" /></td>
						<td><input type="text" id="jspaddre_<%=i%>" value="<%=addre%>"
							width="100" height="30"
							style="background-color: transparent; border: 0px;" /></td>
						<td><input type="text" id="jspcompName_<%=i%>" value="<%=compName%>"
							width="10" height="10" width="100" height="30"
							style="background-color: transparent; border: 0px;" /></td>
						<td><input type="text" id="jspphonenumber_<%=i%>" value="<%=phonenumber%>"
							width="10" height="10" width="100" height="30"
							style="background-color: transparent; border: 0px;" /></td>
						<td><input type="text" id="jspstartLevel_<%=i%>" value="<%=startLevel%>"
							width="10" height="10" width="100" height="30"
							style="background-color: transparent; border: 0px;" /></td>
								<td><input type="text" id="jsppprpor_<%=i%>" value="<%=prpor%>"
							width="10" height="10" width="100" height="30"
							style="background-color: transparent; border: 0px;" /></td>
							
							<td><input type="button" name="comfirm" value="确认"
							onclick="toUpdate(<%=i%>,<%=currentPage%>);" ></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<!-- 底部-->
			<%
				//输出currentPage , count , pageCount , i  ;
					out.println("currentPage=" + currentPage + ",count=" + count
							+ ",pageCount=" + pageCount);
					if (currentPage == 1) {
			%>
			<span class="unuse">[First]</span> <span class="unuse">[L]</span>
			<%
				} else {
			%>
			<span><a href="manageragreeservlet?currentPage=1">[First]</a> </span> 
			<span><a href="manageragreeservlet?currentPage=<%=currentPage - 1%>">[L]</a> </span>
			<%
				}
				}//匹配<!--从request中提取值-->处得try
				catch (Exception e) {
					System.err.println(this.getClass() + "发生异常:"
							+ e.getLocalizedMessage());
					e.printStackTrace();
					throw new Exception(this.getClass() + "发生异常.");
				}
			%>
			<%
				for (i = 1; i <= pageCount; i++) {
					if (i == currentPage) {
			%>
			<span class="currentPage"><%=i%></span>
			<%
				} else {
			%>
			<span><a href="manageragreeservlet?currentPage=<%=i%>"><%=i%></a>
			</span>
			<%
				}
				}
			%>
			<%
				if (currentPage == pageCount) {
			%>
			<span class="unuse">[>]</span> <span class="unuse">[FINAL]</span>
			<%
				} else {
			%>
			<span><a
				href="manageragreeservlet?currentPage=<%=currentPage + 1%>">[>]</a> </span> <span><a
				href="manageragreeservlet?currentPage=<%=pageCount%>">[FINAL]</a> </span>
			<%
				}
			%>
			<select name="currentPage">
				<%
					for (i = 1; i <= pageCount; i++) {
				%>
				<option value="<%=i%>" >
					<%=i%>
				</option>
				<%
					}
				%>
			 
		</div>
	</form>
</body>
</html>
