<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>系统用户</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/scripts/main/jquery-easyui/easyui.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/scripts/main/jquery-easyui/icon.css'/>" />
<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery-easyui/jquery.easyui.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/comp_role_edit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

td ul li {
	float: none;
	list-style: none outside none;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<textarea id="compMenuList" rows="3" cols="100" class="disNone">${compMenuList }</textarea>
	<div>
		<div class="divBgColor">角色编辑</div>
		<input type="hidden" id="roleCompCode" value="${compCode}" />
		<input type="hidden" id="loginCompCode" value="${loginCompCode }"/>
		<input type="hidden" id="operateType" value="${operateType }"/>
		
		<form id="frm-role" method="POST">
			<input id="roleId" name="roleId" value="${editRole.roleId }"
				type="hidden">
			<table>
				<tr>
					<td class="label">角色名称：</td>
					<td><input name="roleName" value="${editRole.roleName }"
						loxiaType="input" trim="true" mandatory="true"></td>
				</tr>
				<tr class="disNone">
					<td class="label">角色编码：</td>
					<td><input name="roleCode" value="${editRole.roleCode }" /></td>
				</tr>
				<tr>
					<td class="label">公司：</td>
					<td><select id="compCode" name="compCode"
						class="null ui-loxia-default ui-corner-all">
							<c:forEach items="${companyInfos }" var="companyInfo">
								<option value="${companyInfo.compCode }"
									<c:if test="${companyInfo.compCode == editRole.compCode }">selected="selected"</c:if>>${companyInfo.compName }</option>
							</c:forEach>
					</select></td>
				</tr>
<%-- 				<tr>
					<td class="label">数据权限：</td>
					<td><bizoption:bizoption biztypekey="rolelevel" id="roleLevel"
							name="roleLevel" isChoose="true"
							selected="${editRole.roleLevel }" /></td>
				</tr> --%>
				<tr>
					<td class="label">是否有效：</td>
					<td>
					<c:if test="${empty editRole.status}">
					<bizoption:bizoption biztypekey="valid" id="status"
							name="status" isChoose="false" 
							selected="1" />
					</c:if>
					<c:if test="${!empty editRole.status}">
					<bizoption:bizoption biztypekey="valid" id="status"
							name="status" isChoose="false" 
							selected="${editRole.status}" />
					</c:if>
				    </td>
				</tr>
				<tr>
					<td class="label" valign="top">描述：</td>
					<td><textarea id="roleDesc" name="roleDesc" rows="4" cols="45">${editRole.roleDesc }</textarea></td>
				</tr>
				<tr>
					<td class="label" valign="top">菜单权限：</td>
					<td>
						<div class="divBgColor">菜单权限</div>
						<ul id="tt" class="easyui-tree">
						</ul>
					</td>
				</tr>
				<tr class="disNone">
					<td class="label">菜单权限：</td>
					<td><textarea id="compMenuString" name="menuString" rows="3"
							cols="100">${compRolemenus }</textarea></td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth" id="userRoleHiddenBut">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：保存" id="btnSave">保存</button>

				<button type="button" loxiaType="button" class="confirm"
					title="tip：重置" id="btnReset">重置</button>
			</div>
		</form>
	</div>
</body>
</html>