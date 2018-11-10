<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/cleardebt/business_clear_debt_detail.js'/>"></script>

<fmt:setBundle basename="messages" var="lang" />
<style type="text/css">
.label {
	text-align: left;
}

.title {
	background-color: #9BB3CD;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">

	<form>
		<div class="divBgColor">
			<fmt:message key="label.clear.debt.check.title" bundle="${lang}" />
		</div>

		<div>
			<table width="100%" border="1" append="1" bordercolor="#EFEFEF">
				<tr>
					<td class="label"><fmt:message
							key="label.clear.debt.clear.date" bundle="${lang}" /></td>
					<td width="150">${pi.expiredDate}</td>
				</tr>
				<tr>
					<td class="label">清贷金额(万元)：</td>
					<td width="150">${pi.totalPrincipal}</td>
				</tr>
				<tr>
					<td class="label"><fmt:message key="label.clear.debt.inter"
							bundle="${lang}" /></td>
					<td width="150">${pi.totalInterest}</td>
				</tr>

			</table>
		</div>
		<div class="buttonlist buttonDivWidth">
			<button id="operateBack" type="button" loxiaType="button"
				class="confirm">
				<fmt:message key="button.toback" bundle="${lang}" />
			</button>
		</div>
	</form>
</body>
</html>
