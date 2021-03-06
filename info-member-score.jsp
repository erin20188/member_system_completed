<%@ page language="java" import="java.util.*,java.util.ArrayList" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head lang="en">
    <meta charset="UTF-8">
    <title>会员个人中心--会员积分-记录</title>
    <link rel="stylesheet" href="css/myCss.css"/>
    <link rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/info.css"/>
    <link media="(max-width:993px)" href="css/mobile.css" rel="stylesheet"/>
    <script type="text/javascript">
    function  toUpdate1() {
    window.location.href = "ScoreRedeemServlet?giftScore=" +30;
    }
    function  toUpdate2(obj1) {
    window.location.href = "ScoreRedeemServlet?giftScore=" + obj1;
    }
    function  toUpdate3(obj1) {
    window.location.href = "ScoreRedeemServlet?giftScore=" + obj1;
    }
    function  toUpdate4(obj1) {
    window.location.href = "ScoreRedeemServlet?giftScore=" + obj1;
    }
    </script>
    </head>
    <body>
    <div class="myNav">
    <nav class="navbar navbar-expand-lg navbar-light">
    <button id="menu-toggle" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="nav-wrap clearfix hidden">
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
    <li class="nav-item" id="fist-nav">
    <a class="nav-link" href="index.jsp"><i class="icon-home"></i> 主页 <span class="sr-only">(current)</span></a>
    </li>
    <!--<li class="nav-item">-->
    <!--<a class="nav-link" href="#">Features</a>-->
    <!--</li>-->
    <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    帮助中心
    </a>
    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
    <a class="dropdown-item" href="#">平台规则</a>
    <a class="dropdown-item" href="info-member-feedback.jsp">联系客服</a>
    </div>
    </li>
    </ul>
    </div>
    <div class="collapse navbar-collapse f-left">
    <ul class="navbar-nav">
    <li class="nav-item" id="face-item">

    <a href="#" id="face-link">
    <div class="face" id="face-img">
    <img src="img/girl.jpeg" alt=""/>
    </div>
    </a>
    <div class="face-bar" id="face-bar">
        <%
                            String name;String score;
                            name=(String)request.getSession().getAttribute("NameInSession");
                            score=(request.getSession().getAttribute("totalScore").toString());
                            %>
    <div class="name"><%=name%></div>
    <div class="score btm-line">
    <a href="info-member-score.jsp">
    <i class="icon-star" style="color: #fee575"></i>
    当前会员积分:  <%=score%>
    </a>
    </div>
    <div class="face-menu">
    <ul class="clearfix">
    <li> <a href="info-member.jsp"><i class="icon-user"></i>个人中心</a></li>
    <li><a href="#"><i class="icon-check"></i>订单中心</a></li>
    </ul>
    </div>
    <!-- 退出功能待完善-->
    <div class="quit"><a href="#">退出</a></div>
    </div>
    </li>
    <!-- 手机端-->
    <li class="nav-item dropdown"id="mobile-face">
    <a class="nav-link dropdown-toggle" href="#" id="myface" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    我的中心
    </a>
    <div class="dropdown-menu" aria-labelledby="myface">
    <a class="dropdown-item" href="info-member.jsp">个人中心</a>
    <a class="dropdown-item" href="#">订单中心</a>
    </div>
    </li>

    <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="myIfo" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    消息
    </a>
    <div class="dropdown-menu" aria-labelledby="myIfo">
    <a class="dropdown-item" href="message.jsp">回复我的</a>
    <a class="dropdown-item" href="#">系统通知</a>
    <a class="dropdown-item" href="#">我的消息</a>
    </div>
    </li>
    <li class="nav-item">
    <a href="#" class="nav-link">收藏夹</a>
    </li>
    </ul>
    </div>
    </div>
    </nav>
    </div>
    <div class="container container-md">
    <div class="row">
    <div class="col-md-2 nav nav-pills flex-column">
    <li class="nav-header btm-line">个人中心</li>
    <a href="info-member.jsp"><li class="nav-item" id="home"><i class="icon-home"></i><span>首页</span></li></a>
    <a href="#" class="active"><li class="nav-item" id="score"><i class="icon-gift"></i><span>会员积分</span></li></a>
    <a href="info-member-info.jsp"> <li class="nav-item" id="info"><i class="icon-info"></i><span>我的信息</span></li></a>
    <a href="info-member-rePassword.jsp"><li class="nav-item" id="rePassword"><i class="icon-lock"></i><span>修改密码</span></li></a>
    <a href="info-member-comment.jsp"><li class="nav-item" id="comment"><i class="icon-comments-alt"></i><span>我的评价</span></li></a>
    <a href="info-member-feedback.jsp"><li class="nav-item" id="feedback"><i class=" icon-edit"></i><span>意见反馈</span></li></a>
    </div>
    <div class="col-md-10">
    <div id="scorePage">
    <div class="title btm-line">会员积分</div>
    <div class="scoreInfo btm-line">
    <div class="title2">当前会员积分：
    <span id="scoreNum" class="badge">
        <%
                         int totalScore;
                         if(request.getAttribute("totalScore")==null){
                         %>
    <jsp:forward page="/ScoreServlet"/>
        <%} %>

        <%=request.getAttribute("totalScore")%>
    </span>
    </div>
    </div>
    <div class="scoreChange btm-line">
    <div class="title2">积分兑换礼品：</div>
    <form action="ScoreRedeemServlet" method="post">
    <div class="gift-list row" id="gift-list">
    <div class="col-3">
    <div class="gift-item" id="1">
    <img src="img/gift-1.png" alt="礼物1"/>
    <div class="gift-title">礼物1</div>
    </div>
    <div class="getGift">
    <input type="button" class="btn btn-sm btn-gift" id="gift-btn-1"
    type="submit" name="gift-btn-1" onclick="toUpdate1();"
    value="30兑换" />
    </div>
    </div>
    <div class="col-3">
    <div class="gift-item" id="2">
    <img src="img/gift-2.png" alt="礼物2"/>
    <div class="gift-title">礼物2</div>
    </div>
    <div class="getGift">
    <input type="button" class="btn btn-sm btn-gift" id="gift-btn-2" name="gift-btn-2"
    type="submit" onclick="toUpdate2(<%=40%>);" value="40兑换">
    </div>
    </div>
    <div class="col-3">
    <div class="gift-item" id="3">
    <img src="img/gift-3.png" alt="礼物3"/>
    <div class="gift-title">礼物3</div>
    </div>
    <div class="getGift">
    <input type="button" class="btn btn-sm btn-gift" id="gift-btn-3" type="submit"
    name="gift-btn-3" onclick="toUpdate3(<%=400%>);" value="400兑换">
    </div>
    </div>
    <div class="col-3">
    <div class="gift-item" id="4">
    <img src="img/gift-4.png" alt="礼物4"/>
    <div class="gift-title">礼物4</div>
    </div>
    <div class="getGift">
    <input type="button" class="btn btn-sm btn-gift" id="gift-btn-4" type="submit"
    name="gift-btn-4" onclick="toUpdate4(<%=20%>);" value="20兑换">
    </div>
    </div>
    </div>
    </form>
    </div>
    <div class="scoreRecord btm-line">
    <div class="title2">积分消费记录:</div>
        <%
                    Integer currentPage = 1, count = 0, pageCount = 1, i = 0;
                    ArrayList<com.qicaiyun.beans.Score> ScoreList = null;
                    String  reason, compName,time;

                    int number;
                    %>
    <div>
        <%
                        try {
                        currentPage = (Integer) request.getAttribute("currentPage");

                        count = (Integer) request.getAttribute("count");
                        //获取接收到的request中的记录列表-->
                        ScoreList=(java.util.ArrayList<com.qicaiyun.beans.Score>) request.getAttribute("ScoreList");
                        if (currentPage.equals(null)) {
                        currentPage = 1;
                        }
                        if (count.equals(null)) {
                        count = 0;
                        }
                        pageCount = count / 5 + 1;//此处需要改进,用求余的办法;每页显示3条记录，计算总页数-->
                        %>
    <table class="table">
    <thead class="thead-light">
    <tr>
    <th>变动时间</th>
    <th>积分变化</th>
    <th>原因</th>
    <th>商家</th>
    </tr>
    </thead>
    <tbody>
    <!--提取数组元素属性值-->
        <%  //提取数组元素;第一个数组元素的下标是零,最后一个元素的下标是 (count - 1)
                            for (i = (currentPage - 1) * 5; i < currentPage * 5; i++) {
                            if (i > (count - 1)) {
                            break;
                            }
                            //提取数组元素的属性值；jspStudentList.get(i)提取第i+1个元素
                            time=ScoreList.get(i).getTime();
                            number=ScoreList.get(i).getNumber();
                            reason=ScoreList.get(i).getReason();
                            compName=ScoreList.get(i).getCompName();
                            %>
    <!--显示属性值-->
    <tr>
    <!-- 透明的文本框: style="background-color: transparent; border: 0px"-->
    <td id="jspTime_<%=i%>"><%=time%></td>
    <td id="jspNumber_<%=i%>"><%=number%></td>
    <td id="jspReason_<%=i%>"><%=reason%></td>
    <td id="jspCompName_<%=i%>"><%=compName%></td>
    </tr>
        <%
                            }
                            %>
    </tbody>
    </table>

        <%
                        //输出currentPage , count , pageCount , i  ;
                        // out.println("currentPage=" + currentPage + ",count=" + count
                        //+ ",pageCount=" + pageCount);
                        if (currentPage == 1) {
                        %>
    <span class="unuse">[第一页]</span> <span class="unuse">[上一页]</span>
        <%
                        } else {
                        %>
    <span><a href="ScoreServlet?currentPage=1">[第一页]</a> </span>
    <span><a href="ScoreServlet?currentPage=<%=currentPage - 1%>">[上一页]</a> </span>
        <%
                        }
                        }//匹配&lt;!&ndash;从request中提取值&ndash;&gt;处得try
                        catch (Exception e) {
                        //e.printStackTrace();
                        System.err.println(this.getClass() + "发生异常:"+ e.getLocalizedMessage());
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
    <span><a href="ScoreServlet?currentPage=<%=i%>"><%=i%></a>
    </span>
        <%
                        }
                        }

                        if (currentPage == pageCount) {
                        %>
    <span class="unuse">[下一页]</span> <span class="unuse">[最后一页]</span>
        <%
                        } else {
                        %>
    <span><a
    href="ScoreServlet?currentPage=<%=currentPage + 1%>">[下一页]</a> </span> <span><a
    href="ScoreServlet?currentPage=<%=pageCount%>">[最后一页]</a> </span>
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
    </select> <input type="submit" name="jspGo" value="跳转" />
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="footer">@七彩云
    </div>
    <script src="Jquery/jquery.js"></script>
    <script src="js/nav.js"></script>
    </body>
    </html>