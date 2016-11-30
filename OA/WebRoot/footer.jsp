<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
			

		<!--页腳部分開始-->
		<div class="fclear footer-hold"></div>
		<div class="footer">
			<hr />
			<div class="footer-company fl">
				<p>拓甫科技股份有限公司</p>
				<p><a href='http://www.toptest.com.tw' target=_blank>http://www.toptest.com.tw</a></p>
				<p>TEL: 886-3-4343875&nbsp;&nbsp;FAX: 886-3-4341984</p>
				<p>台灣桃園縣中壢市吉林路25號7樓</p>
			</div>
			<div class="footer-logo-iso fr"><img src="<%=path%>/toptest/img/iso-ind-btm.gif"></div>
			<div class="fr"><a href="#" id="footer-admin">管理员</a></div>
			
		</div>
		<!--页腳部分結束-->
		<div id="top"></div>
	</body>
</html>
