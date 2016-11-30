<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String act=request.getParameter("act");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <script type="text/javascript">
   <% if("empty".equals(act)){%>
    alert("数据不能为空");
    location.href="<%=path%>/admin/system/website.jsp";
    <%} else if("fail".equals(act)){%>
    alert("操作失败,请重新操作！");
    location.href="<%=path%>/admin/system/website.jsp";
    <%} else if("login_error".equals(act)){%>
    alert("用户名或密码有误！");
    location.href="<%=path%>/admin/login.jsp";
    <%} else if("insert_error".equals(act)){%>
    alert("添加失败,请重新操作！");
     location.href="<%=path%>/NewCategoryController?act=findAll";
    <%} else if("update_error".equals(act)){%>
    alert("修改失败,请重新操作！");
     location.href="<%=path%>/NewCategoryController?act=show_newCate_page";
    <%} else if("del_error".equals(act)){%>
    alert("请先删除子类！");
     location.href="<%=path%>/NewCategoryController?act=show_newCate_page";
     <%}else if("del_fail".equals(act)){%>
     alert("删除失败！");
     location.href="<%=path%>/NewCategoryController?act=show_newCate_page";
     <%}else if("insert_new_error".equals(act)){%>
      alert("添加失败,请重新操作！");
     location.href="<%=path%>/NewController?act=show_addNew_page";
     <%} else if("update_new".equals(act)){%>
      alert("修改失败,请重新操作！");
      location.href="<%=path%>/NewController?act=show_newList_page";
      <%} else if("del_new".equals(act)){%>
      alert("删除失败,请重新操作！");
      location.href="<%=path%>/NewController?act=show_newList_page";
      <%}%>
   </script>
   </script>
  </head>
  
  <body>
    This is my JSP page. <br>
  </body>
</html>
