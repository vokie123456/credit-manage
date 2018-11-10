<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/metaload.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="messages" var="lang" />
<title>短信列表详情</title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body>
	<div class="divBgColor">
		<fmt:message key="label.person.sign.base" bundle="${lang}" />
	</div>
	<table>
		<!-- 
		<tr>
			<td class="label">发送条件：</td>
			<td width="180" align="left">${smsConfig.actionCode}</td>
		</tr>
		 -->
		<tr>
			<td class="label">模板标题：</td>
			<td width="180" align="left">${smsConfig.actionTitle}</td>
		</tr>
		<tr>
			<td class="label">模板内容：</td>
			<td width="180" align="left">${smsConfig.templateContent}</td>
		</tr>
		<tr>
			<td class="label">是否生产：</td>
			<td width="180" align="left"><bizoptionname:showname
					biztypekey="1001" value="${smsConfig.ifCreate }" /></td>
		</tr>
	</table>
</body>
</html>
