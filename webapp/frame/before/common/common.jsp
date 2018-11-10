<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/common.js'/>"></script>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="tools"></div>
	<div id="content">
		<input id="clientId" type="hidden" name="clientId" value="${clientId}" />
		<input id="pageUrl" type="hidden" name="pageUrl" value="${pageUrl }" />
		<input id="projectId" type="hidden" name="projectId" value="${projectId}" />
		<input id="taskId" type="hidden" name="taskId" value="${taskId }" />
		<input type="hidden" id="direction" name="direction" value="" />
		<input type="hidden" id="operType" name="operType" value="" />
		<div id="businessDiv"></div>
	</div>
</body>
</html>