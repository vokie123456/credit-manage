<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/auth_doc.js'/>"></script>
<style type="text/css">
.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}
.link:HOVER {
	text-decoration: none;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">		
		<form id="authDocForm" method="post">
		</form>
		<table id="tbl-auth-doc"></table>
		<div id="pager"></div>
</body>
</html>