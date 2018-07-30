<%@ page language="java" import="java.util.*,com.qicaiyun.beans.EntertainProduct" pageEncoding="UTF-8"
	errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>shopping-product</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.css"/>
    <link type="text/css" rel="stylesheet" href="Font-Awesome-3.2.1/css/font-awesome.css">
    <!-- <link type="text/css" rel="stylesheet" href="css/bootstrap-table.css"> -->
    <link type="text/css" rel="stylesheet" href="css/merchant-center.css">
    <link type="text/css" rel="stylesheet" href="css/merchant-center-template.css">
</head>

<body>
<% String currentId = request.getParameter("id");%>
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
                                <div>
                                    <div class="box">
                                        <form action="modifyshopServlet" method="post">
                                            <input type="hidden" name="currentId" value="<%=currentId%>"/>
                                            <div class="form-group">
                                                <label>商品编号</label>
                                                <input type="text" class="form-control" name="id" value="<%=currentId%>"/>
                                            </div>
                                            <div class="form-group">
                                                <label>商品名称</label>
                                                <input type="text" class="form-control" name="productName"/>
                                            </div>
                                            <div class="form-group">
                                                <label>商品类型</label>
                                                <input type="text" class="form-control" name="productType"/>
                                            </div>
                                            <div class="form-group">
                                                <label>平日价格</label>
                                                <input type="text" class="form-control" name="productPrice"/>
                                            </div>
                                            <div class="form-group">
                                                <label>周末价格</label>
                                                <input type="text" class="form-control" name="weekendPrice"/>
                                            </div>
                                            <div class="form-group">
                                                <label>特时价格</label>
                                                <input type="text" class="form-control" name="specialTimePrice"/>
                                            </div>
                                            <div class="form-group">
                                                <label>会员价格</label>
                                                <input type="text" class="form-control" name="productMemberPrice"/>
                                            </div>
                                            <div class="form-group">
                                                <label>商品简介</label>
                                                <input type="text" class="form-control" name="productIntroduction"/>
                                            </div>
                                            <div class="form-group">
                                                <label>库存数量</label>
                                                <input type="text" class="form-control" name="storage" />
                                            </div>
                                            <div class="form-group">
                                                <label>是否可用</label>
                                                <select name="availableState" id="availableState" class="form-control">
                                                    <option value="Y" selected="selected">是</option>
                                                    <option value="N">否</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <button class="btn btn-primary btn-block" name="sub-btn" id="sub-btn" type="submit">提交</button>
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
