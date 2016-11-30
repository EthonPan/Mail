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
<title>职务/岗位添加页面</title>

<link rel="stylesheet" href="<%=path%>/oa_ui/css/UI.css">
<link rel="stylesheet" href="<%=path%>/oa_ui/css/reset.css">
<script type="text/javascript">
	/*默认选中级别*/
	window.onload = function() {
		var x = "${role.leavel}";
		var isAuto = document.getElementsByName('leavel');
		for ( var i = 0; i < isAuto.length; i++) {
			if (isAuto[i].value == x) {

				document.getElementsByName("leavel")[i].checked = "checked";
			}
		}
	};
</script>
</head>

<body class="insertPage">
	<div class="title">添加职务/岗位<br/>
		<button class="btn btn-danger radius" onclick ="javascript:history.go(-1)">
									<i class="icon-ok"></i> 返回
								</button>
	</div>
	<div class="fclear-height"></div>
	<div class="pd-20">
		<div class="Huiform">
			<form action="<%=path%>/role/update" method="post">
				<table class="table table-bg">
					<tbody>
						<tr>
							<th width="100" class="text-r"><span class="c-red">*</span>
								职务：</th>
							<td><input type="text" style="width:200px"
								class="input-text" value="${role.name}" placeholder="" id="user-name"
								name="name" nullmsg="用户名不能为空">
							</td>
						</tr>
						<tr>
							<th class="text-r"><span class="c-red">*</span> 职务级别：</th>
							<td><label> <input name="leavel" type="radio"
									id="six_1" value="1"> 超级管理员</label> <label> <input
									type="radio" name="leavel" value="2" id="six_0"> 一级管理员</label>
							</td>
						</tr>
						<tr>
							<th class="text-r"> 职务说明：</th>
							<td><textarea class="input-text" name="description"
									id="user-info" style="height:100px;width:300px;">${role.description}</textarea>
							</td>
						</tr>
						<tr>
							<th></th>
							<td><input type="hidden" name="r_id" value="${role.r_id}" /><button class="btn btn-success radius" type="submit">
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

