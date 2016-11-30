<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="header.jsp" flush="ture"></jsp:include>
		
	<body class="body">		
		<!--主体部分開始-->
		<div class="page1">
		<h2 class="page1-h2">一站式的团队协作平台</h2>
		<h1 class="page1-h1">每天要做什么、做了什么、有什么收获</h1>
		<h3 class="page1-h3">随时随地的与团队成员共同推进目标成果、了解每人每事过程、聚焦每天的事<br />跟踪执行过程、记录成长点滴、团队实时分享、通力协作</h3>
		</div>
		<!--主体部分结束-->

<jsp:include page="footer.jsp" flush="ture"></jsp:include>
