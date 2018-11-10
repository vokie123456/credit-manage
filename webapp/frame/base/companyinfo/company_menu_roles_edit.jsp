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
	src="<c:url value='/scripts/frame/base/companyinfo/company_menu_roles_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="middle">
		<form id="frm-compmenu" method="post">
			<div class="divBgColor">菜单权限</div>
			<ul id="compmenu_tree" class="easyui-tree">
			</ul>
			<div  class="disNone">
				<input type="hidden" id="compCode" name="compCode" value="${selectedComp }"/>
				<textarea id="menuList" rows="3" cols="100">${menuList }</textarea>
				<textarea id="menuString" name="menuString" rows="3" cols="100">${rolemenus }</textarea>
			</div>
			<div class="buttonlist buttonDivWidth" id="userRoleHiddenBut">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：保存" id="btnSubmit">保存</button>

				<button type="button" loxiaType="button" class="confirm"
					title="tip：重置" id="btnReset2">重置</button>
			</div>
		</form>
	</div>
</body>
</html>