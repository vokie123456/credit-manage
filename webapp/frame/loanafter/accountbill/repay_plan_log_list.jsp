<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/metaload.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/repay_plan_log_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<div class="divBgColor">还款计划修改记录</div>
<div id="repayPlanLogDiv" class="buttonlist buttonDivWidth">
	<form id="repayPlanLoglistForm" method="post"></form>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-repayPlanLoglist" width="100%"></table>
	<div id="pager"></div>
</div>