<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
if("ok".equals(session.getAttribute("is_login"))){
	response.sendRedirect(path+"/user/index.action");
}
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
  <head>
    <base href="<%=basePath%>">
    
	    <title>TOPTEST Team Works 1.0 :: 歡迎使用 TOPTEST Team Works 1.0</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
        <!-- CSS -->
        <link rel="stylesheet" href="<%=path%>/oa_ui/css/reset.css">
        <link rel="stylesheet" href="<%=path%>/oa_ui/css/supersized.css">
        <link rel="stylesheet" href="<%=path%>/oa_ui/css/style.css">
		<script type="text/javascript" src="<%=path%>/oa_ui/js/jquery.js" ></script>
        <script type="text/javascript" src="<%=path%>/oa_ui/js/supersized-init.js" ></script>
        <script type="text/javascript" src="<%=path%>/oa_ui/js/scripts.js" ></script>		
        <script type="text/javascript" src="<%=path%>/oa_ui/js/user.js" ></script>
		
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="js/html5.js"></script>
        <![endif]-->
    
  </head>


    <body class="login-bg">

        <div class="page-container">
            <h1>登录</h1>
            <form action="<%=path %>/top/checkUser.php" method="post">
                <input type="text" name="loginName" class="username" placeholder="请输入您的用户名！">
                <input type="password" name="password" class="password" placeholder="请输入您的用户密码！">
                <input type="text" class="Captcha" name="Captcha" placeholder="请输入验证码！">
                <button type="submit" class="submit_button">登录</button>
                <div class="error"><span>+</span></div>
            </form>          
        </div>

</html>