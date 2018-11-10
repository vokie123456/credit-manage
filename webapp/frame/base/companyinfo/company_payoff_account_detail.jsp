<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="compCode" id="payoff_compCode"
		value="${compCode}" />

	<form id="payoffAccountForm">
		<c:if test="${resultSize eq 0 }">
			<div>
				<fmt:message key="label.comp.contact.empty"
						bundle="${lang}" />
			</div>
		</c:if>
		<c:if test="${resultSize ne 0 }">
			<c:forEach items="${payoffAccountList}" var="payoffAccount"
				varStatus="loop">
				<div id="payoffAccount${loop.index}">
					<br />
					<div class="divBgColor">
						<table>
							<tr>
								<td width="150"><fmt:message key="label.comp.account.title"
										bundle="${lang}" /></td>
							</tr>
						</table>
					</div>
					<table>
						<tr>
							<td class="label"><fmt:message
									key="label.comp.account.complain" bundle="${lang}" /></td>
							<td align="left">${payoffAccount.payoffExplain}</td>

							<td class="label"><fmt:message
									key="label.comp.account.owner" bundle="${lang}" /></td>
							<td align="left">${payoffAccount.payoffAccountOwner}</td>

						</tr>


						<tr>
							<td class="label"><fmt:message key="label.comp.account.name"
									bundle="${lang}" /></td>
							<td align="left" width="150">${payoffAccount.accountName}</td>

							<td class="label"><fmt:message key="label.comp.account.bank"
									bundle="${lang}" /></td>
							<td align="left" width="150">${payoffAccount.accountBank}</td>

						</tr>

						<tr>
							<td class="label"><fmt:message
									key="label.comp.account.subBank" bundle="${lang}" /></td>
							<td align="left" width="150">${payoffAccount.accountSubBank}</td>

							<td class="label"><fmt:message
									key="label.comp.account.bankCon" bundle="${lang}" /></td>
							<td align="left" width="150">${payoffAccount.accountBankCon}</td>

						</tr>

						<tr>
							<td class="label"><fmt:message
									key="label.comp.account.feeType" bundle="${lang}" /></td>
							<td align="left" width="150"><bizoptionname:showname
									biztypekey="1132" value="${payoffAccount.payoffType}" /></td>


							<td class="label"><fmt:message
									key="label.comp.account.remark" bundle="${lang}" /></td>
							<td align="left" width="150">${payoffAccount.remark}</td>
						</tr>

					</table>
				</div>
			</c:forEach>
		</c:if>
	</form>
</body>