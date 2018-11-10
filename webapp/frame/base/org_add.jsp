<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>新增部门</title>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="orgForm" method="post">
		<table>
			<input type="hidden" value="${compCode }" name="companyCode"
				id="companyCode" />
			<tr>
				<td class="label width130" >部门名称:</td>
				<td width="150"><input id="orgName" name="orgName"
					loxiaType="input" trim="true" mandatory="true"><label
					class="del_mandatory">*</label></td>
			</tr>
			<tr>
				<td class="label width130" >是否营业厅:</td>
				<td width="150"><radio:radio biztypekey="1001" id="isBusiness"
						name="isBusiness" checked="100112"></radio:radio></td>
			</tr>
			<tr>
				<td class="label" style="width:130px;">部门类型:</td>
				<td><radio:radio biztypekey="1185" id="orgType"
						name="orgType" checked="118501"></radio:radio></td>
			</tr>
		</table>
	</form>
</body>
</html>