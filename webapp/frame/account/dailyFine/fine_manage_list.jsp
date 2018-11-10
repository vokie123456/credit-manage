<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/dailyFine/fine_manage_list.js'/>"></script>
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
	<form id="qryfrm">
		<table>
			<tr>
				<!-- 项目编号-->
			<%-- 	<td class="label"><fmt:message
						key="label.audit.taskquery.project_code" bundle="${lang}" /></td>
				<td width="150"><input name="projectCode" loxiaType="input"
					trim="true" /></td> --%>
				<td class="label">客户名称：</td>
				<td width="150"><input loxiaType="input" trim="true"
					name="clientName" /></td>
				<%-- <td class="label">是否收取：</td>
				<td width="150"><bizoption:bizoption
							biztypekey="valid" id="ifValid" name="ifValid"
							isChoose="true" /></td> --%>
			
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<%-- <button type="reset" loxiaType="button" class="confirm" id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button> --%>
			
		</div>
	</form>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-list"></table>
	<div id="pager"></div>
	
	<div id="dialogDiv"></div>

</body>
</html>