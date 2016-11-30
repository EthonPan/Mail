<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
if(!"ok".equals(session.getAttribute("is_login"))){
 response.sendRedirect(path+"/user/welcome.action");
}
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TOPTEST OA System 1.4 :: 歡迎使用 TOPTEST Team Works 1.4</title>
<head>
<link rel="stylesheet" href="<%=path%>/oa_ui/css/menu.css">
<script type="text/javascript" src="<%=path%>/oa_ui/js/jquery.js"></script>
<script type="text/javascript">
	$(".leftsidebar_box dt").css({"background-color":"#222222"});
	$(".leftsidebar_box dt img").attr("src","/OA/oa_ui/img/left/select_xl01.png");
	$(function(){
		$(".leftsidebar_box dd").hide();
		$(".leftsidebar_box dt").click(function(){
			$(".leftsidebar_box dt").css({"background-color":"#333333"});
			$(this).css({"background-color": "#111111"});
			$(this).parent().find('dd').removeClass("menu_chioce");
			$(".leftsidebar_box dt img").attr("src","/OA/oa_ui/img/left/select_xl01.png");
			$(this).parent().find('img').attr("src","/OA/oa_ui/img/left/select_xl.png");
			$(".menu_chioce").slideUp(); 
			$(this).parent().find('dd').slideToggle();
			$(this).parent().find('dd').addClass("menu_chioce");
		});
		$("#logout").click(function(){
			
			response.sendRedirect(path+"/user/logout.action");
		});
	});
</script>
</head>

<body id="bg">
	

		<!--头部开始-->
		<div id="top" class="clear">
			<div class="fl"><a class="top-font" href="<%=path%>/user/welcome.action">TopTest&nbsp;OA&nbsp;System</a></div>
			<div class="fr mright"><a class="top-logout" href="#" id="logout">退出</a></div>
			<div class="fr mright top-font">
				<c:choose>
				   <c:when test="${session.leavel == '1'}">  
				        超级管理员: &nbsp;${name}      
				   </c:when>
				   <c:when test="${session.leavel == '2'}">  
				        一级管理员: &nbsp;${name}      
				   </c:when>
				   <c:when test="${session.leavel == '3'}">  
				        二级管理员: &nbsp;${name}      
				   </c:when>
				   <c:otherwise> 
				       员工: &nbsp;${name} 
				   </c:otherwise>
				</c:choose>
				&nbsp;
			</div>
		</div>
		<!--头部结束-->

		<div class="bg">

			<div class="leftsidebar_box">
				<div class="line"></div>
				<dl class="system_log">
					<dt onClick="changeImage()">
						系统管理<img src="<%=path%>/oa_ui/img/left/select_xl01.png">
					</dt>
					<dd class="first_dd">
						<a target="fname" href="<%=path%>/role/selectAllRole">岗位管理</a>
					</dd>
					<dd>
						<a href="<%=path%>/department/selectAll" target="fname">部门管理</a>
					</dd>
					<dd>
						<a href="<%=path%>/user/selectAll" target="fname">用户管理</a>
					</dd>
				</dl>
				<div class="line"></div>
				<dl class="custom">
					<dt onClick="changeImage()">
						客户管理<img src="<%=path%>/oa_ui/img/left/select_xl01.png">
					</dt>
					<dd class="first_dd">
						<a href="#">客户管理</a>
					</dd>
					<dd>
						<a href="#">试用/成交客户管理</a>
					</dd>
					<dd>
						<a href="#">未成交客户管理</a>
					</dd>
					<dd>
						<a href="#">即将到期客户管理</a>
					</dd>
				</dl>
				<div class="line"></div>
				<dl class="channel">
					<dt>
						渠道管理<img src="<%=path%>/oa_ui/img/left/select_xl01.png">
					</dt>
					<dd class="first_dd">
						<a href="#">渠道主页</a>
					</dd>
					<dd>
						<a href="#">渠道标准管理</a>
					</dd>
					<dd>
						<a href="#">系统通知</a>
					</dd>
					<dd>
						<a href="#">渠道商管理</a>
					</dd>
					<dd>
						<a href="#">渠道商链接</a>
					</dd>
				</dl>
				<div class="line"></div>
				<dl class="app">
					<dt onClick="changeImage()">
						APP管理<img src="<%=path%>/oa_ui/img/left/select_xl01.png">
					</dt>
					<dd class="first_dd">
						<a href="#">App运营商管理</a>
					</dd>
					<dd>
						<a href="#">开放接口管理</a>
					</dd>
					<dd>
						<a href="#">接口类型管理</a>
					</dd>
				</dl>
				<div class="line"></div>
				<dl class="cloud">
					<dt>
						大数据云平台<img src="<%=path%>/oa_ui/img/left/select_xl01.png">
					</dt>
					<dd class="first_dd">
						<a href="#">平台运营商管理</a>
					</dd>
				</dl>
				<div class="line"></div>
				<dl class="syetem_management">
					<dt>
						系统管理<img src="<%=path%>/oa_ui/img/left/select_xl01.png">
					</dt>
					<dd class="first_dd">
						<a href="#">后台用户管理</a>
					</dd>
					<dd>
						<a href="#">角色管理</a>
					</dd>
					<dd>
						<a href="#">客户类型管理</a>
					</dd>
					<dd>
						<a href="#">栏目管理</a>
					</dd>
					<dd>
						<a href="#">微官网模板组管理</a>
					</dd>
					<dd>
						<a href="#">商城模板管理</a>
					</dd>
					<dd>
						<a href="#">微功能管理</a>
					</dd>
					<dd>
						<a href="#">修改用户密码</a>
					</dd>
				</dl>
				<div class="line"></div>
				<dl class="source">
					<dt>
						素材库管理<img src="<%=path%>/oa_ui/img/left/select_xl01.png">
					</dt>
					<dd class="first_dd">
						<a href="#">图片库</a>
					</dd>
					<dd>
						<a href="#">链接库</a>
					</dd>
					<dd>
						<a href="#">推广管理</a>
					</dd>
				</dl>
				<div class="line"></div>
				<dl class="statistics">
					<dt>
						统计分析<img src="<%=path%>/oa_ui/img/left/select_xl01.png">
					</dt>
					<dd class="first_dd">
						<a href="#">客户统计</a>
					</dd>
				</dl>

			</div>

			<div class="fdiv fr">
				<iframe name="fname" src="<%=path%>/oa_ui/welcome.jsp" class="fname" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
			</div>
		</div>
</body>
</html>

