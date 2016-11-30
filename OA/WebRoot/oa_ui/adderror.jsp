<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<link rel="stylesheet" href="<%=path%>/oa_ui/css/UI.css">
	<link rel="stylesheet" href="<%=path%>/oa_ui/css/reset.css">
    <title>错误页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<div class="title">${msg}<br/>
		<button class="btn btn-danger radius" onclick ="javascript:history.go(-1)">
									<i class="icon-ok"></i> 返回
								</button>
	</div>
	<div class="fclear-height"></div>
	<div style="margin:0 auto;vertical-align:middle;"><img width="465" height="512" src="<%=path%>/oa_ui/img/404.jpg"></div>
  </body>
</html>
