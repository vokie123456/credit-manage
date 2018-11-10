<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 企业 小贷审核   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.tasklist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/checktask/check_enterprise_list.js'/>"></script>
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
	<div id="formdetail">
		<div class="divBgColor">
			<!-- 企业申贷审核查询  -->
			<fmt:message key="title.audit.taskquery" bundle="${lang}" />
		</div>
		<form id="checkqryfrm" method="post">
			<table>
				<tr>
					<!-- 项目编号-->
					<td class="label"><fmt:message
							key="label.audit.taskquery.project_code" bundle="${lang}" /></td>
					<td width="150"><input name="projectCode" loxiaType="input"
						trim="true" /></td>
					<!-- 企业名称 client.client_basic  -->
					<td class="label"><fmt:message
							key="label.audit.taskquery.enterprise_name" bundle="${lang}" /></td>
					<td width="150"><input name="clientName" loxiaType="input"
						trim="true" /></td>
					<td class="label"><fmt:message
							key="label.person.sign.organizationCode" bundle="${lang}" /></td>
					<td width="150"><input name="organizationCode"
						loxiaType="input" trim="true" /></td>
					<!-- 贷款产品  
					<td class="label"><fmt:message
							key="label.audit.taskquery.prod_name" bundle="${lang}" /></td>
					<td width="150"><input id="prodName" name="prodName"
						loxiaType="input" trim="true" /></td>
					-->
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.credit.list.query.applyMoney" bundle="${lang}" /></td>
					<td width="150"><input name="checkMoneyMin" loxiaType="number"
						decimal="2" /></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input name="checkMoneyMax" loxiaType="number"
						decimal="2" /></td>
				</tr>
				<tr>
					<!--  审批金额 -->
					<td class="label"><fmt:message
							key="label.audit.taskquery.money_check" bundle="${lang}" /></td>
					<td width="150"><input id="moneyCheckBegin" loxiaType="number"
						name="moneyCheckBegin" decimal="2" /></td>
					<td class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input id="moneyCheckEnd" loxiaType="number"
						name="moneyCheckEnd" decimal="2" /></td>
					<!-- 审核状态 -->
					<td class="label"><fmt:message
							key="label.audit.taskquery.check_status" bundle="${lang }"></fmt:message></td>
					<td width="150"><bizoption:bizoption name="checkStatus"
							biztypekey="1033" isChoose="true" /></td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.audit.taskquery.checkPeriod" bundle="${lang}" /></td>
					<td width="150"><input id="checkPeriodBegin" loxiaType="date"
						name="checkPeriodBegin" /></td>
					<td class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input id="checkPeriodEnd" loxiaType="date"
						name="checkPeriodEnd" /></td>
					<!-- 审批人员 -->
					<td class="label"><fmt:message
							key="label.audit.taskquery.checkerCode" bundle="${lang}" /></td>
					<td><userDepartment:userDepartment bizHall="${bizHall}"
							id="checkerCode" name="checkerCode" isChoose="true" /></td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.audit.taskquery.checkEnd" bundle="${lang}" /></td>
					<td width="150"><input id="checkEndBegin" loxiaType="date"
						name="checkEndBegin" /></td>
					<td class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input id="checkEndEnd" loxiaType="date"
						name="checkEndEnd" /></td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.apply.clientproject.dataRole" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="rolelevel"
							id="roleLevel" name="roleLevel" /></td>

					<td class="label"></td>
					<td></td>
					<td align="center" class="label"></td>
					<td></td>
				</tr>
				<!--  审核提交时间区间
					<td class="label"><fmt:message
							key="label.audit.taskquery.checkPeriod" bundle="${lang}" /></td>
					<td width="150"><input id="applySubmitBegin" loxiaType="date"
						checkmaster="setMaxDate" name="checkSubmitBegin" /></td>
					<td class="label">至</td>
					<td width="150"><input id="applySubmitEnd" loxiaType="date"
						checkmaster="setMinDate" name="checkSubmitEnd" /></td>
					-->
			</table>
		</form>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
		<!--<div class="label"><s:text name="label.sys.loginlog.result"/></div>
	-->
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-tasklist"></table>
		<div id="pager"></div>
	</div>
	<div id="detail" class="hidden"></div>
</body>
</html>
