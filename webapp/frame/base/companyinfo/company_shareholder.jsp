<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/companyinfo/company_shareholder.js'/>"></script>

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
	<input type="hidden" name="compCode" id="shareholder_compCode"
		value="${compCode}" />

	<form id="shareholderForm">
		<c:forEach items="${shareholderList}" var="share" varStatus="loop">
			<div id="shareholder${loop.index}">
				<br />
				<div class="divBgColor">
					<table>
						<tr>
							<td width="150"><fmt:message key="label.comp.share.tilte"
									bundle="${lang}" /></td>
							<td width="80%" align="right"><input type="button"
								onclick="deleteShareholder(${loop.index})"
								style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
								title="删除" /></td>
						</tr>
					</table>
				</div>
				<table>
					<tr>
						<td class="label"><fmt:message key="label.comp.share.type"
								bundle="${lang}" /></td>
						<td align="left"><bizoption:bizoption biztypekey="1129"
								isChoose="true"
								id="shareholderList[${loop.index}].shareholderType"
								name="shareholderList[${loop.index}].shareholderType"
								selected="${share.shareholderType}" /></td>

						<td class="label"><fmt:message key="label.comp.share.name"
								bundle="${lang}" /></td>
						<td align="left"><input
							id="shareholderList[${loop.index}].shareholderName"
							loxiaType="input"
							name="shareholderList[${loop.index}].shareholderName" trim="true"
							value="${share.shareholderName}" /></td>

					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.comp.share.legalName" bundle="${lang}" /></td>

						<td align="left" width="150"><input
							id="shareholderList[${loop.index}].legalName" loxiaType="input"
							name="shareholderList[${loop.index}].legalName" trim="true"
							value="${share.legalName}" /></td>

						<td class="label"><fmt:message
								key="label.comp.share.duePerson" bundle="${lang}" /></td>
						<td align="left"><input
							id="shareholderList[${loop.index}].mianDuePerson"
							loxiaType="input"
							name="shareholderList[${loop.index}].mianDuePerson" trim="true"
							value="${share.mianDuePerson}" /></td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.comp.share.cardType" bundle="${lang}" /></td>
						<td align="left" width="150"><bizoption:bizoption
								biztypekey="1007" isChoose="true"
								id="cardType"
								name="shareholderList[${loop.index}].cardType"
								selected="${share.cardType}" checkmaster="validateCardType"/></td>

						<td class="label"><fmt:message key="label.comp.share.cardNo"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="cardNo"
							name="shareholderList[${loop.index}].cardNo" loxiaType="input"
							trim="true" value="${share.cardNo}" checkmaster="validateIdentify"/></td>

					</tr>

					<tr>
						<td class="label"><fmt:message key="label.comp.share.way"
								bundle="${lang}" /></td>
						<td align="left" width="150"><bizoption:bizoption
								biztypekey="1130" isChoose="true"
								id="shareholderList[${loop.index}].investmentWay"
								name="shareholderList[${loop.index}].investmentWay"
								selected="${share.investmentWay}" /></td>

						<td class="label"><fmt:message
								key="label.comp.share.currency" bundle="${lang}" /></td>
						<td align="left" width="150"><bizoption:bizoption
								biztypekey="1103" isChoose="true"
								id="shareholderList[${loop.index}].investmentCurrency"
								name="shareholderList[${loop.index}].investmentCurrency"
								selected="${share.investmentCurrency}" /></td>

					</tr>

					<tr>
						<td class="label"><fmt:message key="label.comp.share.money"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input loxiaType="number"
							id="shareholderList[${loop.index}].investmentAccount"
							name="shareholderList[${loop.index}].investmentAccount"
							value="${share.investmentAccount}" /></td>

						<td class="label"><fmt:message key="label.comp.share.pMoney"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="shareholderList[${loop.index}].investmentAccountPractical"
							name="shareholderList[${loop.index}].investmentAccountPractical"
							loxiaType="number" trim="true"
							value="${share.investmentAccountPractical}" /></td>

					</tr>

					<tr>
						<td class="label"><fmt:message key="label.comp.share.rate"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input loxiaType="number"
							id="shareholderList[${loop.index}].shareStock"
							name="shareholderList[${loop.index}].shareStock"
							value="${share.shareStock}" /></td>

						<td class="label"><fmt:message key="label.comp.share.date"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="shareholderList[${loop.index}].shareDate"
							name="shareholderList[${loop.index}].shareDate" loxiaType="date"
							trim="true" value="${share.shareDate}" /></td>

					</tr>

					<tr>
						<td class="label"><fmt:message key="label.comp.share.code"
								bundle="${lang}" /></td>
						<td class="label"><input
							id="shareholderList[${loop.index}].loanCardCode"
							loxiaType="input"
							name="shareholderList[${loop.index}].loanCardCode" trim="true"
							value="${share.loanCardCode}" /></td>
						<td class="label"><fmt:message key="label.comp.share.remark"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="shareholderList[${loop.index}].remark"
							name="shareholderList[${loop.index}].remark" loxiaType="input"
							trim="true" value="${share.remark}" /></td>
					</tr>
				</table>
			</div>
		</c:forEach>

		<div id="formShareholder"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addShareholder">添加股东</button>
		</div>


		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitShareholder">保存</button>
		</div>
		</br>
	</form>
</body>