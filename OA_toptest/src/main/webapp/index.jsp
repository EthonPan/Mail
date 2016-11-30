<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body id="bg">
<div>

	<!--头部开始-->
<div id="top">
		 上海市计量欢迎您！
</div>
<!--头部结束-->

<div class="bg">

	<div class="leftsidebar_box">
		<div class="line"></div>
		<dl class="system_log">
			<dt onClick="changeImage()">系统记录<img src="img/left/select_xl01.png"></dt>
			<dd class="first_dd" >
			<a target="fname" href="text.html">充值记录</a>			 
			</dd>
			<dd><a href="text2.html" target="fname">短信充值记录</a></dd>
			<dd><a href="#">消费记录</a></dd>
			<dd><a href="#">操作记录</a></dd>
		</dl>
		<div class="line"></div>
		<dl class="custom">			
			<dt onClick="changeImage()">客户管理<img src="img/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">客户管理</a></dd>
			<dd><a href="#">试用/成交客户管理</a></dd>
			<dd><a href="#">未成交客户管理</a></dd>
			<dd><a href="#">即将到期客户管理</a></dd>
		</dl>
		<div class="line"></div>
		<dl class="channel">
			<dt>渠道管理<img src="img/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">渠道主页</a></dd>
			<dd><a href="#">渠道标准管理</a></dd>
			<dd><a href="#">系统通知</a></dd>
			<dd><a href="#">渠道商管理</a></dd>
			<dd><a href="#">渠道商链接</a></dd>
		</dl>
		<div class="line"></div>
		<dl class="app">
			<dt onClick="changeImage()">APP管理<img src="img/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">App运营商管理</a></dd>
			<dd><a href="#">开放接口管理</a></dd>
			<dd><a href="#">接口类型管理</a></dd>
		</dl>
		<div class="line"></div>
		<dl class="cloud">
			<dt>大数据云平台<img src="img/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">平台运营商管理</a></dd>
		</dl>
		<div class="line"></div>
		<dl class="syetem_management">
			<dt>系统管理<img src="img/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">后台用户管理</a></dd>
			<dd><a href="#">角色管理</a></dd>
			<dd><a href="#">客户类型管理</a></dd>
			<dd><a href="#">栏目管理</a></dd>
			<dd><a href="#">微官网模板组管理</a></dd>
			<dd><a href="#">商城模板管理</a></dd>
			<dd><a href="#">微功能管理</a></dd>
			<dd><a href="#">修改用户密码</a></dd>
		</dl>
		<div class="line"></div>
		<dl class="source">
			<dt>素材库管理<img src="img/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">图片库</a></dd>
			<dd><a href="#">链接库</a></dd>
			<dd><a href="#">推广管理</a></dd>
		</dl>
		<div class="line"></div>
		<dl class="statistics">
			<dt>统计分析<img src="img/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">客户统计</a></dd>
		</dl>
	
	</div>

<div class="fdiv fr">
 <iframe name="fname" src="text.html" class="fname" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
</div>
</div>
</div>
</body>
</html>