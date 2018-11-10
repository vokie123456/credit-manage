<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/companyinfo/company_payoff_account.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize"
		value="${resultSize}" />
	<input type="hidden" name="compCode" id="payoff_compCode" value="${compCode}" />

	<form id="payoffAccountForm">
		<c:forEach items="${payoffAccountList}" var="payoffAccount"
			varStatus="loop">
			<div id="payoffAccount${loop.index}">
				<br /> 
				<div class="divBgColor">
					<table>
						<tr>
							<td width="150"><fmt:message key="label.comp.account.title"
									bundle="${lang}" /></td>
							<td width="80%" align="right"><input type="button"
								onclick="deletePayoffAccount(${loop.index})"
								style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
								title="删除" /></td>
						</tr>
					</table>
				</div>
				<table>
					<tr>
						<td class="label"><fmt:message
								key="label.comp.account.complain" bundle="${lang}" /></td>
						<td align="left"><input
							id="payoffAccountList[${loop.index}].payoffExplain"
							loxiaType="input"
							name="payoffAccountList[${loop.index}].payoffExplain" trim="true"
							value="${payoffAccount.payoffExplain}" /></td>

						<td class="label"><fmt:message key="label.comp.account.owner"
								bundle="${lang}" /></td>
						<td align="left"><input
							id="payoffAccountList[${loop.index}].payoffAccountOwner"
							loxiaType="input"
							name="payoffAccountList[${loop.index}].payoffAccountOwner"
							trim="true" value="${payoffAccount.payoffAccountOwner}" /></td>

					</tr>


					<tr>
						<td class="label"><fmt:message key="label.comp.account.name"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input loxiaType="input"
							id="payoffAccountList[${loop.index}].accountName"
							name="payoffAccountList[${loop.index}].accountName"
							value="${payoffAccount.accountName}" /></td>

						<td class="label"><fmt:message key="label.comp.account.bank"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="payoffAccountList[${loop.index}].accountBank"
							name="payoffAccountList[${loop.index}].accountBank"
							loxiaType="input" trim="true"
							value="${payoffAccount.accountBank}" /></td>

					</tr>

					<tr>
						<td class="label"><fmt:message
								key="label.comp.account.subBank" bundle="${lang}" /></td>
						<td align="left" width="150"><input loxiaType="input"
							id="payoffAccountList[${loop.index}].accountSubBank"
							name="payoffAccountList[${loop.index}].accountSubBank"
							value="${payoffAccount.accountSubBank}" /></td>

						<td class="label"><fmt:message
								key="label.comp.account.bankCon" bundle="${lang}" /></td>
						<td align="left" width="150"><input loxiaType="input"
							id="payoffAccountList[${loop.index}].accountBankCon"
							name="payoffAccountList[${loop.index}].accountBankCon"
							value="${payoffAccount.accountBankCon}" /></td>

					</tr>

					<tr>
						<td class="label"><fmt:message
								key="label.comp.account.feeType" bundle="${lang}" /></td>
						<td align="left" width="150"><bizoption:bizoption
								biztypekey="1132"
								id="payoffAccountList[${loop.index}].payoffType"
								name="payoffAccountList[${loop.index}].payoffType"
								selected="${payoffAccount.payoffType}" /></td>


						<td class="label"><fmt:message
								key="label.comp.account.remark" bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="payoffAccountList[${loop.index}].remark"
							name="payoffAccountList[${loop.index}].remark" loxiaType="input"
							trim="true" value="${payoffAccount.remark}" /></td>
					</tr>

				</table>
			</div>
		</c:forEach>

		<div id="formPayoffAccount"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addPayoffAccount">添加账户</button>
		</div>


		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitPayoffAccount">保存</button>
		</div>
		</br>
	</form>
</body>