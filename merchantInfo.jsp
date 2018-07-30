<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,com.qicaiyun.dao.ConnectMySql"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商家中心</title>
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.css"/>
    <link type="text/css" rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css">
    <!-- <link type="text/css" rel="stylesheet" href="css/bootstrap-table.css"> -->
    <link type="text/css" rel="stylesheet" href="css/merchant-center.css">
    <link type="text/css" rel="stylesheet" href="css/merchant-center-template.css">
</head>
<body>
<div class="container container-mcenter">
    <div class="row">
        <div class="col-l nav nav-pills flex-column">
            <li class="nav-header">商家中心
                <a href="#"><li class="nav-item" id="mcent-home"><i class="icon-home"></i><span>首页</span></li></a>
                <a href="#"><li class="nav-item" id="mcent-info"><i class="icon-info"></i><span>商家信息</span></li></a>
                <a href="#"><li class="nav-item" id="mcent-picture"><i class="icon-picture"></i><span>图片展示</span></li></a>
                <a href="#"><li class="nav-item" id="mcent-product"><i class="icon-suitcase"></i><span>产品资料</span></li></a>
                <a href="#"><li class="nav-item" id="mcent-event"><i class="icon-calendar"></i><span>活动设置</span></li></a>
                <a href="#"><li class="nav-item" id="mcent-password"><i class="icon-key"></i><span>修改密码</span></li></a>
                <a href="#"><li class="nav-item" id="mcent-review"><i class="icon-pencil"></i><span>意见反馈</span></li></a>
            </li>
        </div>
           <%
           String  compName=(String)request.getSession().getAttribute("NameInSession");
           String i=null;
           String x=null;
           Connection RegistServletConn;
           String sql,sql1;      
           PreparedStatement pst,pst1;
           RegistServletConn = ConnectMySql.getConn();
           sql="select * from merchant where compName=?";  
           
           pst=RegistServletConn.prepareStatement(sql);           
           pst.setString(1, compName);  
           sql1="commit";
           pst1=RegistServletConn.prepareStatement(sql1);   
           ResultSet rs=pst.executeQuery();
           if(rs.next()){  
          if(rs.getString("startLevel").equals("3")){
        	   i="三星";
          }else if(rs.getString("startLevel").equals("1")){
        	  i="一星";
          }else if(rs.getString("startLevel").equals("2")){
        	  i="二星";
          }else if(rs.getString("startLevel").equals("4")){
        	  i="四星";
          }else if(rs.getString("startLevel").equals("5")){
        	  i="五星";
          }         
          if( rs.getDouble("prpor")==0.05){
        	  x="5%";
          }else if( rs.getDouble("prpor")==0.1){
        	  x="10%";
          }else if( rs.getDouble("prpor")==0.2){
        	  x="20%";
          }else if( rs.getDouble("prpor")==0.3){
        	  x="30%";
          }else if( rs.getDouble("prpor")==0.4){
        	  x="40%";
          }else if( rs.getDouble("prpor")==0.5){
        	  x="50%";
          }
           %>
                  
                                    <div class="box">
                                        <form action="merchantInfoServlet" method="post">                                           
                                        <input type=hidden name="compName" id="compName"  value="${compName}">
                  <div class="col-md-9">
                   <div class="col-md-3">
                    <span>企业类型</span>
                </div>
                   <input type="text" value="<%=rs.getString("classify") %>"  class="form-control" name="classify" id="classify" >
                 <%--   <input type="text" value="<%=rs.getString("classify") %>"  class="form-control" name="classify" id="classify" disabled="true" > --%>
                </div>
            <div class="form-group row">
                <div class="col-md-3">
                    <span>企业名称</span>
                </div>
                <div class="col-md-9">
                    <input type="text" value="<%=rs.getString("compName") %>"  class="form-control" name="compName1" id="compName1" >
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3">
                    <span>地址</span>
                </div>
                <div class="col-md-9">
                    <input type="text" placeholder="省+市+区+地址" class="form-control" value="<%=rs.getString("addre") %>" name="addre" id="addre">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3">
                     <span>电话</span>
                </div>
                <div class="col-md-9">
                     <input type="text"   class="form-control" name="call" id="call" value="<%=rs.getString("phonenumber") %>">
                </div>
            </div>
            <div class="form-group row">
                <!-- 需要正则-->
                <div class="col-md-3">
                    <span>邮编</span>
                </div>
                <div class="col-md-9">
                    <input type="text" class="form-control" value="<%=rs.getString("zipCode") %>" name="zipCode" id="zipCode">
                </div>
            </div>
            
         
            <div class="form-group row">
                <div class="col-md-3">
                    <span>星级</span>
                </div>
                <div class="col-md-9">
                    <select name="startLevel"    id="startLevel"  class="form-control" >            
                        <option value="<%=rs.getString("startLevel") %>"><%=i %></option>
                        <option value="1">一星</option>
                        <option value="2">二星</option>
                        <option value="3">三星</option>
                        <option value="4">四星</option>
                        <option value="5">五星</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3">
                <span>消费积分比例</span>
                </div>
                <div class="col-md-9">
                <select name="prpor" id="prpor" class="form-control">
                    <option value="<%= rs.getDouble("prpor") %>"><%=x %></option>
                    <option value="0.05">5%</option>
                    <option value="0.1">10%</option>
                    <option value="0.2">20%</option>
                    <option value="0.3">30%</option>
                    <option value="0.4">40%</option>
                    <option value="0.5">50%</option>
                </select>
                </div>
            </div>
            <h5>联系人信息</h5>
            <div class="form-group row">
                <div class="col-md-3">
                <span>姓名</span>
                </div>
                <div class="col-md-9">
                <input type="text" class="form-control" name="pName" id="pName" value="<%=rs.getString("Pname") %>">
                </div>
            </div>
           
            <div class="form-group row">
                <div class="col-md-3">
                <span>性别</span>
                </div>
                <div class="col-md-9">      
                <select name="sex" id="sex"  class="form-control" >
                    <option value="<%=rs.getString("sex") %>"><%=rs.getString("sex") %></option>
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3">
                <span>职务</span>
                </div>
                <div class="col-md-9">
                <input type="text" class="form-control" name="job" id="job" value="<%=rs.getString("job") %>">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3">
                <span>电话</span>
                </div>
                <div class="col-md-9">
                <input type="text" class="form-control" name="phone" id="phone" value="<%=rs.getString("phone") %>">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3">
                <span>手机</span>
                </div>
                <div class="col-md-9">
                <input type="text" class="form-control"  name="mob-phone" id="mob-phone" value="<%=rs.getString("mobphone") %>">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3">
                <span>传真</span>
                </div>
                <div class="col-md-9">
                <input type="text" class="form-control" name=" fax" id=" fax" value="<%=rs.getString("fax") %>">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-3">
                <span>Email</span>
                </div>
                <div class="col-md-9">
                <input type="text" class="form-control" name="email" id="email" value="<%=rs.getString("email") %>">
                </div>
            </div>
            
                                         <div class="form-group">
                         <button class="btn btn-primary btn-block" name="review-btn" id="review-btn">修改</button>
             </div>
                  </form>                                                                                          
             </div>
                          <%
           }
                          %> 
        <script type="text/javascript" src="Jquery/jquery.js"></script>
        <script type="text/javascript" src="mcenter.js"></script>
    </body>