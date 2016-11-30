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
<title>部门修改页面</title>

<link rel="stylesheet" href="<%=path%>/oa_ui/css/UI.css">
<link rel="stylesheet" href="<%=path%>/oa_ui/css/reset.css">

</head>

<body class="insertPage">
	<div class="title">修改部门<br/>
		<button class="btn btn-danger radius" onclick ="javascript:history.go(-1);">
									<i class="icon-ok"></i> 返回
								</button>
	</div>
	<div class="fclear-height"></div>
	<div class="pd-20">
		<div class="Huiform">
			<form action="<%=path%>/department/update" method="post">
				<table class="table table-bg">
					<tbody>
						<tr>
							<th width="100" class="text-r"><span class="c-red">*</span>
								部门名称：</th>
							<td><input type="text" style="width:200px"
								class="input-text" value="${department.name}" placeholder="" id="user-name"
								name="name" nullmsg="用户名不能为空">
							</td>
						</tr>
						<tr>
							<th class="text-r"> 部门说明：</th>
							<td><textarea class="input-text" name="description"
									id="user-info" style="height:100px;width:300px;">${department.description}</textarea>
							</td>
						</tr>
						<tr>
							<th class="text-r"><span class="c-red">*</span> 上级部门：</th>
							<td>
								<label>
									<select name="parent.id">
										<c:set var="fid" value="${department.parent.id}" scope="request"></c:set>
										<option value="0">顶级分类</option>
										<c:forEach var="cate" items="${lists}">
											<c:set var="id" value="${cate.id }" scope="request"></c:set>
											<% int id=(Integer)request.getAttribute("id");%>
											<option value="${cate.id}" <%if(id==(Integer)request.getAttribute("fid")){%>selected=selected<%} %>>
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
							<th><input type="hidden" name="id" value="${department.id}" /></th>
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

