<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.clear.debt.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/cleardebt/clear_debt_check.js'/>"></script>
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
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">项目详情</a></li>
			<!--  
			<li class="ui-state-default ui-corner-top"><a href="#div-2">电子文档</a></li>
			-->
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<form id="basicInfoForm">
				<div class="divBgColor">项目详情</div>
				<div class="buttonlist buttonDivWidth">
					<table width="100%" border="0" append="0" bordercolor="#EFEFEF">
						<tr>
							<td class="label title">合同编号</td>
							<td width="150">${vo.contractId}</td>
							<td class="label title">项目编号</td>
							<td width="150">${vo.projectCode }</td>
							<td class="label title">产品名称</td>
							<td width="150">${vo.prodName }</td>
							<td class="label title">项目状态</td>
							<td width="150" id="proStatus">${vo.projectStautsStr }</td>
						</tr>
						<tr>
							<td class="label title">银行账号</td>
							<td width="150">${vo.bankCard }</td>
							<td class="label title">客户名称</td>
							<td width="150">${vo.clientName }</td>
							<td class="label title">证件类型</td>
							<td width="150">${vo.cardTypeStr }</td>
							<td class="label title">证件号码</td>
							<td width="150">${vo.cardNo }</td>
						</tr>
						<tr>
							<td class="label title">贷款金额</td>
							<td width="150">${vo.lendMoney }</td>
							<td class="label title">贷款期数</td>
							<td width="150">${vo.periods }</td>
							<td class="label title">已出期数</td>
							<td width="150">${vo.alreadyPeriods }</td>
							<td class="label title">诉讼日期</td>
							<td width="150"></td>
						</tr>
						<tr>
							<td class="label title">放款日期</td>
							<td width="150" id="proStatus">${vo.lendingTimeStr }</td>
							<td class="label title">首期还款日</td>
							<td width="150">${vo.firstRepayDate }</td>
							<td class="label title">结清日期</td>
							<td width="150">${vo.endTimeStr }</td>
						</tr>
					</table>
				</div>
			</form>

			<form id="clearDebtCheckForm">
				<div class="divBgColor">
					<fmt:message key="label.clear.debt.check.title" bundle="${lang}" />
					<input type="hidden" name="payoff.payoffId" value="${pi.payoffId }" />
					<input type="hidden" id="projectId" name="payoff.projectId"
						value="${pi.projectId }" />
				</div>

				<div>
					<table width="100%" border="1" append="1" bordercolor="#EFEFEF">
						<!-- 针对哪次放款进行展期 -->
						<tr>
							<input type="hidden" id="hiddenLendId" value="${pi.lendId}"
								name="payoff.lendId" />

							<td class="label">放款批次：</td>
							<td id="tdLendDes"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<!-- 清贷金额-->
							<td class="label"><fmt:message
									key="label.clear.debt.clear.money" bundle="${lang}" /></td>
							<td width="150"><input loxiaType="money"
								id="totalPayAmount" name="payoff.totalPayAmount"
								value="${pi.totalPayAmount}" readOnly='readOnly' /></td>

							<input type="hidden" id="tempTotal" value="${pi.totalPayAmount}" />
							<!-- 最后还款日 -->
							<td class="label"><fmt:message
									key="label.clear.debt.clear.date" bundle="${lang}" /></td>
							<td width="150"><input loxiaType="date" id="expiredDate"
								mandatory="true" name="payoff.expiredDate" min="${nowDate }" />
								<label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>

						<tr>
							<!-- 审核意见 -->
							<td class="label"><fmt:message
									key="label.clear.debt.check.mements" bundle="${lang}" /></td>
							<td width="150" colspan="5"><textarea id="approveComments"
									name="payoff.approveComments" loxiaType="input" trim="true"></textarea></td>
							<input type="hidden" id="statusHidden" value="${pi.payoffStatus}" />
						</tr>
					</table>
				</div>


				<!-- 加收费用项 
				<div class="title" style="margin-top: 1em;">
					<fmt:message key="label.loaning.title2" bundle="${lang}" />
				</div>

				<table border="1" append="1" bordercolor="#EFEFEF" width="100%">
					<thead>
						<tr>
							<th><fmt:message key="label.loaning.costCode"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.clear.debt.plus.fee"
									bundle="${lang}" /></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><bizoptionname:showname biztypekey="1090" value="109007" /></td>
							<td><input loxiaType="number" decimal="2" name="plusFee"
								value="" /></td>
						</tr>
						<tr>
							<td><bizoptionname:showname biztypekey="1090" value="109008" /></td>
							<td><input loxiaType="number" decimal="2"
								name="plusInterest" value="" /></td>

						</tr>
					</tbody>
				</table>
				-->
			</form>
			
			<div class="buttonlist buttonDivWidth" id="clearDebtButDiv">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="label.extend.check.button" bundle="${lang}"/>"
					id="checkBut">通过</button>
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="label.extend.check.button" bundle="${lang}"/>"
					id="backBut">驳回</button>
			</div>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>
</body>
</html>
