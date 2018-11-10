<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>认证详请</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/auth_detail.js'/>"></script>
<style type="text/css">
.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}
.link:HOVER {
	text-decoration: none;
}
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="div_Tab"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#authDetail" id="task_detail">认证详情</a>
			</li>
			<!--电子文档-->
			<li class="ui-state-default ui-corner-top"><a href="#div_body"
				id="auth_doc">电子文档</a></li> 
		</ul>
		<div id="authDetail">
			<form id="authDetailForm" method="post">
			<input type="hidden" id="id" name="id" value="${auth.id}"  />
				<table>
				<tr>
					<td class="label">申请人:</td>
					<td class="width150">${auth.applyPerson}</td>
					<td class="label">认证类型</td>
					<td class="width150">${auth.authElement}</td>
				</tr>
				<tr>
					<td class="label">证件类型</td>
					<td class="width150">${auth.cardTypeDescribe}</td>
					<td class="label">证件号码:</td>
					<td class="width150">${auth.cardNo}</td>
				</tr>
				<tr>
					<td class="label">认证结果：</td>
					<td width="150"><bizoption:bizoption biztypekey="1138"
							name="authResult" id="authResult" isChoose="true" selected="${auth.authResult}" mandatory="true"/><label class="del_mandatory">*</label></td>
					<c:if test="${!empty auth.thirdParty}">
						<td class="label">第三方认证支持：</td>
						<td width="150"><a target="_blank" href="${auth.thirdParty}">认证网网址</a></td>
					</c:if>
				</tr>
				<tr>
					<td class="label">拒绝原因：</td>
					<td width="300" colspan="3">
						<textarea loxiaType="input" name="rejectReason" id="rejectReason">${auth.rejectReason}</textarea>
					</td>
				</tr>
				</table>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm"
						id="submitAuth">认证</button>
				</div>
			</form>
			</div>
		</div>
		<div id="div_body"></div>
	</div>
</body>
</html>