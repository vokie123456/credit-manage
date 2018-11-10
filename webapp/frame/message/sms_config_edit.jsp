<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="messages" var="lang" />
<title>编辑短信模板</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/message/sms_config_edit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">
		<fmt:message key="label.person.sign.base" bundle="${lang}" />
	</div>
	<form id="smsConfigEditForm" method="post">
		<table>
			<input type="hidden" value="${smsConfig.id }" name="id" />
			<input type="hidden" value="${smsConfig.actionCode }"
				name="actionCode" />
			<input type="hidden" value="${smsConfig.compCode }" name="compCode" />
			<!-- 
			<tr>
				<td class="label">发送条件：</td>
				<td width="180" align="left"><input id="actionCode"
					name="actionCode" loxiaType="input" trim="true"
					value="${smsConfig.actionCode}" readonly="readonly"/></td>
			</tr>
			 -->
			<tr>
				<td class="label">模板标题：</td>
				<td width="200" align="left"><input id="actionTitle"
					name="actionTitle" loxiaType="input" trim="true"
					value="${smsConfig.actionTitle}" /></td>
			</tr>
			<tr>
				<td class="label">是否生产：</td>
				<td width="200" align="left"><bizoption:bizoption
						biztypekey="1001" id="ifCreate" name="ifCreate" isChoose="false"
						selected="${smsConfig.ifCreate}" /></td>
			</tr>
			<tr>
				<td class="label">模板内容：</td>
				<td width="200" align="left"><textarea id="templateContent"
						name="templateContent" loxiaType="input" trim="true" rows="5">${smsConfig.templateContent}</textarea></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitSmsConfig">提交</button>
			<button type="reset" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="button.reset" bundle="${lang}"/>"
				id="reset2">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
	</form>
</body>
</html>
