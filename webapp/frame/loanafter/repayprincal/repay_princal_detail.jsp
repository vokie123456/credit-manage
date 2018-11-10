<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/repayprincal/repay_princal_detail.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}
	.ui-jqgrid-htable{
		width:100%;border-top: 1px solid rgb(204,204,204);border-left: 1px solid rgb(204,204,204);border-right: 1px solid rgb(204,204,204);
	}
	.ui-jqgrid-htable tr td{
		border-right: 1px solid rgb(204,204,204);
		border-bottom:1px solid rgb(204,204,204);
		height: 25px;
		text-align: center;
		}
		.ui-jqgrid-htable tr th{
		border-bottom: 1px solid rgb(204,204,204);height: 25px;
		border-right: 1px solid rgb(204,204,204);
		}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">

	<form>
	
		<div class="divBgColor">项目详情</div>
		<!--  class="buttonlist buttonDivWidth"-->
		<div >
			<table width="100%"  class="textalignCenter tabcustomPeoNoborder"  cellpadding="0" cellspacing="0">
				<tr>
					<td class="labelview">合同编号：</td>
					<td class="contentview">${vo.contractId}</td>
					<td class="labelview">项目编号：</td>
					<td class="contentview">${vo.projectCode }</td>
					<td class="labelview">产品名称：</td>
					<td class="contentview">${vo.prodName }</td>
					<td class="labelview">项目状态：</td>
					<td class="contentview" id="proStatus">${vo.projectStautsStr }</td>
				</tr>
				<tr>
					<td class="labelview">银行账号：</td>
					<td class="contentview">${vo.bankCard }</td>
					<td class="labelview">客户名称：</td>
					<td class="contentview">${vo.clientName }</td>
					<td class="labelview">证件类型：</td>
					<td class="contentview">${vo.cardTypeStr }</td>
					<td class="labelview">证件号码：</td>
					<td class="contentview">${vo.cardNo }</td>
				</tr>
				<tr>
					<td class="labelview">贷款金额：</td>
					<td class="contentview">${vo.lendMoney }</td>
					<td class="labelview">贷款期数：</td>
					<td class="contentview">${vo.periods }</td>
					<td class="labelview">已出期数：</td>
					<td class="contentview">${vo.alreadyPeriods }</td>
					<td class="labelview">诉讼日期：</td>
					<td class="contentview"></td>
				</tr>
				<tr>
					<td class="labelview">放款日期：</td>
					<td class="contentview" id="proStatus">${vo.lendingTimeStr }</td>
					<td class="labelview">首期还款日：</td>
					<td class="contentview">${vo.firstRepayDate }</td>
					<td class="labelview">结清日期：</td>
					<td class="contentview">${vo.endTimeStr }</td>
				</tr>
			</table>
		</div>
	</form>
	<br />

   <!-- 提前还本详细 -->
	<form >
		<div class="divBgColor">
			<fmt:message key="label.repay.princal.title" bundle="${lang}" />
		</div>

		<!-- 针对哪次放款进行展期 -->
				<tr>
					<input type="hidden" id="hiddenProId" value="${projectId}" />

				</tr>
		<form>
			<table  class="textalignCenter tabcustom"  cellpadding="0" cellspacing="0">
				<thead>
					<tr class="tabcustomTr" >
					    <th><fmt:message key="label.repay.lend.code"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.repay.princal.moneydetail"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.repay.princal.datedetail"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.repay.princal.input"
								bundle="${lang}" /></th>
						<th style="border-right:0px;"><fmt:message key="label.repay.princal.inputtime"
								bundle="${lang}" /></th>
					</tr>
				</thead>
				<tbody id="detailBody">
					<c:forEach items="${rplist}" var="dis" varStatus="loop">
						<tr>
							<td width="160" class="content" style="text-align: center;"
								id="lendCodeTd${loop.index }"><input type="hidden"
								id="hiddenLendCode${loop.index }" value="${dis.lendId }" /></td>
							<td width="160" class="content" style="text-align:center;">${dis.repayPrincal }</td>
							<td width="160" class="content" style="text-align:center;">${dis.repayDate }</td>
							<td width="160" class="content" style="text-align:center;">${dis.inputName }</td>
							<td width="160" class="content" style="text-align:center;border-right: 0px;">${dis.inputDate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	</div>

</body>
</html>
