<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 个人签约列表查询-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.person.sign.query"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/sign/sign_list.js'/>"></script>
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
			<fmt:message key="label.person.sign.query.info" bundle="${lang}" />
		</div>
		<form id="signListForm" method="post">
			<table>
				<tr>
					<td class="label"><fmt:message
							key="label.person.sign.project_code" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
					<td class="label"><fmt:message
							key="label.person.sign.client_name" bundle="${lang}" /></td>
					<td width="150"><input id="clientName" name="clientName"
						loxiaType="input" trim="true" /></td>

				</tr>
				<tr>
					<td><fmt:message key="label.person.sign.card_type"
							bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1007"
							name="cardType" isChoose="true" /></td>
					<td class="label"><fmt:message key="label.person.sign.card_no"
							bundle="${lang}" /></td>
					<td width="150"><input id="cardNo" name="cardNo"
						loxiaType="input" trim="true" /></td>

				</tr>
				<tr>
					<td class="label"><fmt:message key="label.sign.contractId"
							bundle="${lang}" /></td>
					<td width="150"><input name="contractId" loxiaType="input"
						trim="true" /></td>
					<!--  审批金额 -->
					<td class="label"><fmt:message
							key="label.audit.taskquery.money_check" bundle="${lang}" /></td>
					<td width="150"><input id="moneyCheckBegin" loxiaType="number"
						decimal="2" name="moneyCheckBegin" /></td>
					<td class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input id="moneyCheckEnd" loxiaType="number"
						name="moneyCheckEnd" decimal="2" /></td>
				</tr>
				<tr>

				</tr>
				<tr>
					<!-- 签约人员 -->
					<td class="label"><fmt:message key="label.sign.signerCode"
							bundle="${lang}" /></td>
					<td><userDepartment:userDepartment bizHall="${bizHall}"
							id="signerCode" name="signerCode" isChoose="true" /></td>
					<!-- 签约日期 -->
					<td class="label"><fmt:message key="label.sign.signDate"
							bundle="${lang}" /></td>
					<td><input id="signEndBegin" loxiaType="date"
						name="signEndBegin" /></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td><input id="signEndEnd" loxiaType="date" name="signEndEnd" /></td>
				</tr>
				<tr>
					<!-- 签约状态 -->
					<td class="label"><fmt:message
							key="label.person.sign.signStatus" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption name="signStatus"
							biztypekey="1036" isChoose="true" /></td>
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
				<!-- 
				<tr>
					<td class="label"><fmt:message
							key="label.person.sign.returnReason" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1056"
							name="returnReason" isChoose="true" /></td>
					<td class="label"><fmt:message
							key="label.person.sign.signSubmitTime" bundle="${lang}" /></td>
					<td><input id="signSubmitBegin" loxiaType="date"
						name="signSubmitBegin" checkmaster="setMinDate1" /></td>
					<td align="center" class="label"><fmt:message
							key="label.person.sign.signSubmitTo" bundle="${lang}" /></td>
					<td><input id="signSubmitEnd" loxiaType="date"
						name="signSubmitEnd" checkmaster="setMaxDate1" /></td>

					<td class="label"><fmt:message
							key="label.person.sign.signReturnTime" bundle="${lang}" /></td>
					<td><input id="signReturnBegin" loxiaType="date"
						name="signReturnBegin" checkmaster="setMinDate2" /></td>
					<td align="center" class="label"><fmt:message
							key="label.person.sign.signSubmitTo" bundle="${lang}" /></td>
					<td><input id="signReturnEnd" loxiaType="date"
						name="signReturnEnd" checkmaster="setMaxDate2" /></td>
					<td colspan="2"></td>
				</tr>
				 -->
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.person.sign.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.person.sign.reset" bundle="${lang}"/>"
					id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>
				<!--  
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.person.sign" bundle="${lang}"/>"
					id="sign">
					<fmt:message key="button.sign" bundle="${lang}" />
				</button>
				-->
			</div>
			<%@include file="/common/paginationInit.jsp"%>
			<table id="tbl-signlist"></table>
			<div id="pager"></div>
		</form>
	</div>
</body>
</html>
