<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 清贷结果列表   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>清贷结果列表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/cleardebt/payoffInadvance_result_list.js'/>"></script>
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
	<div>
		<form id="qryfrm">
			<table>
				<tr>
					<!-- 项目编号-->
					<td class="label"><fmt:message
							key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode" loxiaType="input" trim="true" /></td>
					<td class="label">合同编号：</td>
					<td width="150"><input id="contractId"  name="contractId" loxiaType="input" trim="true" /></td>
					<td class="label">贷款期限：</td>
					<td width="150"><input id="loanPeriod"  name="loanPeriod" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
				    <!--  
					<td class="label">已还期限</td>
					<td width="150"><input id="hasPeriod"  name="hasPeriod" loxiaType="input" trim="true" /></td>
					-->
					<td class="label">清贷申请状态：</td>
					<td width="150"><bizoption:bizoption name="projectStatus" biztypekey="1101" isChoose="true"/></td>
				</tr>
			</table>

			<input type="hidden" name="clientId" value="${clientId}"
				id="clientId" />

			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm" id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="reset" loxiaType="button" class="confirm" id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
				id="payOffSh">提前清贷审核</button>
			</div>
		</form>

		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-payoffList"></table>
		<div id="pager"></div>

	</div>

</body>
</html>
