<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>部门添加页面</title>

<link rel="stylesheet" href="<%=path%>/oa_ui/css/UI.css">
<link rel="stylesheet" href="<%=path%>/oa_ui/css/reset.css">

</head>

<body class="insertPage">
	<div class="title">添加部门<br/>
		<button class="btn btn-danger radius" onclick ="javascript:history.go(-1);">
									<i class="icon-ok"></i> 返回
								</button>
	</div>
	<div class="fclear-height"></div>
	<div class="pd-20">
		<div class="Huiform">
			<form action="<%=path%>/department/add" method="post">
				<table class="table table-bg">
					<tbody>
						<tr>
							<th width="100" class="text-r"><span class="c-red">*</span>
								部门名称：</th>
							<td><input type="text" style="width:200px"
								class="input-text" value="" placeholder="" id="user-name"
								name="name" nullmsg="用户名不能为空">
							</td>
						</tr>
						<tr>
							<th class="text-r"> 部门说明：</th>
							<td><textarea class="input-text" name="description"
									id="user-info" style="height:100px;width:300px;"></textarea>
							</td>
						</tr>
						<tr>
							<th class="text-r"><span class="c-red">*</span> 上级部门：</th>
							<td>
								<label>
									<select name="parent.id">
										<option value="0">顶级分类</option>
										<c:forEach var="cate" items="${lists}">
											<option value="${cate.id}">
											<c:set var="leavel" value="${cate.leavel}" scope="request">
											</c:set>
											<% 
											 int a=(Integer)request.getAttribute("leavel");
											 for(int i=0;i<a-1;i++){
												out.print("--");
											}
											%>
											${cate.name}
											</option>
										</c:forEach>
									</select>
								</label>
							</td>
						</tr>
						<tr>
							<th></th>
							<td><button class="btn btn-success radius" type="submit">
									<i class="icon-ok"></i> 确定
								</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>

</body>
</html>

