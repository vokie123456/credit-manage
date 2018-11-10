<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>还款计划</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/repay_plan_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail" >
	<div class="divBgColor">
		<fmt:message key="label.search.param" bundle="${lang}" />
	</div>
	<form id="ListQryForm" method="post">
		<table>
			<tr>
				<!-- 项目编号-->
				<td class="label"><fmt:message
						key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
				<td width="150"><input id="projectCode" name="projectCode"
					loxiaType="input" trim="true" /></td>
				<!-- 客户姓名 client.client_basic  -->
				<td class="label"><fmt:message
						key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
				<td width="150"><input id="clientName" name="clientName"
					loxiaType="input" trim="true" /></td>
				<!-- 贷款产品名称  -->
				<td class="label"><fmt:message
						key="label.apply.clientproject.prod_name" bundle="${lang}" /></td>
				<td width="150"><input id="prodName" name="prodName"
					loxiaType="input" trim="true" /></td>
			</tr>
		</table>
	</form>
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm"
			title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
			id="reload">
			<fmt:message key="button.query" bundle="${lang}" />
		</button>
		<button type="button" loxiaType="button" class="confirm"
			title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
			id="resets">
			<fmt:message key="button.reset" bundle="${lang}" />
		</button>
		
	</div>


	<!--<div class="label"><s:text name="label.sys.loginlog.result"/></div>
	
	-->
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-planlist"></table>
	<div id="pager"></div>
</div>
	
</body>
</html>
