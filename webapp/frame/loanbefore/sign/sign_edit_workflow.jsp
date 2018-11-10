<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 个人签约信息-->
<head>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.person.sign.info"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/sign/sign_edit_workflow.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">

	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#sign-1"><fmt:message key="label.person.sign.info"
						bundle="${lang}" /></a>
			</li>
			<!--  <li class="ui-state-default ui-corner-top">
				<a href="#div-2"><fmt:message key="label.person.sign.process" bundle="${lang}" /></a></li>
			-->
			<!--  
			<li class="ui-state-default ui-corner-top">
				<a href="#div-2"><fmt:message key="label.person.sign.return" bundle="${lang}" /></a></li>
			-->
			<!--  
			<li class="ui-state-default ui-corner-top"><a href="#div-2">申请表</a></li>
			-->
			<li class="ui-state-default ui-corner-top"><a href="#div-2"><fmt:message
						key="label.repay.plan.desc" bundle="${lang}" /></a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">产品配置信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">电子文档</a></li>
		</ul>
		<input id="projectId" value="${projectId}" type="hidden" /> <input
			id="taskId" value="${taskId}" type="hidden" /> <input id="taskType"
			value="${taskType}" type="hidden" /> <input id="applyId"
			name="applyId" value="${applyId}" type="hidden" /> <input
			id="signStauts" name="signStauts" value="${signStauts}" type="hidden" />

		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="sign-1"></div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-3"></div>
		<div id="div-4"></div>
		<div id="div-5"></div>
	</div>
</body>
</html>
