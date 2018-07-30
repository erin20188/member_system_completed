<%@ page language="java" import="java.util.*,com.qicaiyun.beans.Shop" pageEncoding="UTF-8"
	errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="Bootstrap/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css">
<link type="text/css" rel="stylesheet" href="css/merchant-center.css">
<title>Insert title here</title>
<script type="text/javascript">
function TUpd(obj1, obj2) {
	var id;
    id = document.getElementById("jspHID_" + obj1).value;
	window.location = "1-shoppingPro.jsp?id="+id;
}
function TDel(obj1, obj2) {
	var id;
    id = document.getElementById("jspHID_" + obj1).value;
	window.location = "deleteshopServlet?id=" + id ;
}

</script>
</head>
<body>
<%
		/*currentPage : 当前页号 ，count ：记录的总数目 ，pageCount ：总页数 ,
			 *i ： 数组元素的下标，用于遍历数组元素；数组列表中的数组元素是学生记录
			 */
			Integer currentPage = 1, count = 0, pageCount = 1, i = 0;
			ArrayList<com.qicaiyun.beans.Shop> jspShopList = null;
			
		    String id,compName,productName,productPrice,productType,
			weekendPrice,specialTimePrice,productMemberPrice,productIntroduction,
			productPicture,storage,availableState;
			
%>

        <div class="container container-indie">
            <div class="row">
                <div class="col-l nav nav-pills nav-tabs flex-column">
                    <li class="nav-header">商家中心</li>
                    <a href="#"><li class="nav-item" id="mcent-home"><i class="icon-home"></i><span>首页</span></li></a>
                    <a href="#"><li class="nav-item" id="mcent-info"><i class="icon-info"></i><span>商家信息</span></li></a>
                    <a href="#"><li class="nav-item" id="mcent-picture"><i class="icon-picture"></i><span>图片展示</span></li></a>
                    <a href="1-merchant-jump.jsp"><li class="nav-item" id="mcent-product"><i class="icon-suitcase"></i><span>产品资料</span></li></a>
                    <a href="#"><li class="nav-item" id="mcent-event"><i class="icon-calendar"></i><span>活动设置</span></li></a>
                    <a href="#"><li class="nav-item" id="mcent-password"><i class="icon-key"></i><span>修改密码</span></li></a>
                    <a href="#"><li class="nav-item last-item" id="mcent-review"><i class="icon-pencil"></i><span>意见反馈</span></li></a>
                </div>
                <div id="mContent" class="col-r">
                    <div id="mHomepage" name="mHomepage">
                        <div class="page-block">
                            待制作
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
                        <a href="add-shopProduct.html"><input type="button"  value="添加产品"/></a>
                        <div class="page-block">
                        <form action="shopproductseparateServlet" id="frm" method="Post" style="display: inline;">
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
                                                        <th>照片</th>
                                                        <th>价格</th>
                                                        <th>会员价格</th>
                                                        <th>库存量</th>
                                                        <th>周末价格</th>
                                                        <th>简介</th>
                                                        <th>可用状态</th>
                                                        <th>特殊时段价格</th>
                                                        <th colspan="2">操作</th>
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
                                                        <td><input type="text" id="jspHID_<%=i%>" value="<%=id%>"/></td>
                                                            <td><div id="jspHProductName" name="productName" class="tb-item"><%=productName%></div></td>
                                                            <td><div id="jspHProductType" name="productType" class="tb-item"><%=productType%></td>
                                                            <td><img alt="尚未上传" src="#" id="jspEPhotos" class="tb-pic" /></td>
                                                            <td><div id="jspHWeekdayPrice" name="productPrice" class="tb-item"><%=productPrice%></td>
                                                            <td><div id="jspHMemberPrice" name="productMemberPrice" class="tb-item"><%=productMemberPrice%></td>
                                                            <td><div id="jspHStorage" name="storage" class="tb-item"><%=storage%></td>
                                                            <td><div id="jspHWeekendPrice" name="weekendPrice" class="tb-item"><%=weekendPrice%></td>
                                                            <td><div id="jspHIntroduction" name="productIntroduction" class="tb-item"><%=productIntroduction%></td>
                                                            <td><div id="jspHAvailable" name="availableState" class="tb-item"><%=availableState%></td>
                                                            <td><div id="jspHSpecialPrice" name="specialTimePrice" class="tb-item"><%=specialTimePrice%></td>
                                                            <td><input type="button" id="jspTUpd" value="更改" onclick="TUpd(<%=i%>,<%=currentPage%>);"/></td>
                                                            <td><input type="button" id="jspTDel" value="删除" onclick="TDel(<%=i%>,<%=currentPage%>);"/></td>
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
                                            <span><a href="shopproductseparateServlet?currentPage=1">[First]</a> </span> 
                                            <span><a href="shopproductseparateServlet?currentPage=<%=currentPage - 1%>">[L]</a> </span>
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
                                            <span><a href="shopproductseparateServlet?currentPage=<%=i%>"><%=i%></a>
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
                                                href="shopproductseparateServlet?currentPage=<%=currentPage + 1%>">[>]</a> </span> <span><a
                                                href="shopproductseparateServlet?currentPage=<%=pageCount%>">[FINAL]</a> </span>
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

                          

</body>
</html>