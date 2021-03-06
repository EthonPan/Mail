<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
if(!"ok".equals(session.getAttribute("is_toptest_admin_login"))){
 response.sendRedirect(path+"/toptest_admin/login.jsp");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>控制台页面</title>
<link rel="stylesheet" href="<%=path%>/toptest_admin/css/style.default.css" type="text/css" />
<script type="text/javascript" src="<%=path%>/toptest_admin/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="<%=path%>/toptest_admin/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="<%=path%>/toptest_admin/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="<%=path%>/toptest_admin/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="<%=path%>/toptest_admin/js/plugins/jquery.flot.min.js"></script>
<script type="text/javascript" src="<%=path%>/toptest_admin/js/plugins/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="<%=path%>/toptest_admin/js/plugins/jquery.slimscroll.js"></script>
<script type="text/javascript" src="<%=path%>/toptest_admin/js/custom/general.js"></script>
<script type="text/javascript" src="<%=path%>/toptest_admin/js/custom/dashboard.js"></script>
<!-- For addNew -->
<script type="text/javascript" src="<%=path%>/toptest_admin/kindeditor/kindeditor-all-min.js"></script>
<script type="text/javascript" src="<%=path%>/toptest_admin/kindeditor/lang/zh-CN.js"></script>

<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="<%=path%>/toptest_admin/js/plugins/excanvas.min.js"></script><![endif]-->
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="<%=path%>/toptest_admin/css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="<%=path%>/toptest_admin/css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="<%=path%>/toptest_admin/js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body class="withvernav">
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">Top.<span>Admin</span></h1>
            <span class="slogan">后台管理系统</span>
            
            <div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="请输入" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="ajax/notifications.html"><span>9</span></a>
        	</div>-->
            <div class="userinfo">
            	<img src="<%=path%>/toptest_admin/images/thumbs/avatar.png" alt="" />
                <span>管理员</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="<%=path%>/toptest_admin/images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	切换主题: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
                <div class="userdata">
                	<h4>Juan</h4>
                    <span class="email">youremail@yourdomain.com</span>
                    <ul>
                    	<li><a href="editprofile.html">编辑资料</a></li>
                        <li><a href="accountsettings.html">账号设置</a></li>
                        <li><a href="help.html">帮助</a></li>
                        <li><a href="login.jsp">退出</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li class="current"><a href="<%=path%>/toptest_admin/index.jsp"><span class="icon icon-flatscreen"></span>首页</a></li>
            <li><a href="<%=path%>/NewCategoryController?act=findAll"><span class="icon icon-pencil"></span>新闻管理</a></li>
            <li><a href="<%=path%>/ProductCategoryController?act=findAll"><span class="icon icon-message"></span>产品管理</a></li>
            <li><a href="reports.html"><span class="icon icon-chart"></span>统计报表</a></li>
        </ul>
        
    </div><!--header-->