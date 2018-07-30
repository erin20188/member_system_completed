<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.ArrayList"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>商家中心</title>
    <meta charset="utf-8" />
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css">
    <!-- <link type="text/css" rel="stylesheet" href="css/bootstrap-table.css"> -->
    <link type="text/css" rel="stylesheet" href="css/merchant-center.css">
    <link type="text/css" rel="stylesheet" href="css/merchant-center-template.css"> 
    <script type="text/javascript">
                                function RDel (obj1,obj2){
                                	 var name;
                                	 var retn;
                                     //sId = document.getElementById("jspSID_" + obj1).value;
                                     
                                     //born = document.getElementById("jspBorn_" + obj1).value;
                                     retn = confirm("确认删除这条产品吗?");
                                       if(retn)
                                       {          window.location = "deleteFoodServlet?name=" + obj1 +"&&currentPage=" + obj2;
                                       }
                                	
                                }
                                function RUpd(obj1,obj2)
                                {
                                	window.location.href = "1-foodproduct2.html"
                                	
                                }
                                
                                </script>
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
                    <div id="mContent" class="col-r">
                        <div id="mHomepage" name="mHomepage">
                            <div class="page-block">
                            </div>
                        </div>
                        <div id="mInfopage" name="mInfopage">
                            <div class="page-block">
    
                            </div>
                        </div>
                        <div id="mPicpage" name="mPicpage">
                            <div class="page-block">
    
                            </div>
                        </div>
                        <div id="mProductpage" name="mProductpage">
                            <div class="page-block">
                                <div class="product-list">
                                
                                    <div id="mrestaurant" class="product-restaurant">
                                        <form action="foodseparateServlet" id="frm-restaurant" style="display: inline;">
                                            <div>
                                            <%
                                            Integer currentPage = 1, count = 0, pageCount = 1, i = 0;
                                            %>
                                                <!--从request中提取值-->
                                                <%
                                                
				try {
					  ArrayList<com.qicaiyun.beans.Food> jspFoodList = null;
					 String compName;	
					 String foodName;
				     float foodPrice;
					 float foodMemberPrice;
					 String foodIntroduction;
					 float specialTimePrice;
					 float weekendPrice;
					 boolean availableState;
				     String foodType;
					 int id;
					 int storage;
							//获取当前页号
							currentPage = (Integer) request.getAttribute("currentPage");
							//获取记录总数
							count = (Integer) request.getAttribute("count");
							//获取接收到的request中的学生记录列表
							jspFoodList = (java.util.ArrayList<com.qicaiyun.beans.Food >) request
									.getAttribute("FoodList");
							if (currentPage.equals(null)) {
								currentPage = 1;
							}
							if (count.equals(null)) {
								count = 0;
							}
							pageCount = count / 3 + 1;
			%>
                                                <table id="restaurant-table" class="table table-responsive">
                                                    <!--表头-->
                                                    <thead align="center">
                                                        <tr>
                                                            <th>菜品编号</th>
                                                            <th>餐馆名称</th>
                                                            <th>菜品名称</th>
                                                            <th>菜品类型</th>
                                                            <th>平日价格</th>
                                                            <th>周末价格</th>
                                                            <th>特时价格</th>
                                                            <th>会员价格</th>
                                                            <th>菜品简介</th>
                                                          
                                                            <th>库存数量</th>
                                                            <th>是否可用</th>
                                                            <th colspan="2">操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!--提取数组元素属性值-->
                                                        <%
                                                    	for (i = (currentPage - 1) * 3; i < currentPage * 3; i++) {
                            								if (i > (count - 1)) {
                            									break;
                            								}
                            								//提取数组元素的属性值；jspStudentList.get(i)提取第i+1个元素
                            								
                            								 compName=jspFoodList.get(i).getCompName();	
                            								foodName=jspFoodList.get(i).getFoodName();
                            							     foodPrice=jspFoodList.get(i).getFoodPrice();
                            								  foodMemberPrice=jspFoodList.get(i).getFoodMemberPrice();
                            								foodIntroduction=jspFoodList.get(i).getFoodIntroduction();
                            								 specialTimePrice=jspFoodList.get(i).getSpecialTimePrice();
                            								  weekendPrice=jspFoodList.get(i).getWeekendPrice();
                            								 availableState=jspFoodList.get(i).isAvailableState();
                            							  foodType=jspFoodList.get(i).getFoodType();
                            								 id=jspFoodList.get(i).getId();
                            								  storage=jspFoodList.get(i).getStorage();
                                                        %>
                                                        <!--显示属性值-->
                                                        <tr>
                                                            <!-- 透明的文本框: style="background-color: transparent; border: 0px"-->
                                                            <td><div id="jspRID_<%=i%>" name="id" class="tb-item"><%=id%></div></td>
                                                            <td><input type="text" width="5" jspRName_<%=i%>" name="compName" class="tb-item" value=<%=compName%>></input></td>
                                                            <td><div id="jspRProductName_<%=i%>" name="foodName" class="tb-item"><%=foodName%></td>
                                                            <td><div id="jspRType_<%=i%>" name="foodType" class="tb-item"><%=foodType%></td>
                                                            <td><div id="jspRWeekdayPrice_<%=i%>" name="foodPrice" class="tb-item"><%=foodPrice%></td>
                                                            <td><div id="jspRWeekendPrice_<%=i%>" name="weekendPrice" class="tb-item"><%= weekendPrice%></td>
                                                            <td><div id="jspRSpecialPrice_<%=i%>" name="specialTimePrice" class="tb-item"><%=specialTimePrice%></td>
                                                            <td><div id="jspRMemberPrice_<%=i%>" name="foodMemberPrice" class="tb-item"><%=foodMemberPrice%></td>
                                                            <td><div id="jspRIntroduction_<%=i%>" name="foodIntroduction" class="tb-item"><%=foodIntroduction%></td>
                                                        <!--     <td><img alt="尚未上传" src="#" id="jspRPhotos" class="tb-pic" /></td> -->
                                                            <td><div id="jspRStorage_<%=i%>" name="storage" class="tb-item"><%=storage%></td>
                                                            <td><div id="jspRAvailable_<%=i%>" name="availableState" class="tb-item"><%=availableState%></td>
                                                            <td><button type="button" id="jspRUpd" onclick="RUpd(<%=i%>,<%=currentPage%>);"/>更改</td>
                                                            <td><button type="button" id="jspRDel" onclick="RDel(<%=id%>,<%=currentPage%>);">删除</td>
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
			<span><a href="foodseparateServlet?currentPage=1">[First]</a> </span> 
			<span><a href="foodseparateServlet?currentPage=<%=currentPage - 1%>">[L]</a> </span>
			<%
				}
				}//匹配<!--从request中提取值-->处得try
				catch (Exception e) {
					System.err.println(this.getClass() + "发生异常:"
							+ e.getLocalizedMessage());
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
			<span><a href="foodseparateServlet?currentPage=<%=i%>"><%=i%></a>
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
				href="foodseparateServlet?currentPage=<%=currentPage + 1%>">[>]</a> </span> <span><a
				href="foodseparateServlet?currentPage=<%=pageCount%>">[FINAL]</a> </span>
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
			</select> <input type="submit" name="jspGo" value="GO" />
		
                                    <div class="form-group">
                                         <a href="1-foodproduct.html" class="button" type="button">增加</a>
                                     </div>
                                </div>        
                            </div>
                        </div>
                        <div id="mEventpage" name="mEventpage">
                            <div class="page-block">
    
                            </div>
                        </div>
                        <div id="mPwdpage" name="mPwdpage">
                            <div class="page-block">
                            <form action="modifypasswordServlet" method="post">
                                <div class="pwd-block">
                                    <div class="pwd-item">原密码</div>
                                    <input id="oldPwd" name="oldPwd" class="pwd-input" placeholder="输入6到16位密码">
                                </div>
                                <div class="pwd-block">
                                    <div class="pwd-item">新密码</div>
                                    <input id="newPwd" name="newPwd" class="pwd-input" placeholder="输入6到16位密码">
                                </div>
                                <div class="pwd-block">
                                    <div class="pwd-item">确认密码</div>
                                    <input id="checkPwd" name="checkPwd" class="pwd-input" placeholder="输入6到16位密码">
                                </div>
                                <div class="pwd-block">
                                    <button id="pwd-ok" name="pwd-ok" class="pwd-button" type="submit">提交</button>
                                </div>  
                                </form> 
                            </div>
                        </div>
                        <div id="mReviewpage" name="mReviewpage">
                            <div class="page-block">
                                <div class="review-block">
                                    <textarea id="review" name="review" autofocus wrap="soft" rows="10" cols="80" placeholder="请在此处将意见反馈给我们，谢谢您的帮助" class="review-text"></textarea>
                                </div>
                                <div class="review-block">
                                    <button id="review-ok" name="review-ok" class="review-button">提交</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <script type="text/javascript" src="Jquery/jquery.js"></script>
        <script type="text/javascript" src="mcenter.js"></script>
        <script type="text/javascript" src="mproduct.js"></script> 
</body>
</html>