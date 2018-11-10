<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>Insert title here</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/comp_role_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
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
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<div class="divBgColor">查询条件</div>
		<form id="roleCommandForm" method="post">
			<table>
				<tr>
					<!-- 公司代码:-->
					<td class="label">公司名称:</td>
					<td width="150"><input id="compName"
						name="compName" class="label" loxiaType="input" /></td>

					<!-- 角色名称： -->
					<td class="label">角色名称：</td>
					<td width="150"><input id="roleName"
						name="roleName" class="label" loxiaType="input" /></td>
					<!-- 状态:  -->
					<td class="label">是否有效:</td>
					<td width="150"><bizoption:bizoption
							biztypekey="valid" id="roleStatus" name="roleStatus"
							isChoose="true" /></td>
				</tr>
				<%-- 				<tr>
					<!-- 数据权限:  -->
					<td class="label">等级:</td>
					<td class="label" width="150"><bizoption:bizoption
							biztypekey="rolelevel" id="level" name="level" isChoose="true" /></td>
				</tr> --%>
			</table>
		</form>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：查询" id="reload">查询</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：重置" id="resets">重置</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：新增角色" id="add">新增角色</button>
		</div>

		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-rolelist"></table>
		<div id="pager"></div>
		<div id="dialog" class="hidden"></div>
	</div>

</body>
</html>