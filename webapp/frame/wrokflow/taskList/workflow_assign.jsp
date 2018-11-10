<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>指派</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="orgForm" method="post">
		<table>
			<tr>
				<td class="label width130" >部门名称:</td>
				<td><user:user bizHall="${bizHalls }"
							roleCode="${roles}" userId="${userId }" compCode="${compCode }"
							id="broker" name="broker" isChoose="true" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：确定分派" id="sub">确定分派</button>
		</div>
	</form>
</body>
</html>
