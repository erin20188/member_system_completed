<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    
</head>
<body>
        <div class="container container-mcenter">
                <div class="row">
                    <div class="col-l nav nav-pills flex-column">
                        <li class="nav-header">商家中心
                        <a href="#"><li class="nav-item" id="mcent-home"><i class="icon-home"></i><span>首页</span></li></a>
                        <a href="merchantInfo.jsp"><li class="nav-item" id="mcent-info"><i class="icon-info"></i><span>商家信息</span></li></a>
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
                                    <%
                                 String  classify=(String)request.getSession().getAttribute("classify");
																									                                
                               	  Integer currentPage = 1, count = 0, pageCount = 1, i = 0;
                              
                                  if("hotel".equals(classify))
                                  {
                                  %>
                                 
                                    <div id="mhotelbtn" class="product-hotel">
                                        <form action="hotelProductSeparateServlet" id="btn-hotel" style="display: inline;">
                                            <div>
                                <input type="hidden" name="currentPage" value="1" /> <input
							        type="submit" name="jspSubmit" value="产品资料" maxlength="16" />
                                            </div>
                                        </form>
                                    </div>
                                  <%
                                  }else if("food".equals(classify))
                                  {
                                   %> <div id="mrestaurantbtn" class="product-hotel">
                                        <form action="foodseparateServlet" id="btn-restaurant" style="display: inline;">
                                            <div>
                                               <input type="hidden" name="currentPage" value="1" /> <input
							          type="submit" name="jspSubmit" value="产品资料" maxlength="16" />
                                            </div>
                                        </form>
                                    </div>
                                    
                                    
                                      <%
                                  }
                                  else if("shopping".equals(classify))
                                  {
                                    %>
                                    
                                    <div id="mshopbtn" class="product-hotel">
                                        <form action="shopproductseparateServlet" id="btn-shop" style="display: inline;">
                                            <div>
                                                 <input type="hidden" name="currentPage" value="1" /> <input
							        type="submit" name="jspSubmit" value="产品资料" maxlength="16" />
                                            </div>
                                        </form>
                                    </div>
                                    <%  }
                                  else if("entertain".equals(classify))
                                  {
                                   %>
                                    
                                    
                                    
                                     <div id="mentertainmentbtn" class="product-hotel">
                                        <form action="entertainproductseparateServlet" id="btn-entertain" style="display: inline;">
                                            <div>
                                                <input type="hidden" name="currentPage" value="1" /> <input
							        type="submit" name="jspSubmit" value="产品资料" maxlength="16" />
                                            </div>
                                        </form>
                                    </div>
                                    
                                    
                                      <%
                                  }
                                  else if("travel".equals(classify))
                                  {
                                   %>
                                    
                                    
                                    <div id="mtravelbtn" class="product-hotel">
                                        <form action="travelproductseparateServlet" id="btn-travel" style="display: inline;">
                                            <div>
                                                 <input type="hidden" name="currentPage" value="1" /> <input
							        type="submit" name="jspSubmit" value="产品资料" maxlength="16" />
                                            </div>
                                        </form>
                                    </div>
                                
                                 <%
                                  }
                                 
                                   %>
                                
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
                                <form action="modifypasswordServlet" method="post">
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
                                    <button type="submit"id="pwd-ok" name="pwd-ok" class="pwd-button">提交</button>
                                </form>
                                </div>   
                            </div>
                        </div>
                        <div id="mReviewpage" name="mReviewpage">
                            <div class="page-block">
                                      <form action="reviewServlet" method="post">
                            <div class="review-block">
                                <textarea id="review" name="review" autofocus wrap="soft" rows="10" cols="80" placeholder="请在此处将意见反馈给我们，谢谢您的帮助" class="review-text"></textarea>
                            </div>
                            <div class="review-block">
                                <button type="submit" id="review-ok" name="review-ok" class="review-button">提交</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <script type="text/javascript" src="Jquery/jquery.js"></script>
        <script type="text/javascript" src="mcenter.js"></script>
       <!--  <script type="text/javascript" src="mproduct.js"></script>  -->
</body>
</html>