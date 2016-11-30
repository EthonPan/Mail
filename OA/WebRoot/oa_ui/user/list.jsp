<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>用户管理</title>

<link rel="stylesheet" href="<%=path%>/oa_ui/css/UI.css">
<script type="text/javascript" src="<%=path%>/oa_ui/js/jquery.js"></script>
<script type="text/javascript">
   function checkAll(){
		var obj=document.getElementsByTagName("input");//获取input元素标签
		for(var i=1;i< obj.length;i++){
			if(obj[i].type=="checkbox"){//判断是否是复选框
					if(obj[0].checked==false){
						obj[i].checked=true;
					}else{
						obj[i].checked=false;
					}
		    }
		}	
   }
   function checkoutside(){
		var obj=document.getElementsByTagName("input");//获取input元素标签
		for(var i=1;i< obj.length;i++){
			if(obj[i].type=="checkbox"){//判断是否是复选框
					if(obj[i].checked==false){
						obj[i].checked=true;
					}else{
						obj[i].checked=false;
					}
		    }
		}	
   }
$(function(){
 $("#delalluser").click(function(){
        var obj=document.getElementsByTagName("input");
   		var val=[];
   		for(var i=1;i< obj.length;i++){
			if(obj[i].type=="checkbox"){//判断是否是复选框
					if(obj[i].checked==true){
					
						val.push(obj[i].value);
					}
		    }
		}
		val.join(",");
		var statu = confirm("Are you sure to delete the current data?");
		  if(!statu){
		   return false;
		  }
    $.ajax({
        url: '<%=path%>/user/dellist',
				method : 'post',
				dataType:'text',
				data : {val:[val]}, // 以json字符串方式传递
				success : function() {//接受后台传递的数据
					window.location.reload();  
				},
				error:function(){
					alert("删除失败");
				},
				complete:function(){
				}
			});
		});
	$("#adduser").click(function(){
			window.location.href="<%=path%>/user/addUI";
		});
		
	$("#deluser").click(function(){
					var statu = confirm("确认删除?");
					  if(!statu){
					   return false;
					  }
				});
	
	});
</script>
<style type="text/css">
.styleTable{
	width: 90%;
	text-align: center;
	vertical-align:middle;
	padding-top:2px;
}
.styleTable td{
	height:30px;
	line-height:30px;
	text-align: center;
	vertical-align:middle;
	border: 1px solid #A0A0A0;
}
.styleTable a:hover{color:red}
</style>
</head>

<body class="insertPage">
		<div class="title">用户管理</div>
		<div class="title">
			<div class="fl"><button class="button" id="delalluser">批量删除</button></div>
			<div class="fl"><button class="button" id="adduser">添加用户</button></div>
		</div>
		<div class="list">
			<form>
				<table class="styleTable">
					<tr class="list-title">
						<td width="15%"><input type="button" value="全选" onclick="checkAll()" />&nbsp;<input type="button" value="反选" onclick="checkoutside()" /></td>
						<td width="15%">用户姓名</td>
						<td width="15%">入职时间</td>
						<td width="15%">职务</td>
						<td width="15%">所属部门</td>
						<td width="25%">相关操作</td>
						
					</tr>
					<c:forEach var="user" items="${users}">
					<tr>
						<td><input name="del" type="checkbox" value="${user.u_id}"/></td>
						<td>${user.name}</td>
						<td>${user.intime}</td>
						<td>${user.roles}</td>
						<td>${user.department.name}</td>
						<td><a href="<%=path%>/user/updateUI?id=${user.u_id}">修改</a>&nbsp;
							<a href="<%=path%>/user/del?id=${user.u_id}" id="deluser">删除</a>&nbsp;
							<a href="<%=path%>/user/leavel?id=${user.u_id}"></a>&nbsp;</td>
					</tr>
					</c:forEach>
					<tr>
						<td colspan=6 style="text-align:center;font-size:14px">
						共计${totalPage}页 当前第${pageNow}页 
								<a href="<%=path%>/user/selectAll?pageNow=1">首页</a>&nbsp;
								<a href="<%=path%>/user/selectAll?pageNow=${pageNow-1==0?1:pageNow-1}">上页</a>&nbsp;
								<a href="<%=path%>/user/selectAll?pageNow=${pageNow+1>totalPage?totalPage:pageNow+1}">下页</a>&nbsp;
								<a href="${pageContext.request.contextPath}/user/selectAll?pageNow=${totalPage}">末页</a>
						</td>
					</tr>
				</table>
				
			</form>
		</div>
</body>
</html>

