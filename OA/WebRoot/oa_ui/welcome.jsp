<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
if(!"ok".equals(session.getAttribute("is_login"))){
 response.sendRedirect(path+"/user/login.php");
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TOPTEST Team Works 1.0 :: 歡迎使用 TOPTEST Team Works 1.0</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path%>/oa_ui/css/user_base.css">

  </head>

	<!--头部部分开始-->

		<div class="user-header">
			<div class="user fl" onmouseover="show_dl(1)" onmouseout="hidden_dl(1)">
				<div class="user-list">${name}</div>
				<div class="" id="dl1">dasdasdasdasd<br/>dasd</div>
			</div>
		<!--头部导航-->
			<div class="user fl" onmouseover="show_dl(2)" onmouseout="hidden_dl(2)"><a href="<%=path%>/sublimit">审批</a>
				<div class="" id="dl2">dasdasdasdasd<br/>dasd</div>
			</div>
		</div>
		<!--头部部分结束-->
		
<script type="text/javascript">
	function show_dl(now){
		var obj=document.getElementById("dl"+now);
		     obj.style.display="block";	
		  
	}
	function hidden_dl(now){
		var obj=document.getElementById("dl"+now);
		     obj.style.display="none";	
	} 
</script>	
		