<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款审核编辑页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.checkedit" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/businessExecutiveApprove/approve_enterprise_edit.js'/>"></script>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="div_out"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#approveDiv" id="approve">调查表</a>
			</li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">申请表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">关系人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">产品配置</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">企业征信</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">押品信息</a></li>
		</ul>
		<form id="frm-approve" method="post">
			<div class="ui-tabs-panel ui-widget-content ui-corner-bottom" id="approveDiv">
			</div>
			<input type="hidden" id="applyId" value="${applyId }" />
			<input type="hidden" id="projectId" name="projectId" value="${projectId }" />
			<input type="hidden" id="taskId" name="taskId" value="${taskId }" />
			<input type="hidden" id="compCode" name="compCode" value="${compCode}" />
			<input type="hidden" id="organizationCode" name="organizationCode" value="${orgCode}" />
			<input type="hidden" id="direction" name="direction" value="" />
			<input type="hidden" id="backActivityId" name="backActivityId" value="" />
			<input type="hidden" id="operType" name="operType" value="" />
			<input type="hidden" id="operReason" name="operReason" value="" />
			<input type="hidden" id="operReasonRemark" name="operReasonRemark" value="" />
			<div class="buttonlist buttonDivWidth"><button type="button" loxiaType="button" class="confirm" title="tip：" id="btnSubmit">提交</button></div>
		</form>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-2"></div>
	</div>
</body>
</html>
