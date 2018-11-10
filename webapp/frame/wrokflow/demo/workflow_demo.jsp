<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.sys.loginlog" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/workflow/demo/workflow_demo.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<!-- 这里是页面内容区 -->
	<fieldset>
		<legend id="title">开启</legend>
		<div>
			<input id="newApply" type="button" value="新申请" />
			<fieldset>
				<legend id="title">开启结果</legend>
				<span id="newApplyMessage"></span>
			</fieldset>
		</div>
	</fieldset>

	<fieldset>
		<legend id="title">待办任务</legend>
		<div id="taskDiv"></div>
	</fieldset>

	<fieldset id="taskUpdate" class="hidden">
		<legend>流程操作</legend>
		待办任务编号：<input id="utId" /> <input id="updateTaskToNext" type="button"
			value="通过" /> <input id="updateTaskToPrev" type="button" value="驳回" />
		<select id="backActivityId"></select>
	</fieldset>
</body>
</html>

