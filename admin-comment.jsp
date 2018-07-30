<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.ArrayList" 
import="com.qicaiyun.beans.Delete" import="com.qicaiyun.servlets.DeleteServlet1"
import="javax.servlet.ServletException"
import="java.io.IOException"
import="javax.servlet.ServletException"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head lang="en">
    <meta charset="UTF-8">
    <title>管理员--商家评价管理</title>
    <link rel="stylesheet" href="css/myCss.css"/>
    <link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
    <link rel="stylesheet" href="css/admin-main.css"/>
    <link rel="stylesheet" href="css/admin-news.css"/>
    <script type="text/javascript">
    function  toUpdate(obj1, obj2) {
    var review,retn;
    //sId = document.getElementById("jspSID_" + obj1).value;
    review = document.getElementById("review_" + obj1).value;
    //born = document.getElementById("jspBorn_" + obj1).value;
    retn = confirm("确认删除该评价吗?");
    if(retn)
    {          window.location.href= "DeleteServlet1?review=" + review +"&&currentPage=" + obj2;
    }
    }
    </script>
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
    商家评价列表
    </li>
    </div>
    <div class="block">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias assumenda debitis dolor ipsam iusto perspiciatis quis sequi ullam. Autem, culpa debitis id
    nostrum nulla quos tempore vitae! Recusandae, sequi, voluptates.
    </div>
    </div>
    <div class="col-md-10">

        <%
            /*currentPage : 当前页号 ，count ：记录的总数目 ，pageCount ：总页数 ,
            *i ： 数组元素的下标，用于遍历数组元素；
            */
            Integer currentPage = 1, count = 0, pageCount = 1, i = 0;
            ArrayList<com.qicaiyun.beans.Delete> DeleteList=null;
            int id;
            String nickName,compName,review,date;
            %>
    <!--调用FenYeServlet-->
    <form action="DeleteServlet" id="frm" style="display: inline;">
    <div>
    <!--从request中提取值-->
        <%
                    try {
                    //获取当前页号
                    if(!request.getAttribute("currentPage").equals(null)){
                    currentPage = (Integer) request.getAttribute("currentPage");
                    System.out.println(currentPage);
                    }
                    else
                    {
                    %>

        <%
                    }
                    //获取记录总数
                    if(!request.getAttribute("count").equals(null)){
                    count = (Integer) request.getAttribute("count");
                    System.out.println(count);
                    }
                    //获取接收到的request中的学生记录列表
                    if(!request.getAttribute("DeleteList").equals(null)){
                    DeleteList=(java.util.ArrayList<com.qicaiyun.beans.Delete>) request.getAttribute("DeleteList");
                    System.out.println(DeleteList);
                    }
                    if (currentPage.equals(null)) {
                    currentPage = 1;
                    }
                    if (count.equals(null)) {
                    count = 0;
                    }
                    pageCount = count/3+1;
                    %>
    <table width="670" height="100" border="1" cellspacing="0"cellpadding="0">
    <!--表头-->
    <thead align="center">
    <tr>
    <th>用户名称</th>
    <th>商家名称</th>
    <th>评论</th>
    <th>日期</th>
    <th>删除</th>
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
                        //review=(String) request.getSession().getAttribute("review");
                        nickName=DeleteList.get(i).getnickName();
                        compName=DeleteList.get(i).getcompName();
                        review=DeleteList.get(i).getreview();
                        date=DeleteList.get(i).getdate();
                        %>
    <!--显示属性值-->
    <tr>
    <!--  透明的文本框: style="background-color: transparent; border: 0px" -->
    <td><input type="text" Id="nickName_<%=i%>" value="<%=nickName%>"
    width="100" height="30"
    style="background-color: transparent; border: 0px;" /></td>
    <td><input type="text" Id="compName_<%=i%>" value="<%=compName%>"
    width="10" height="10" width="100" height="30"
    style="background-color: transparent; border: 0px;" /></td>
    <td><input type="text" Id="review_<%=i%>" value="<%=review%>"
    width="10" height="10" width="100" height="30"
    style="background-color: transparent; border: 0px;" /></td>
    <td><input type="text" Id="date_<%=i%>" value="<%=date%>"
    width="10" height="10" width="100" height="30"
    style="background-color: transparent; border: 0px;" /></td>
    <td><input type="button" Id="jspButn" value="删除"
    onclick="toUpdate(<%=i%>,<%=currentPage%>);" /></td>
    </tr>

        <%
                        }
                        %>
    </tbody>
    </table>
    <!-- 底部-->
        <%
                    //输出currentPage , count , pageCount , i  ;
                    out.println("currentPage=" + currentPage + ",count=" + count+ ",pageCount=" + pageCount);
                    if (currentPage == 1) {
                    %>
    <span class="unuse">[第一页]</span> <span class="unuse">[上一页]</span>
        <%
                    } else {
                    %>
    <span><a href="DeleteServlet1?currentPage=1">[第一页]</a> </span>
    <span><a href="DeleteServlet1?currentPage=<%=currentPage - 1%>">[上一页]</a> </span>
        <%
                    }
                    }//匹配<!--从request中提取值-->处得try
                    catch (Exception e) {
                    System.err.println(this.getClass() + "发生异常:"
                    + e.getLocalizedMessage());
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
    <span><a href="DeleteServlet1?currentPage=<%=i%>"><%=i%></a>
    </span>
        <%
                    }
                    }
                    %>
        <%
                    if (currentPage == pageCount) {
                    %>
    <span class="unuse">[下一页]</span> <span class="unuse">[最后一页]</span>
        <%
                    } else {
                    %>
    <span><a
    href="DeleteServlet1?currentPage=<%=currentPage + 1%>">[下一页]</a> </span> <span><a
    href="DeleteServlet1?currentPage=<%=pageCount%>">[最后一页]</a> </span>
        <%
                    }
                    %>
    <select ="currentPage">
        <%
                    for (i = 1; i <= pageCount; i++) {
                    %>
    <option value="<%=i%>" >
        <%=i%>
    </option>
        <%
                    }
                    %>
    </select> <input type="submit" Id="jspButn" value="跳转" />
    </div>
    </form>
    </div>
    </div>
    </div>
    <div class="footer"></div>
    <script src="Jquery/jquery.js"></script>
    </body>
    </html>
