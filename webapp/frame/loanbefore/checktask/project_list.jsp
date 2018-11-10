<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 企业 小贷审核   -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.tasklist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/checktask/project_list.js'/>"></script>
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
		<%-- <table>
			<tr>
				<!-- 申请表信息 -->
				<td class="label" colspan="2"> 客户项目查询</td>
			</tr>
			<tr>
				<!-- 项目编号-->
				<td class="label"><fmt:message
						key="label.audit.taskquery.project_code" bundle="${lang}" /></td>
				<td width="150"><input id="projectCode" name="projectCode"
					loxiaType="input" trim="true" /></td>
				<!-- 贷款金额  -->
				<td class="label">贷款金额：</td>
				<td width="150"><input id="LoanAmountleft" loxiaType="number"
					name="loanAmountMin"/></td>
				<td class="label">至</td>
				<td width="150"><input id="LoanAmountRight" loxiaType="number"
					name="loanAmountMax"/></td>
			</tr>
		</table> --%>
		
		<input type="hidden" value="${clientId}" id="check_clientId"/>
		</form>
		
		<%-- <div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div> --%>
	<%@include file="/common/paginationInit.jsp" %>	
	<table id="tbl-historyList"></table>
	<div id="pager"></div>
</div>

</body>
</html>
