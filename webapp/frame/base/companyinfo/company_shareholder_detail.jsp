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
	<input type="hidden" name="compCode" id="shareholder_compCode"
		value="${compCode}" />

	<form id="shareholderForm">
		<c:if test="${resultSize eq 0 }">
			<div>
				<fmt:message key="label.comp.contact.empty"
						bundle="${lang}" />
			</div>
		</c:if>
		<c:if test="${resultSize ne 0 }">
			<c:forEach items="${shareholderList}" var="share" varStatus="loop">
				<div id="shareholder${loop.index}">
					<br /> 
					<div class="divBgColor">
						<table>
							<tr>
								<td width="150"><fmt:message key="label.comp.share.tilte"
										bundle="${lang}" /></td>
							</tr>
						</table>
					</div>
					<table>
						<tr>
							<td class="label"><fmt:message key="label.comp.share.type"
									bundle="${lang}" /></td>
							<td align="left"><bizoptionname:showname biztypekey="1129"
									value="${share.shareholderType}" /></td>

							<td class="label"><fmt:message key="label.comp.share.name"
									bundle="${lang}" /></td>
							<td align="left">${share.shareholderName}</td>

						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.comp.share.legalName" bundle="${lang}" /></td>

							<td align="left" width="150">${share.legalName}</td>

							<td class="label"><fmt:message
									key="label.comp.share.duePerson" bundle="${lang}" /></td>
							<td align="left">${share.mianDuePerson}</td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.comp.share.cardType" bundle="${lang}" /></td>
							<td align="left" width="150"><bizoptionname:showname
									biztypekey="1007" value="${share.cardType}" /></td>

							<td class="label"><fmt:message key="label.comp.share.cardNo"
									bundle="${lang}" /></td>
							<td align="left" width="150">${share.cardNo}</td>

						</tr>

						<tr>
							<td class="label"><fmt:message key="label.comp.share.way"
									bundle="${lang}" /></td>
							<td align="left" width="150"><bizoptionname:showname
									biztypekey="1130" value="${share.investmentWay}" /></td>

							<td class="label"><fmt:message
									key="label.comp.share.currency" bundle="${lang}" /></td>
							<td align="left" width="150"><bizoptionname:showname
									biztypekey="1103" value="${share.investmentCurrency}" /></td>

						</tr>

						<tr>
							<td class="label"><fmt:message key="label.comp.share.money"
									bundle="${lang}" /></td>
							<td align="left" width="150">${share.investmentAccount}</td>

							<td class="label"><fmt:message key="label.comp.share.pMoney"
									bundle="${lang}" /></td>
							<td align="left" width="150">${share.investmentAccountPractical}</td>

						</tr>

						<tr>
							<td class="label"><fmt:message key="label.comp.share.rate"
									bundle="${lang}" /></td>
							<td align="left" width="150">${share.shareStock}</td>

							<td class="label"><fmt:message key="label.comp.share.date"
									bundle="${lang}" /></td>
							<td align="left" width="150">${share.shareDate}</td>

						</tr>

						<tr>
							<td class="label"><fmt:message key="label.comp.share.code"
									bundle="${lang}" /></td>
							<td class="label">${share.loanCardCode}</td>
							<td class="label"><fmt:message key="label.comp.share.remark"
									bundle="${lang}" /></td>
							<td align="left" width="150">${share.remark}</td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</c:if>
	</form>
</body>