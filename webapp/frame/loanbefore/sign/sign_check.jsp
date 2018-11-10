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
	src="<c:url value='/scripts/frame/loanbefore/sign/sign_check.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<form id="signCheckForm" method="post">
		<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
			id="div_out">
			<ul
				class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
				<li
					class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
					<a href="#signCheck-1"><fmt:message key="label.person.sign.info"
							bundle="${lang}" /></a>
				</li>
				<li class="ui-state-default ui-corner-top"><a href="#div-2"><fmt:message
							key="label.person.sign.process" bundle="${lang}" /></a></li>
				<!--  
				<li class="ui-state-default ui-corner-top"><a href="#div-2"><fmt:message
							key="label.person.sign.return" bundle="${lang}" /></a></li>
				-->
				<li class="ui-state-default ui-corner-top"><a href="#div-2"><fmt:message
							key="label.person.sign.apply" bundle="${lang}" /></a></li>
				<li class="ui-state-default ui-corner-top"><a href="#div-2">产品配置</a></li>
				<li class="ui-state-default ui-corner-top"><a href="#div-2">还款计划</a></li>
			</ul>
			
			<input type="hidden" id="compCode" name="compCode" value="${compCode}" />
			<input type="hidden" id="direction" name="direction" value="" /> 
			<input type="hidden" id="backActivityId" name="backActivityId" value="" />
			<input type="hidden" id="operType" name="operType" value="" />
			<input type="hidden" id="operReason" name="operReason" value="" />
			<input type="hidden" id="operReasonRemark" name="operReasonRemark" value="" />
			
			<input id="projectId" name="projectId" value="${projectId}" type="hidden" />
			<input id="taskId" name="taskId" value="${taskId}" type="hidden" />
			<input id="taskType" name="taskType" value="${taskType}" type="hidden" />
			<input id="signStauts" name="signContract.signStauts" value="${signStauts}" type="hidden" /> 
			<input id="signId" name="signContract.signId" value="${signId}" type="hidden" /> 
			<input id="applyId" name="applyId" value="${applyId}" type="hidden" />
				
			<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
				id="signCheck-1"></div>
			<div
				class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
				id="div-2"></div>
		</div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：提交" id="submit">提交</button>
			<button type="submit" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sign.close" bundle="${lang}"/>"
				id="close">
				<fmt:message key="button.close" bundle="${lang}" />
			</button>
		</div>
	</form>
</body>
</html>
