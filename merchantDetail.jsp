<%@ page language="java" import="java.util.*,com.qicaiyun.beans.TravelProduct,com.qicaiyun.beans.HotelProduct,com.qicaiyun.beans.EntertainProduct" pageEncoding="UTF-8"
	errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link type="text/css" rel="stylesheet" href="css/myCss.css">
        <link type="text/css" rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css">
        <link type="text/css" rel="stylesheet" href="css/merchant-detail.css">
        <link type="text/css" rel="stylesheet" href="css/merchant-center-template.css">
        <link type="text/css" rel="stylesheet" href="css/merchant-center.css">
    </head>
    <body>
       <!--  <div id="navigator">
            <nav>
                <div class="nav-all">
                    <div class="nav-logo">
                        <img src="" alt="LOGO" />
                    </div>
                    <div class="nav-input">
                        <div class="nav-search">
                            <div class="nav-icon">
                                <i class="icon-search"></i>
                            </div>
                            <form action="searchnew">
                            <div class="nav-text">
                                <input type="text" name="search-bar"class="inp" autocomplete="off" placeholder="搜索" value>
                            </div>
                            </form>
                        </div>
                    </div>
                    <div class="nav-nav">
                        <ul class="nav-ul">
                            <li class="nav-li">
                                <div class="nav-btn">
                                    <a href="loginHome.html" class="nav-word">
                                        <div class="nav-font-box">
                                            <div class="nav-font">首页</div>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="nav-li">
                                <div class="nav-btn">
                                    <a href="/signup" class="nav-word">
                                        <div class="nav-font-box">
                                            <div class="nav-font">注册</div>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="nav-li">
                                <div class="nav-btn">
                                    <a href="/login" class="nav-word">
                                        <div class="nav-font-box">
                                            <div class="nav-font">登录</div>
                                        </div>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div> -->
        <main id="site-content">
            <div style="margin-bottom:16px">
                <div>
                    <!--<img src="littlepine.jpg" class="rounded mx-auto d-block" alt="Responsive image" style="height: 400px; width: auto;">-->
                    <div id="carouselExampleControls" class="carousel slide bgc-w" data-ride="carousel">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                          <%
                          String img=(String)request.getSession().getAttribute("img");
                          if("".equals(img))
                          {
                        	  img="lp2.jpg";
                          }
              			  %>
                            <img class="d-block header-photo" src="<%=img %>" alt="First slide">
                          </div>
                          <div class="carousel-item">
                            <img class="d-block header-photo" src="<%=img %>" alt="Second slide">
                          </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="sr-only">Next</span>
                        </a>
                      </div>
                    <div aria-label="breadcrumb">
                        <ol class="breadcrumb">
                          <li class="breadcrumb-item"><a href="#">商家首页</a></li>
                          
                        </ol>
                    </div>
                     <%
                        String  classify=(String)request.getSession().getAttribute("classify");
                     String  addr=(String)request.getSession().getAttribute("addr");
                     String  startLevel=(String)request.getSession().getAttribute("startLevel"); //String classify = "travel";
                     String  phonenumber=(String)request.getSession().getAttribute("phonenumber");
                     String  email=(String)request.getSession().getAttribute("email");
                        %>
                    <div>
                        <h1 name="detail-name"><%%></h1>
                        <h6 name="detail-commetNumber"><%%>   条点评</h6>
                    </div>
                    <div>
                        <span style="font-family: Microsoft YaHei; font-size: 10;">星级：</span>
                        <span style="font-family: Microsoft YaHei; font-size: 8;" name="detail-percapita"><%=startLevel%>★</span>
                    </div>
                    <div>
                        <span style="font-family: Microsoft YaHei; font-size: 10;">地址：</span>
                        <span style="font-family: Microsoft YaHei; font-size: 8;" name="detail-location"><%=addr%></span>
                    </div>
                    <div class="dropdown-divider"></div>
                    <div>
                        <h4 style="font-family: Microsoft YaHei;">简介</h4>
                        <div name="detail=introduction"><%%></div>
                    <div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">详细信息</th>
                                    <th scope="col"> </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <%
                                    
                                 
                                 %>
                                    <th scope="row">电话</th>
                                    <td><%=phonenumber%></td>
                                </tr>
                                <tr>
                                    <th scopr="row">邮箱</th>
                                    <td><%=email%></td>
                                </tr>
                               <%--  <tr>
                                    <th scope="row">邮箱</th>
                                    <td><%%></td>
                                </tr>
                                <tr>
                                    <th scope="row">支付</th>
                                    <td><%%></td>
                                </tr> --%>
                            </tbody>
                        </table>
                    </div>
                    <div>
                        <h4 style="font-family: Microsoft Yahei;">产品信息</h4>
                        <div>
                        <%
                          classify=(String)request.getSession().getAttribute("classify");
                        
                        //String classify = "travel";
                        Integer currentPage = 1, count = 0, pageCount = 1, i = 0;
                        %>
                        <%
                        if("hotel".equals(classify))
                        {
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
								
                			String mark="0";
                			if(request.getAttribute("mark")!=null){
                				mark=(String)request.getSession().getAttribute("mark");
                			}
                			
                        %>
                        
                        <% if("0".equals(mark)){%>
                           
                            <jsp:forward page="hotelProductSeparateServlet">
                            <jsp:param value="1" name="method"/>
                            </jsp:forward>
                           
                        <% }%>   
                            <div class="product-restaurant">
                                <form action="hotelProductSeparateServlet" id="frm-hotel" style="display: inline;">
                                  <input type="hidden" name="method" value="1"/>
                                    <div>
                                            <!--从request中提取值-->
                                            <%
                                            try {
						                    //获取当前页号
						                    currentPage = (Integer) request.getAttribute("currentPage");
						                    //获取记录总数
						                    count = (Integer) request.getAttribute("count");
						                  
						                    jspHotelProductList = (java.util.ArrayList<com.qicaiyun.beans.HotelProduct>) request
								                                .getAttribute("HotelProductList");
						                    if (currentPage.equals(null)) {
							                    currentPage = 1;
						                    }
						                    if (count.equals(null)) {
							                    count = 0;
						                    }
						                    pageCount = count / 3 + 1;//此处需要改进,用求余的办法;每页显示3条记录，计算总页数%>
                                            <table id="hotel-table" name="hotel-table">
                                                <!--表头-->
                                                <thead align="center">
                                                    <tr>
                                                        <th>编号</th>
                                                        <th>品名</th>
                                                        <th>床型</th>
                                                        <th>房型</th>
                                                        <th>可住人数</th>
                                                        <th>价格</th>
                                                        <th>会员价格</th>
                                                        <th>周末价格</th>
                                                        <th>特殊时段价格</th>
                                                        <th>简介</th>
                                                        <!-- <th>照片</th> -->
                                                        
                                                        <th>可用状态</th>
                                                        
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
                        								//提取数组元素的属性值；jspHotelProductList.get(i)提取第i+1个元素
                        								
                        								id = jspHotelProductList.get(i).getId();
                        								productName = jspHotelProductList.get(i).getProductName();
                        								bedType = jspHotelProductList.get(i).getBedType();	
                        								roomType = jspHotelProductList.get(i).getRoomType();
                        								person = jspHotelProductList.get(i).getPerson();
                        								productPrice = jspHotelProductList.get(i).getProductPrice();
                        								weekendPrice = jspHotelProductList.get(i).getWeekendPrice();
                        								specialTimePrice = jspHotelProductList.get(i).getSpecialTimePrice();
                        								productMemberPrice = jspHotelProductList.get(i).getProductMemberPrice();
                        								productIntroduction = jspHotelProductList.get(i).getProductIntroduction();
                        								productPicture = jspHotelProductList.get(i).getProductPicture();
                        								storage = jspHotelProductList.get(i).getStorage();
                        								availableState = jspHotelProductList.get(i).isAvailableState();
                        			
                        								
                        								
                                                    %>
                                                    <!--显示属性值-->
                                                    <tr>
                                                        <!-- 透明的文本框: style="background-color: transparent; border: 0px"-->
                                                            <td><div type="text" id="jspHID_<%=i%>" value="<%=id%>"/></div></td>
                                                            <td><div id="jspHProductName" name="productName" class="tb-item"><%=productName%></div></td>
                                                            <td><div id="jspHBed" name="bedType" class="tb-item"><%=bedType%></td>
                                                            <td><div id="jspHRoom" name="roomType" class="tb-item"><%=roomType%></td>
                                                            <td><div id="jspHPerson" name="person" class="tb-item"><%=person%></td>
                                                            <td><div id="jspHWeekdayPrice" name="productPrice" class="tb-item"><%=productPrice%></td>
                                                            <td><div id="jspHWeekendPrice" name="weekendPrice" class="tb-item"><%=weekendPrice%></td>
                                                            <td><div id="jspHSpecialPrice" name="specialTimePrice" class="tb-item"><%=specialTimePrice%></td>
                                                            <td><div id="jspHMemberPrice" name="productMemberPrice" class="tb-item"><%=productMemberPrice%></td>
                                                            <td><div id="jspHIntroduction" name="productIntroduction" class="tb-item"><%=productIntroduction%></td>
                                                           <!--  <td><img alt="尚未上传" src="#" id="jspEPhotos" class="tb-pic" /></td> -->
                                                            
                                                            <td><div id="jspHAvailable" name="availableState" class="tb-item"><%=availableState%></td>
                                                            
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
                                            <span><a href="hotelproductseparateServlet?currentPage=1&&method=1">[First]</a> </span> 
                                            <span><a href="hotelproductseparateServlet?currentPage=<%=currentPage - 1%>&&method=1">[L]</a> </span>
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
                                            <span><a href="hotelProductSeparateServlet?currentPage=<%=i%>&&method=1"><%=i%></a>
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
                                                href="hotelProductSeparateServlet?currentPage=<%=currentPage + 1%>&&method=1">[>]</a> </span> <span><a
                                                href="hotelProductSeparateServlet?currentPage=<%=pageCount%>&&method=1">[FINAL]</a> </span>
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
                                        </div>
                                </form>
                            </div>
                            <%
                        }else if("food".equals(classify))
                        {
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
       					String mark="0";
            			if(request.getAttribute("mark")!=null){
            				mark=(String)request.getSession().getAttribute("mark");
            			}
                        %>
                        
                        <% if("0".equals(mark)){%>
                           
                            <jsp:forward page="foodseparateServlet">
                            <jsp:param value="1" name="method"/>
                            </jsp:forward>
                           
                        <% }%>
                        
              
                            <div class="product-restaurant">
                                            <form action="foodseparateServlet" id="frm-restaurant" style="display: inline;">
                                              <input type="hidden" name="method" value="1"/>
                                                <div>
                                                    <!--从request中提取值-->
                                                    <%//获取当前页号
                                                    try {
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
							pageCount = count / 3 + 1;%>
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
                                                          <%--   <td><button type="button" id="jspRUpd" onclick="RUpd(<%=i%>,<%=currentPage%>);"/>更改</td>
                                                            <td><button type="button" id="jspRDel" onclick="RDel(<%=id%>,<%=currentPage%>);">删除</td> --%>
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
                                                </div>
                                            </form>
                                        </div>
                                        <%
                        }
                        else if("shopping".equals(classify))
                        {
                        	ArrayList<com.qicaiyun.beans.Shop> jspShopList = null;
                			
                		    String id,compName,productName,productPrice,productType,
                			weekendPrice,specialTimePrice,productMemberPrice,productIntroduction,
                			productPicture,storage,availableState;
                		    String mark="0";
                			if(request.getAttribute("mark")!=null){
                				mark=(String)request.getSession().getAttribute("mark");
                			}
                        %>
                        <% if("0".equals(mark)){%>
                           
                            <jsp:forward page="shopproductseparateServlet">
                            <jsp:param value="1" name="method"/>
                            </jsp:forward>
                           
                        <% }%>  
                                        <div class="product-shop">
                                            <form action="shopproductseparateServlet" id="frm-shop" style="display: inline;">
                                              <input type="hidden" name="method" value="1"/>
                                                <div>
                                            <!--从request中提取值-->
                                            <%
                                            try {
						                    //获取当前页号
						                    currentPage = (Integer) request.getAttribute("currentPage");
						                    //获取记录总数
						                    count = (Integer) request.getAttribute("count");
						                    //获取接收到的request中的学生记录列表
						                    jspShopList = (java.util.ArrayList<com.qicaiyun.beans.Shop>) request
								                                .getAttribute("ShopList");
						                    if (currentPage.equals(null)) {
							                    currentPage = 1;
						                    }
						                    if (count.equals(null)) {
							                    count = 0;
						                    }
						                    pageCount = count / 3 + 1;//此处需要改进,用求余的办法;每页显示3条记录，计算总页数%>
                                            <table id="hotel-table" name="hotel-table">
                                                <!--表头-->
                                                <thead align="center">
                                                    <tr>
                                                        <th>编号</th>
                                                        <th>品名</th>
                                                        <th>类型</th>
                                                     <!--    <th>照片</th> -->
                                                        <th>价格</th>
                                                        <th>会员价格</th>
                                                        
                                                        <th>周末价格</th>
                                                        <th>简介</th>
                                                        <th>可用状态</th>
                                                        <th>特殊时段价格</th>
                                                        
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
                        								//提取数组元素的属性值；jspHotelProductList.get(i)提取第i+1个元素
                        								id = jspShopList.get(i).getId();
                        								productName = jspShopList.get(i).getProductName();
                        								productType = jspShopList.get(i).getProductType();
                        								productPrice = jspShopList.get(i).getProductPrice();
                        								weekendPrice = jspShopList.get(i).getWeekendPrice();
                        								specialTimePrice = jspShopList.get(i).getSpecialTimePrice();
                        								productMemberPrice = jspShopList.get(i).getProductMemberPrice();
                        								productIntroduction = jspShopList.get(i).getProductIntroduction();
                        								productPicture = jspShopList.get(i).getProductPicture();
                        								storage = jspShopList.get(i).getStorage();
                        								availableState = jspShopList.get(i).getAvailableState();
                        								
                        								
                                                    %>
                                                    <!--显示属性值-->
                                                    <tr>
                                                        <!-- 透明的文本框: style="background-color: transparent; border: 0px"-->
                                                        <td><div type="text" id="jspHID_<%=i%>" value="<%=id%>"/></div></td>
                                                            <td><div id="jspHProductName" name="productName" class="tb-item"><%=productName%></div></td>
                                                            <td><div id="jspHProductType" name="productType" class="tb-item"><%=productType%></td>
                                                          <!--   <td><img alt="尚未上传" src="#" id="jspEPhotos" class="tb-pic" /></td> -->
                                                            <td><div id="jspHWeekdayPrice" name="productPrice" class="tb-item"><%=productPrice%></td>
                                                            <td><div id="jspHMemberPrice" name="productMemberPrice" class="tb-item"><%=productMemberPrice%></td>
                                                            
                                                            <td><div id="jspHWeekendPrice" name="weekendPrice" class="tb-item"><%=weekendPrice%></td>
                                                            <td><div id="jspHIntroduction" name="productIntroduction" class="tb-item"><%=productIntroduction%></td>
                                                            <td><div id="jspHAvailable" name="availableState" class="tb-item"><%=availableState%></td>
                                                            <td><div id="jspHSpecialPrice" name="specialTimePrice" class="tb-item"><%=specialTimePrice%></td>
                                                            
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
                                            <span><a href="shopproductseparateServlet?currentPage=1&&method=1">[First]</a> </span> 
                                            <span><a href="shopproductseparateServlet?currentPage=<%=currentPage - 1%>&&method=1">[L]</a> </span>
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
                                            <span><a href="shopproductseparateServlet?currentPage=<%=i%>&&method=1"><%=i%></a>
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
                                                href="shopproductseparateServlet?currentPage=<%=currentPage + 1%>&&method=1">[>]</a> </span> <span><a
                                                href="shopproductseparateServlet?currentPage=<%=pageCount%>&&method=1">[FINAL]</a> </span>
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
                                        </div>
                                            </form>
                                        </div>
                                        <%  }
                        else if("entertain".equals(classify))
                        {
                        	ArrayList<com.qicaiyun.beans.EntertainProduct> jspEntertainProductList = null;
                			
                			String id,entertainName,entertainType,entertainPrice,weekendPrice,
                			specialTimePrice,entertainMemberPrice,entertainTime,entertainPlace,reservationInformation,
                			recommendNumber,invoice,insurance,startTime,endTime,entertainIntroduction,storage,availableState;
                			String mark="0";
                			if(request.getAttribute("mark")!=null){
                				mark=(String)request.getSession().getAttribute("mark");
                			}
                        %>
                        <% if("0".equals(mark)){%>
                           
                            <jsp:forward page="entertainproductseparateServlet">
                            <jsp:param value="1" name="method"/>
                            </jsp:forward>
                           
                        <% }%> 
                                        <div class="product-entertainment">
                                            <form action="entertainproductseparateServlet" id="frm-entertainment" style="display: inline;">
                                              <input type="hidden" name="method" value="1"/>
                                                <div>
                                            <!--从request中提取值-->
                                            <%
                                            try {
						                    //获取当前页号
						                    currentPage = (Integer) request.getAttribute("currentPage");
						                    //获取记录总数
						                    count = (Integer) request.getAttribute("count");
						                    //获取接收到的request中的学生记录列表
						                    jspEntertainProductList = (java.util.ArrayList<com.qicaiyun.beans.EntertainProduct>) request
								                                .getAttribute("EntertainProductList");
						                    if (currentPage.equals(null)) {
							                    currentPage = 1;
						                    }
						                    if (count.equals(null)) {
							                    count = 0;
						                    }
						                    pageCount = count / 3 + 1;//此处需要改进,用求余的办法;每页显示3条记录，计算总页数%>
                                            <table id="hotel-table" name="hotel-table">
                                                <!--表头-->
                                                <thead align="center">
                                                    <tr>
                                                       
                                                            <th>项目编号</th>
                                                            <th>项目名称</th>
                                                            <th>项目类型</th>
                                                            <th>平日价格</th>
                                                            <th>周末价格</th>
                                                            <th>特时价格</th>
                                                            <th>会员价格</th>
                                                            <th>项目时长</th>
                                                            <th>项目场地</th>
                                                            <th>预约信息</th>
                                                            <th>推荐人数</th>
                                                            <th>发票</th>
                                                            <th>保险</th>
                                                            <th>开始时间</th>
                                                            <th>结束时间</th>
                                                            <th>项目简介</th>
                                                            <!-- <th>项目图片</th> -->
                                                            
                                                            <th>是否可用</th>
                                                            
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
                        								//提取数组元素的属性值；jspHotelProductList.get(i)提取第i+1个元素
                        								//id,entertainName,entertainType,entertainPrice,weenkendPrice,
			                       //  specialTimePrice,entertainMemberPrice,entertainTime,entertainPlace,reservationInformation,
			                      ///   recommendNumber,invoice,insurance,startTime,endTime,entertainIntroduction,availableState;
                        								id = jspEntertainProductList.get(i).getId();
                        								entertainName = jspEntertainProductList.get(i).getEntertainName();
                        								entertainType = jspEntertainProductList.get(i).getEntertainType();
                        								entertainPrice = jspEntertainProductList.get(i).getEntertainPrice();
                        								weekendPrice= jspEntertainProductList.get(i).getWeenkendPrice();
                        								specialTimePrice= jspEntertainProductList.get(i).getSpecialTimePrice();
                        								entertainMemberPrice= jspEntertainProductList.get(i).getEntertainMemberPrice();
                        								entertainTime= jspEntertainProductList.get(i).getEntertainTime();
                        								entertainPlace= jspEntertainProductList.get(i).getEntertainPlace();
                        								reservationInformation= jspEntertainProductList.get(i).getReservationInformation();
                        								recommendNumber= jspEntertainProductList.get(i).getRecommendNumber();
                        								invoice= jspEntertainProductList.get(i).getInvoice();
                        								insurance= jspEntertainProductList.get(i).getInsurance();
                        								startTime= jspEntertainProductList.get(i).getStartTime();
                        								endTime= jspEntertainProductList.get(i).getEndTime();
                        								entertainIntroduction= jspEntertainProductList.get(i).getEntertainIntroduction();
                        								storage= jspEntertainProductList.get(i).getStorage();
                        								availableState= jspEntertainProductList.get(i).getAvailableState();
                        			
                        								
                        								
                                                    %>
                                                    <!--显示属性值-->
                                                    <tr>
                                                        <!-- 透明的文本框: style="background-color: transparent; border: 0px"-->
                                                            <td><div type="text" id="jspTID_<%=i%>" value="<%=id%>"/></td>
                                                            <td><div id="jspTProductName_<%=i%>" name="entertainName" class="tb-item"><%=entertainName%></td>
                                                            <td><div id="jspTType_<%=i%>" name="entertainType" class="tb-item"><%=entertainType%></td>
                                                            <td><div id="jspTWeekdayPrice_<%=i%>" name="entertainPrice" class="tb-item"><%=entertainPrice%></td>
                                                            <td><div id="jspTWeekendPrice_<%=i%>" name="weekendPrice" class="tb-item"><%=weekendPrice%></td>
                                                            <td><div id="jspTSpecialPrice_<%=i%>" name="specialTimePrice" class="tb-item"><%=specialTimePrice%></td>
                                                            <td><div id="jspTMemberPrice_<%=i%>" name="entertainMemberPrice" class="tb-item"><%=entertainMemberPrice%></td>
                                                            <td><div id="jspTTimespan_<%=i%>" name="entertainTime" class="tb-item"><%=entertainTime%></td>
                                                            <td><div id="jspTLocation_<%=i%>" name="entertainPlace" class="tb-item"><%=entertainPlace%></td>
                                                            <td><div id="jspTReservation_<%=i%>" name="reservationInformation" class="tb-item"><%=reservationInformation%></td>
                                                            <td><div id="jspTPerson_<%=i%>" name="recommendNumber" class="tb-item"><%=recommendNumber%></td>
                                                            <td><div id="jspTInvoice_<%=i%>" name="invoice" class="tb-item"><%=invoice%></td>
                                                            <td><div id="jspTInsurance_<%=i%>" name="insurance" class="tb-item"><%=insurance%></td>
                                                            <td><div id="jspTStart_<%=i%>" name="startTime" class="tb-item"><%=startTime%></td>
                                                            <td><div id="jspTEnd_<%=i%>" name="endTime" class="tb-item"><%=endTime%></td>
                                                            <td><div id="jspTIntroduction_<%=i%>" name="entertainIntroduction" class="tb-item"><%=entertainIntroduction%></td>
                                                          <!--   <td><img alt="尚未上传" src="#" id="jspEPhotos" class="tb-pic" /></td>
                                                             -->
                                                            <td><div id="jspTAvailable_<%=i%>" name="availableState" class="tb-item"><%=availableState%></td>
                                                            
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
                                            <span><a href="entertainproductseparateServlet?currentPage=1&&method=1">[First]</a> </span> 
                                            <span><a href="entertainproductseparateServlet?currentPage=<%=currentPage - 1%>&&method=1">[L]</a> </span>
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
                                            <span><a href="entertainproductseparateServlet?currentPage=<%=i%>&&method=1"><%=i%></a>
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
                                                href="entertainproductseparateServlet?currentPage=<%=currentPage + 1%>&&method=1">[>]</a> </span> <span><a
                                                href="entertainproductseparateServlet?currentPage=<%=pageCount%>&&method=1">[FINAL]</a> </span>
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
                                        </div>
                                            </form>
                                        </div>
                                        <%
                        }
                        else if("travel".equals(classify))
                        {
                        	ArrayList<com.qicaiyun.beans.TravelProduct> jspTravelProductList = null;
                			
                			String id,compName,travelName,travelType,travelPrice,weekendPrice,
                			specialTimePrice,travelMemberPrice,travelTime,travelPlace,reservationInformation,
                			recommendNumber,invoice,insurance,startTime,endTime,travelIntroduction,storage,
                			availableState;
                			String mark="0";
                			if(request.getAttribute("mark")!=null){
                				mark=(String)request.getSession().getAttribute("mark");
                			}
                        %>
                        <% if("0".equals(mark)){%>
                           
                            <jsp:forward page="travelproductseparateServlet">
                            <jsp:param value="1" name="method"/>
                            </jsp:forward>
                           
                        <% }%> 
                                        <div class="product-travel">
                                            <form action="travelproductseparateServlet" id="frm-travel" style="display: inline;">
                                              <input type="hidden" name="method" value="1"/>
                                                <div>
                                            <!--从request中提取值-->
                                            <%
                                            try {
						                    //获取当前页号
						                    currentPage = (Integer) request.getAttribute("currentPage");
						                    //获取记录总数
						                    count = (Integer) request.getAttribute("count");
						                    //获取接收到的request中的学生记录列表
						                    jspTravelProductList = (java.util.ArrayList<com.qicaiyun.beans.TravelProduct>) request
								                                .getAttribute("TravelProductList");
						                    if (currentPage.equals(null)) {
							                    currentPage = 1;
						                    }
						                    if (count.equals(null)) {
							                    count = 0;
						                    }
						                    pageCount = count / 3 + 1;//此处需要改进,用求余的办法;每页显示3条记录，计算总页数%>
                                            <table id="hotel-table" name="hotel-table">
                                                <!--表头-->
                                                <thead align="center">
                                                    <tr>
                                                       
                                                            <th>项目编号</th>
                                                            <th>项目名称</th>
                                                            <th>项目类型</th>
                                                            <th>平日价格</th>
                                                            <th>周末价格</th>
                                                            <th>特时价格</th>
                                                            <th>会员价格</th>
                                                            <th>项目时长</th>
                                                            <th>项目场地</th>
                                                            <th>预约信息</th>
                                                            <th>推荐人数</th>
                                                            <th>发票</th>
                                                            <th>保险</th>
                                                            <th>开始时间</th>
                                                            <th>结束时间</th>
                                                            <th>项目简介</th>
                                                            <!-- <th>项目图片</th> -->
                                                            
                                                            <th>是否可用</th>
                                                            
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
                        								//提取数组元素的属性值；jspHotelProductList.get(i)提取第i+1个元素
                        								id = jspTravelProductList.get(i).getId();
                        								travelName = jspTravelProductList.get(i).getTravelName();
                        								travelType = jspTravelProductList.get(i).getTravelType();
                        								travelPrice = jspTravelProductList.get(i).getTravelPrice();
                        								weekendPrice= jspTravelProductList.get(i).getWeekendPrice();
                        								specialTimePrice= jspTravelProductList.get(i).getSpecialTimePrice();
                        								travelMemberPrice= jspTravelProductList.get(i).getTravelMemberPrice();
                        								travelTime= jspTravelProductList.get(i).getTravelTime();
                        								travelPlace= jspTravelProductList.get(i).getTravelPlace();
                        								reservationInformation= jspTravelProductList.get(i).getReservationInformation();
                        								recommendNumber= jspTravelProductList.get(i).getRecommendNumber();
                        								invoice= jspTravelProductList.get(i).getInvoice();
                        								insurance= jspTravelProductList.get(i).getInsurance();
                        								startTime= jspTravelProductList.get(i).getStartTime();
                        								endTime= jspTravelProductList.get(i).getEndTime();
                        								travelIntroduction= jspTravelProductList.get(i).getTravelIntroduction();
                        								storage= jspTravelProductList.get(i).getStorage();
                        								availableState= jspTravelProductList.get(i).getAvailableState();
                        			
                        								
                        								
                                                    %>
                                                    <!--显示属性值-->
                                                    <tr>
                                                        <!-- 透明的文本框: style="background-color: transparent; border: 0px"-->
                                                        <td><div type="text" id="jspTID_<%=i%>" value="<%=id%>"/></td>
                                                            <td><div id="jspTProductName_<%=i%>" name="entertainName" class="tb-item"><%=travelName%></td>
                                                            <td><div id="jspTType_<%=i%>" name="entertainType" class="tb-item"><%=travelType%></td>
                                                            <td><div id="jspTWeekdayPrice_<%=i%>" name="entertainPrice" class="tb-item"><%=travelPrice%></td>
                                                            <td><div id="jspTWeekendPrice_<%=i%>" name="weekendPrice" class="tb-item"><%=weekendPrice%></td>
                                                            <td><div id="jspTSpecialPrice_<%=i%>" name="specialTimePrice" class="tb-item"><%=specialTimePrice%></td>
                                                            <td><div id="jspTMemberPrice_<%=i%>" name="entertainMemberPrice" class="tb-item"><%=travelMemberPrice%></td>
                                                            <td><div id="jspTTimespan_<%=i%>" name="entertainTime" class="tb-item"><%=travelTime%></td>
                                                            <td><div id="jspTLocation_<%=i%>" name="entertainPlace" class="tb-item"><%=travelPlace%></td>
                                                            <td><div id="jspTReservation_<%=i%>" name="reservationInformation" class="tb-item"><%=reservationInformation%></td>
                                                            <td><div id="jspTPerson_<%=i%>" name="recommendNumber" class="tb-item"><%=recommendNumber%></td>
                                                            <td><div id="jspTInvoice_<%=i%>" name="invoice" class="tb-item"><%=invoice%></td>
                                                            <td><div id="jspTInsurance_<%=i%>" name="insurance" class="tb-item"><%=insurance%></td>
                                                            <td><div id="jspTStart_<%=i%>" name="startTime" class="tb-item"><%=startTime%></td>
                                                            <td><div id="jspTEnd_<%=i%>" name="endTime" class="tb-item"><%=endTime%></td>
                                                            <td><div id="jspTIntroduction_<%=i%>" name="entertainIntroduction" class="tb-item"><%=travelIntroduction%></td>
                                                           <!--  <td><img alt="尚未上传" src="#" id="jspEPhotos" class="tb-pic" /></td> -->
                                                            
                                                            <td><div id="jspTAvailable_<%=i%>" name="availableState" class="tb-item"><%=availableState%></td>
                                                            
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
                                            <span><a href="travelproductseparateServlet?currentPage=1&&method=1">[First]</a> </span> 
                                            <span><a href="travelproductseparateServlet?currentPage=<%=currentPage - 1%>&&method=1">[L]</a> </span>
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
                                            <span><a href="travelproductseparateServlet?currentPage=<%=i%>&&method=1"><%=i%></a>
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
                                                href="travelproductseparateServlet?currentPage=<%=currentPage + 1%>&&method=1">[>]</a> </span> <span><a
                                                href="travelproductseparateServlet?currentPage=<%=pageCount%>&&method=1">[FINAL]</a> </span>
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
                                        </div>
                                            </form>
                                        </div>
                                        <%
                        }

                        %>
                                    </div>
                                    <div>
                                        <h4 style="font-family: Microsoft Yahei;">用户评价</h4>
                                                    <%
                                                    Integer currentPage1 = 1, count1 = 0, pageCount1 = 1, j = 0;
                                                    String nickName;
                                                    String review;
                                                    ArrayList<com.qicaiyun.beans.memberComment> jspmemberCommentList;
                                                    %>
                                                    
                                        <div class="detail-comment">
                                            <form action="memberCommentServlet" id="frm-comment" style="display: inline;">
                                              <input type="hidden" name="method" value="1"/>
                                                <div>
                                            <!--从request中提取值-->
                                            <%
                                            try {
						                    //获取当前页号
						                    currentPage1 = (Integer) request.getAttribute("currentPage1");
						                    //获取记录总数
						                    count1 = (Integer) request.getAttribute("count1");
						                    //获取接收到的request中的学生记录列表
						                    jspmemberCommentList = (java.util.ArrayList<com.qicaiyun.beans.memberComment>) request
					                                .getAttribute("memberCommentList");
						                    if (currentPage1.equals(null)) {
							                    currentPage1 = 1;
						                    }
						                    if (count1.equals(null)) {
							                    count1 = 0;
						                    }
						                    pageCount1 = count1 / 3 + 1;//此处需要改进,用求余的办法;每页显示3条记录，计算总页数%>
                                            <table id="hotel-table" name="hotel-table">
                                                <!--表头-->
                                                <thead align="center">
                                                    <tr>
                                                                <th>用户名称</th>
                                                                <th>用户反馈</th>
                                                            </tr>
                                                </thead>
                                                <tbody>
                                                    <!--提取数组元素属性值-->
                                                    <%
                                                  //提取数组元素;第一个数组元素的下标是零,最后一个元素的下标是 (count - 1)
                        							for (j = (currentPage1 - 1) * 3; j < currentPage1 * 3; j++) {
                        								if (j > (count1 - 1)) {
                        									break;
                        								}
                        								//提取数组元素的属性值；jspHotelProductList.get(i)提取第i+1个元素
                        								nickName = jspmemberCommentList.get(j).getNickName();
                        								review = jspmemberCommentList.get(j).getReview();
                        						
                        								
                                                    %>
                                                    <!--显示属性值-->
                                                    <tr>
                                                        <!-- 透明的文本框: style="background-color: transparent; border: 0px"-->
                                                        <td><div id="UserID" name="nickName" class="tb-item"><%=nickName%></div></td>
                                                        <td><div id="UserComment" name="review" class="tb-item"><%=review%></div></td>
                                                                
                                                    </tr>
                                                    <%
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                            <!-- 底部-->
                                            <%
                                          //输出currentPage , count , pageCount , i  ;
                        					out.println("currentPage=" + currentPage1 + ",count=" + count1
                        							+ ",pageCount=" + pageCount1);
                        					if (currentPage1 == 1) {
                                            %>
                                            <span class="unuse">[第一页]</span> <span class="unuse">[上一页]</span>
                                            <%
                                                } else {
                                            %>
                                            <span><a href="memberCommentServlet?currentPage1=1">[第一页]</a> </span> 
                                            <span><a href="memberCommentServlet?currentPage1=<%=currentPage1 - 1%>">[上一页]</a> </span>
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
                                            for (j = 1; j <= pageCount1; j++) {
                            					if (j == currentPage1) {
                                            
                                            %>
                                            <span class="currentPage"><%=j%></span>
                                            <%
                                                } else {
                                            %>
                                            <span><a href="memberCommentServlet?currentPage1=<%=j%>"><%=j%></a>
                                            </span>
                                            <%
                                                }
                                                }
                                            %>
                                            <%
                                                if (currentPage1 == pageCount1) {
                                            %>
                                            <span class="unuse">[下一页]</span> <span class="unuse">[最后一页]</span>
                                            <%
                                                } else {
                                            %>
                                            <span><a
                                                href="memberCommentServlet?currentPage1=<%=currentPage1 + 1%>">[下一页]</a> </span> <span><a
                                                href="memberCommentServlet?currentPage1=<%=pageCount1%>">[最后一页]</a> </span>
                                            <%
                                                }
                                            %>
                                            <select name="currentPage1">
                                                <%
                                                    for (j = 1; j <= pageCount1; j++) {
                                                %>
                                                <option value="<%=j%>" >
                                                    <%=j%>
                                                </option>
                                                <%
                                                    }
                                                %>
                                            </select> <input type="submit" name="jspGo" value="去" />
                                        </div>
                                            </form>
                                        </div>
                                        </div>
                                        
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
