<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TOPTEST Team Works 1.0 :: 歡迎使用 TOPTEST Team Works 1.0</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta name="searchtitle" content="TopTest办公协作"> 
	<meta name="author" content="团队办公协作,http://www.toptest.cn"> 
	<meta name="copyright" content="本页版权归toptest团队所有.All Rights Reserved"> 
	<meta name="keywords" content="任务协作,团队管理,任务管理,团队协作,工作汇报,工作日志,移动办公,审批流程,企业网盘,知识分享,移动考勤">
	<meta name="description" content="Toptest为团队用户提供的云办公协作平台；以工作事项及成果为目标、以人员为核心，提供工作日报、任务协作、文档分享、审批流程、团队管理等为一体化的工作平台及相应的解决方案。并同时支持PC端网页版、Android移动客户端应用。">
	<meta name="application-name" content="toptest.cn">
	<link rel="stylesheet" href="<%=path%>/toptest/css/base.css" />
	<link rel="stylesheet" href="<%=path%>/toptest/css/insert.css" />
	<script type="text/javascript" src="<%=path%>/toptest/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript" src="<%=path%>/toptest/js/click.js" ></script>
	<script type="text/javascript" src="<%=path%>/toptest/js/gotop.js"></script>
	</head>
	
	
	<!--头部部分开始-->

		<div class="head">
			<div class="head-logo fl"><a href="<%=path%>/top/index.php">拓甫科技<br>TOPTEST</a></div>
		<!--头部导航-->
		<div class="head-list fl">
			<a href="<%=path%>/top/index.php">首页</a>
			<a href="<%=path%>/top/company.php">公司简介</a>
			<a href="<%=path%>/top/product.php">产品</a>
			<a href="<%=path%>/top/team.php">合作伙伴</a>
			<a href="<%=path%>/top/case.php">案例</a>
			<a href="<%=path%>/top/help.php">帮助</a>
		</div>
			<div class="fr">
				<a class="head-login head-login-1" href="<%=path%>/user/welcome.action">登陆</a>
				<a class="head-login" href="#" target="_blank">邮箱</a>
			</div>
		</div>
		<!--头部部分结束-->
		
