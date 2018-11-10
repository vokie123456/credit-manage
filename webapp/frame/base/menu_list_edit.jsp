<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/menu_list_edit.js?v=1.3'/>"></script>
<link href="<c:url value='/scripts/main/jquery-easyui/easyui.css'/>"
	type="text/css" rel="stylesheet"></link>
<link href="<c:url value='/scripts/main/jquery-easyui/icon.css'/>"
	type="text/css" rel="stylesheet"></link>
<script
	src="<c:url value='/scripts/main/jquery-easyui/jquery.easyui.min.js'/>"
	type="text/javascript"></script>
<style type="text/css">
.label {
	text-align: left;
}
.buttonlist{
	text-align: right;
}
</style>
<linkage:define />
</head>


<body contextpath="<%=request.getContextPath()%>">
	<div>
		<input type="hidden" id="doType" value="${doType }" /> <input
			type="hidden" id="parentCode" value="${parentCode}" />
		<form id="menuListForm">
			<table class="col3">
				<tr>
					<td class="label"><fmt:message key="label.menu.list.menuCode"
							bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input" name="menuCode" id="menuCode"
						value="${menuList.menuCode }" mandatory="true" class=""/> <label
						class="del_mandatory">*</label></td>

					<td class="label"><fmt:message key="label.menu.list.menuName"
							bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input" name="menuName" id="menuName"
						value="${menuList.menuName }" mandatory="true" /><label
						class="del_mandatory">*</label></td>
				</tr>
				<tr>
					<td class="label"><fmt:message key="label.menu.list.isGroup"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="valid" id="isGroup"
							name="isGroup" selected="${menuList.isGroup?1:0}"
							styleClass="bizWidth" /> <label class="del_mandatory">*</label></td>
					<td class="label"><fmt:message key="label.menu.list.level"
							bundle="${lang}" /></td>
					<td class="content"><input loxiaType="number" name="level" id="level"
						value="${menuList.level }" mandatory="true" /> <label
						class="del_mandatory">*</label></td>
				</tr>
				<tr>
					<td class="label"><fmt:message key="label.menu.list.sortNo"
							bundle="${lang}" /></td>
					<td class="content"><input loxiaType="number" name="sortNo" id="sortNo"
						value="${menuList.sortNo }" mandatory="true" /> <label
						class="del_mandatory">*</label></td>
					<td class="label"><fmt:message key="label.menu.list.status"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="valid" id="status"
							name="status" selected="${menuList.status?1:0 }"
							styleClass="bizWidth" /> <label class="del_mandatory">*</label></td>
				</tr>

				<tr>
					<td class="label"><fmt:message key="label.menu.list.menuUrl"
							bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input" name="menuUrl" id="menuUrl"
						value="${menuList.menuUrl }" trim="true" /></td>

					<td class="label"><fmt:message key="label.menu.list.type"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1124" id="menuType"
							name="menuType" selected="${menuList.menuType }"
							styleClass="bizWidth" /> <label class="del_mandatory">*</label></td>
				</tr>
				<tr>
					
					<td class="label"><fmt:message key="label.menu.list.upCode"
							bundle="${lang}" /></td>
					<td class="content"><input id="upCode" name="upCode" class="width180" value="uuu"/></td>
					
					<td class="label"><fmt:message key="label.menu.list.ifMenu"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1001" id="ifMenu"
							name="ifMenu" selected="${menuList.ifMenu }"
							styleClass="bizWidth" /></td>
					
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="btnSave">保存</button>

				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="button.toback" bundle="${lang}"/>"
					id="btnClose">
					<fmt:message key="button.toback" bundle="${lang}" />
				</button>
			</div>
		</form>
	</div>
</body>
</html>