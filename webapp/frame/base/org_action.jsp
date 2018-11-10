<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>新增部门</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/scripts/main/jquery-easyui/easyui.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/scripts/main/jquery-easyui/icon.css'/>" />
<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery-easyui/jquery.easyui.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/org_action.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="middle">
		<div class="width300 floatleft paddingLeft200">
			<textarea id="organizationList" rows="3" cols="100"
				class="disNone">${organizationList }</textarea>
			<ul id="bizHall-tree" class="easyui-tree">
			</ul>
		</div>
		<div id="mm" class="easyui-menu width120" >
			<div onclick="append()" data-options="iconCls:'icon-add'">添加</div>
			<div onclick="removeit()" data-options="iconCls:'icon-remove'">删除</div>
			<div onclick="edit()" data-options="iconCls:'icon-edit'">修改</div>
		</div>
		<div id="dlg" class="easyui-dialog">
		</div>
	</div>
</body>
</html>