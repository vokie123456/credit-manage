<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信用模型</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/credit_model.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
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
		<form id="creditModelForm" method="post">
			<table>
				<tr>
					<td class="label">评分模型：</td>
					<td width="150"> 
					<select id="creditModel" name="creditModel" >
					</select>
					</td>
				</tr>
				<tr>
					<td class="label">模型状态：</td>
					<td width="150">
						<bizoption:bizoption biztypekey="1141" 
						name="modelStatus" id="modelStatus" />
					</td>
				</tr>
			</table>
		</form>
		<br/>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-credit-index"></table>
		<div id="pager"></div>
</body>
</html>