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
          {          window.location ="deletehotelproductServlet?name=" + obj1 +"&&currentPage=" + obj2;
          }
   	
   }
    function HUpd(obj1,obj2)
    {
    	window.location.href = "1-hotleProduct2.html"
        	
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
                                     <div id="mhotel" class="product-hotel">
                                     <%
                               	        Integer currentPage = 1, count = 0, pageCount = 1, i = 0;
                                     %>
                                        <form action="hotelproductseparateServlet" id="frm-hotel" style="display: inline;">
                                            <div>
                                                <!--从request中提取值-->
                                                <%
                                                try {
                                                	ArrayList<com.qicaiyun.beans.HotelProduct> jspHotelProductList = null;
                                                	String compName;	
                                                	String productName;
                                                	 float productPrice;
                                                	 float productMemberPrice;
                                                 String productIntroduction;
                                                	 String productPicture;
                                                	 String roomType;
                                                	String breakfast;
                                                	 String bedType;
                                                	 String WIFI;
                                                	  String person;//add
                                                	 boolean roomState;
                                                	 float specialTimePrice;
                                                	String storage;
                                                	 float weekendPrice;
                                                	boolean availableState;
                                                    String remark;
                       									
            
                                                    int id;
                     								
                     								 
                      								
                       								 
                       								 
   
                                                	
                        							//获取当前页号
                        							currentPage = (Integer) request.getAttribute("currentPage");
                        							//获取记录总数
                        							count = (Integer) request.getAttribute("count");
                        							//获取接收到的request中的学生记录列表
                        							jspHotelProductList = (java.util.ArrayList<com.qicaiyun.beans.HotelProduct>) request
                        									.getAttribute("HotelProductList");
                        							System.out.println(jspHotelProductList);
                        							if (currentPage.equals(null)) {
                        								currentPage = 1;
                        							}
                        							if (count.equals(null)) {
                        								count = 0;
                        							}
                        							pageCount = count / 3 + 1;
                                                %>
                                                <table id="hotel-table" class="table table-responsive">
                                                    <!--表头-->
                                                    <thead align="center">
                                                        <tr>
                                                            <th>房间编号</th>
                                                            <th>酒店名称</th>
                                                            <th>房间名称</th>
                                                            <th>房内床型</th>
                                                            <th>房间类型</th>
                                                            <th>入住人数</th>
                                                            <th>平日价格</th>
                                                            <th>周末价格</th>
                                                            <th>特时价格</th>
                                                            <th>会员价格</th>
                                                            <th>房间简介</th>
                                                           <!--  <th>房间照片</th> -->
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
                            								 id=jspHotelProductList.get(i).getId();
                            								System.out.print(id);
                            								 productName=jspHotelProductList.get(i).getProductName();
                            								 compName=jspHotelProductList.get(i).getCompName();
                            								 bedType=jspHotelProductList.get(i).getBedType();
                            								 roomType=jspHotelProductList.get(i).getRoomType();
                            								 person=jspHotelProductList.get(i).getPerson();
                            								
                            								 productPrice=jspHotelProductList.get(i).getProductPrice();
                            								 weekendPrice=jspHotelProductList.get(i).getWeekendPrice();
                            								 specialTimePrice=jspHotelProductList.get(i).getSpecialTimePrice();
                            								 productMemberPrice	=jspHotelProductList.get(i).getProductMemberPrice();
                            								 productIntroduction=jspHotelProductList.get(i).getProductIntroduction();
                            								 storage=jspHotelProductList.get(i).getStorage();
                            								 availableState=jspHotelProductList.get(i).isAvailableState();
                            								 System.out.println(person+""+storage+""+ availableState);
                                                        %>
                                                        <!--显示属性值-->
                                                        <tr>
                                                            <!-- 透明的文本框: style="background-color: transparent; border: 0px"-->
                                                            <td><div id="jspHID_<%=i%>" name="id" class="tb-item"><%=id%></div></td>
                                                            <td><div id="jspHName_<%=i%>" name="compName" class="tb-item"><%=compName%></div></td>
                                                            <td><div id="jspHProductName_<%=i%>" name="productName" class="tb-item"><%=productName%></div></td>
                                                            <td><div id="jspHBed_<%=i%>" name="bedType" class="tb-item"><%=bedType%></td>
                                                            <td><div id="jspHRoom_<%=i%>" name="roomType" class="tb-item"><%=roomType%></td>
                                                            <td><div id="jspHPerson_<%=i%>" name="person" class="tb-item"><%=person%></td>
                                                            <td><div id="jspHWeekdayPrice_<%=i%>" name="productPrice" class="tb-item"><%=productPrice%></td>
                                                            <td><div id="jspHWeekendPrice_<%=i%>" name="weekendPrice" class="tb-item"><%=weekendPrice%></td>
                                                            <td><div id="jspHSpecialPrice_<%=i%>" name="specialTimePrice" class="tb-item"><%=specialTimePrice%></td>
                                                            <td><div id="jspHMemberPrice_<%=i%>" name="productMemberPrice" class="tb-item"><%=productMemberPrice%></td>
                                                            <td><div id="jspHIntroduction_<%=i%>" name="productIntroduction" class="tb-item"><%=productIntroduction%></td>
                                                         
                                                            <td><div id="jspHStorage_<%=i%>" name="storage" class="tb-item"><%=storage%></td>
                                                            <td><div id="jspHAvailable_<%=i%>" name="availableState" class="tb-item"><%=availableState%></td>
                                                            <td><button type="button" id="jspHUpd" onclick="HUpd(<%=i%>,<%=currentPage%>);">更改</button></td>
                                                            <td><button type="button" id="jspHDel" onclick="RDel(<%=id%>,<%=currentPage%>);">删除</button></td>
                                                        </tr>
                                                        <%
                                                        
                                						}
                                					%>
                                                       
                                                    </tbody>.
                                                </table>
                                                <!-- 底部-->
                                                <%
                                              //输出currentPage , count , pageCount , i  ;
                            					out.println("currentPage=" + currentPage + ",count=" + count
                            							+ ",pageCount=" + pageCount);
                            					if (currentPage == 1) {
                                                %>
                                                <span class="unuse"> [L] </span>
                                                <span class="unuse"> [<] </span>
                                                <%
                                                } else {
                                                %>
                                                <span><a href="hotelproductseparateServlet?currentPage=1"> [L] </a></span> 
                                                <span><a href="hotelproductseparateServlet?currentPage=<%=currentPage - 1%>"> [<] </a></span>
                                                <%
                                                }
                                				}//匹配<!--从request中提取值-->处得try
                                				catch (Exception e) {
                                					System.err.println(this.getClass() + "发生异常:"
                                							+ e.getLocalizedMessage());
                                					e.printStackTrace();
                                				}
                                                %>
                                                <%
                                                for (i = 1; i <= pageCount; i++) {
                                					if (i == currentPage) {
                                                %>
                                                <span class="currentPage"> <%=i%> </span>
                                                <%} else {
                                                %>
                                                <span><a href="hotelproductseparateServlet?currentPage=<%=i%>"> <%=i%> </a>
                                                </span>
                                               <%
				                                     }
				                                      }
			%>
			<%
				                             if (currentPage == pageCount) {
			%>
                                                <span class="unuse"> [>] </span><span class="unuse"> [R] </span>
                                              	<%
				                                } else {
			                                   %>
                                                <span><a href="hotelproductseparateServlet?currentPage=<%=currentPage + 1%>"> [>] </a></span> 
                                                <span><a href="hotelproductseparateServlet?currentPage=<%=pageCount%>"> [R] </a></span>
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
                                                
                                                </select> <input type="submit" name="jspGo" value="Go" /> 
                                            <div class="form-group">
                                         <a href="1-hotleProduct.html" class="button" type="button">增加</a>
                                           </div>
                                            </div>
                                        </form>
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
                                    <button id="pwd-ok" name="pwd-ok" class="pwd-button">提交</button>
                                </div>   
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