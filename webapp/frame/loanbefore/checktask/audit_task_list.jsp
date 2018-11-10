<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款审批页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.tasklist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/checktask/audit_task_list.js'/>"></script>
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
			<!-- 订单调查审核查询  -->
			<fmt:message key="title.audit.taskquery" bundle="${lang}" />
		</div>
		<form id="auditTaskFrm" method="post">
			<table>
				<tr>
					<!-- 项目编号-->
					<td class="label"><fmt:message
							key="label.audit.taskquery.project_code" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
					<!-- 证件类型  -->
					<td class="label"><fmt:message
							key="label.audit.taskquery.card_type" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1007"
							name="cardType" isChoose="true" /></td>
					<!--证件号码-->
					<td class="label"><fmt:message
							key="label.audit.taskquery.card_no" bundle="${lang}" /></td>
					<td width="150"><input id="cardNo" name="cardNo"
						loxiaType="input" trim="true" checkmaster="validateIdentify" /></td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.credit.list.query.applyMoney" bundle="${lang}" /></td>
					<td width="150"><input name="loanHopeMoneyBegin"
						loxiaType="number" decimal="2" /></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input name="loanHopeMoneyEnd"
						loxiaType="number" decimal="2" /></td>
					<!-- 客户姓名  -->
					<td class="label"><fmt:message
							key="label.audit.taskquery.client_name" bundle="${lang}" /></td>
					<td width="150"><input id="clientName" name="clientName"
						loxiaType="input" trim="true" /></td>
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
					<!--审批人员-->
					<td class="label"><fmt:message
							key="label.audit.taskquery.checkerCode" bundle="${lang}" /></td>
					<td><userDepartment:userDepartment bizHall="${bizHall}"
							id="checkerCode" name="checkerCode" isChoose="true" /></td>
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
					<!-- 审核状态 -->
					<td class="label"><fmt:message
							key="label.audit.taskquery.check_status" bundle="${lang }"></fmt:message></td>
					<td width="150"><bizoption:bizoption name="checkStatus"
							biztypekey="1033" isChoose="true" /></td>
				</tr>
				<tr>
					<tr>
						<!-- 				审结日期 -->
						<td class="label"><fmt:message
								key="label.audit.taskquery.checkEnd" bundle="${lang}" /></td>
						<td width="150"><input id="checkEndBegin" loxiaType="date"
							name="checkEndBegin" /></td>
						<td class="label"><fmt:message
								key="label.credit.list.query.to" bundle="${lang}" /></td>
						<td width="150"><input id="checkEndEnd" loxiaType="date"
							name="checkEndEnd" /></td>
						<!-- 数据权限 -->
						<td class="label"><fmt:message
								key="label.apply.clientproject.dataRole" bundle="${lang}" /></td>
						<td width="150"><bizoption:bizoption biztypekey="rolelevel"
								id="roleLevel" name="roleLevel" /></td>
						<td class="label"></td>
						<td></td>
						<td align="center" class="label"></td>
						<td></td>
					</tr>
					<tr>
						<!-- 客户来源 
					<td class="label"><fmt:message
							key="label.audit.taskquery.client_from" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption name="clientFrom"
							biztypekey="1004" isChoose="true" /></td>
					<!-- 贷款产品 
					<td class="label"><fmt:message
							key="label.audit.taskquery.prod_name" bundle="${lang}" /></td>
					<td width="150"><input id="prodName" name="prodName"
						loxiaType="input" trim="true" /></td>
					<!-- 贷款期数  
					<td class="label"><fmt:message
							key="label.audit.taskquery.loan_period" bundle="${lang }" /></td>
					<td width="150"><bizoption:bizoption name="loanPeriod"
							biztypekey="1024" isChoose="true" /></td>
					<!--  审核提交时间区间
					<td class="label"><fmt:message
							key="label.audit.taskquery.check_submit_time" bundle="${lang}" /></td>
					<td width="150"><input id="check_submit_begin"
						loxiaType="date" name="check_submit_begin" /></td>
					<td class="label">至</td>
					<td width="150"><input id="check_submit_end" loxiaType="date"
						name="check_submit_end" /></td>
					-->
					</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm" id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="reset" loxiaType="button" class="confirm" id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>
			</div>
		</form>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-tasklist"></table>
		<div id="pager"></div>
	</div>
	<div id="detail" class="hidden"></div>
</body>
</html>
