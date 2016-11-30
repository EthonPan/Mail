<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="../header.jsp" flush="ture"></jsp:include>
		
	<body id="company">		
		<!--主体部分開始-->
		<!--主体头部-->
		<div class="insert_top_bg">
			<div class="fl insert_top_bg_pic"></div>
		</div>
		<div class="fclear-height"></div>
		
		<div class="insert_body fl">
		<!--主体左导航-->
			<div class="leftmenu fl">
				<ul class="leftmenu_head">公司简介
					<li class="leftmenu_list"><a href="#" id="a1">关于拓甫</a></li>
					<li class="leftmenu_list"><a href="#">公司历史</a></li>
					<li class="leftmenu_list"><a href="#">经营哲学</a></li>
					<li class="leftmenu_list"><a href="#">商业合作</a></li>
					<li class="leftmenu_list"><a href="#">服务</a></li>
				</ul>
			</div>
		<!--主体内容-->
			<div class="body-font fr">
				<h4><a href="company.html">公司简介&nbsp;&gt;&nbsp;</a>关于拓甫</h4>
				<br />
				<p class="body-font-p">关于拓甫</p>
				<br />
				<p>拓甫科技始終相信，高品質測試產品來自於瞭解客戶真正的需求， 因此拓甫科技對客戶的的宗旨是要為永遠給客戶非常有競爭力的價格， 提供快速、多樣性、有效、可靠且可升級的測試解決方案。</p>
				<br />
				<p>簡而言之，拓甫不只是保證提供給客戶高品質且多樣性的解決方案 與產品，並且能替客戶增加產出效能，減少成本，帶來真正的競爭優勢。</p>
			</div>
		</div>
		<!--主体部分结束-->

<jsp:include page="../footer.jsp" flush="ture"></jsp:include>
