<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.research.add.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/extension/extension_sign.js'/>"></script>
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

	<div class="divBgColor">项目详情</div>
	<!--  class="buttonlist buttonDivWidth" --> 
	<div>
		<table width="100%"  class="textalignCenter tabcustomPeoNoborder"  cellpadding="0" cellspacing="0" >
			<tr>
				<td class="labelview">合同编号：</td>
				<td class="contentview" width="150">${vo.clientProjectVo.contractId}</td>
				<td class="labelview">项目编号：</td>
				<td class="contentview" width="150">${vo.clientProjectVo.projectCode }</td>
				<td class="labelview">产品名称：</td>
				<td class="contentview" width="150">${vo.clientProjectVo.prodName }</td>
				<td class="labelview">项目状态：</td>
				<td class="contentview" width="150" id="proStatus">${vo.clientProjectVo.projectStautsStr }</td>
			</tr>
			<tr>
				<td class="labelview">银行账号：</td>
				<td class="contentview" width="150">${vo.clientProjectVo.bankCard }</td>
				<td class="labelview">客户名称：</td>
				<td class="contentview" width="150">${vo.clientProjectVo.clientName }</td>
				<td class="labelview">证件类型：</td>
				<td class="contentview" width="150">${vo.clientProjectVo.cardTypeStr }</td>
				<td class="labelview">证件号码：</td>
				<td class="contentview" width="150">${vo.clientProjectVo.cardNo }</td>
			</tr>
			<tr>
				<td class="labelview">贷款金额：</td>
				<td class="contentview" width="150">${vo.clientProjectVo.lendMoney }</td>
				<td class="labelview">贷款期数：</td>
				<td class="contentview"  width="150" id="dkPeriod">${vo.clientProjectVo.periods }</td>
				<td class="labelview">已出期数：</td>
				<td class="contentview"  width="150">${vo.clientProjectVo.alreadyPeriods }</td>
				<td class="labelview">诉讼日期：</td>
				<td class="contentview"  width="150"></td>
			</tr>
			<tr>
				<td class="labelview">放款日期：</td>
				<td class="contentview"  width="150" id="proStatus">${vo.clientProjectVo.lendingTimeStr }</td>
				<td class="labelview">首期还款日：</td>
				<td class="contentview"  width="150">${vo.clientProjectVo.firstRepayDate }</td>
				<td class="labelview">结清日期：</td>
				<td class="contentview" width="150">${vo.clientProjectVo.endTimeStr }</td>
			</tr>
		</table>
	</div>
	<form id="frm-extension">

		<div class="divBgColor">展期审核</div>
		<div>
				<table width="100%" class="textalignCenter tabcustomPeoNoborder"  cellpadding="0" cellspacing="0">
				<tr>
					<!-- 申请理由 -->
					<td  class="labelNum" ><fmt:message key="label.extend.check.reason"
							bundle="${lang}" /></td>
					<td class="contentNum"  width="150" colspan="3">${sign.extendExcuse }</td>
				</tr>
				<!-- 针对哪次放款进行展期 -->
				<tr>
					<input type="hidden" id="hiddenLendId" value="${sign.lendId}"
						name="lendId" />
					<input type="hidden" id="hiddenProId" value="${sign.projectId}" />

					<td class="labelNum" >放款批次：</td>
					<td class="contentNum"  id="tdLendDes" width="150"></td>

					<!-- 贷款期数-->
					<td class="labelNum" >展期期数</td>
					<td class="contentNum"  width="150">${sign.loanPeriod}</td>

				</tr>

				<tr>
					<!-- 审核意见 -->
					<td class="labelview" ><fmt:message
							key="label.extend.check.approveComments" bundle="${lang}" /></td>
					<td width="150" colspan="5" class="contentview" >${sign.approveComments }</td>
				</tr>
			</table>
		</div>

		<!-- 如果还款方式为“自定义还款，则选择费用项隐藏掉” -->
		<div>
			<form>
				<!-- 产品费用 -->
				<div class="divBgColor" style="margin-top: 1em;">
					<fmt:message key="label.loaning.title2" bundle="${lang}" />
				</div>

				<table class="textalignCenter tabcustom"  cellpadding="0" cellspacing="0" >
					<thead>
						<tr class="tabcustomTr">
							<th><fmt:message key="label.loaning.costTitle"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costMode"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costRate"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costFix"
									bundle="${lang}" /></th>
							<th class="tabBorderRight"><fmt:message key="label.loaning.costPeriod"
									bundle="${lang}" /></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${pcost}" var="dis" varStatus="loop">
							<tr <c:if test="${dis.ifShow==100112}">style="display:none;"</c:if> >
								<td><bizoptionname:showname biztypekey="1090"
										value="${dis.costCode }" /></td>

								<td><bizoptionname:showname biztypekey="1092"
										value="${dis.costMode }" /></td>
								<td>${dis.costRate }</td>
								<td>${dis.costFix }</td>
								<td class="tabBorderRight"><bizoptionname:showname biztypekey="1093"
										value="${dis.costPeriod }" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		</div>
		<br />
		<div class="divBgColor">展期签约</div>
		<table>
			<input type="hidden" name="projectId" value="${vo.projectId }" />
			<input type="hidden" name="extendId" value="${sign.extendId }" />
			<tr>
				<td class="labelview">展期合同号</td>
				<td width="350"><label>${contractId }</label><input
					name="contractNo" value="${sign.contractNo }" loxiaType="input"
					mandatory="true" style="width: 40%" /> <label class="del_mandatory">*</label></td>
				<td class="labelview">签约日期</td>
				<td width="140"><input name="signDate" id="signDate"
					value="${sign.signDate }" loxiaType="date" max="${nowDate }"
					mandatory="true" /> <label class="del_mandatory">*</label></td>
			</tr>
		</table>
	</form>

	<div class="buttonlist buttonDivWidth">

		<button type="button" loxiaType="button" class="confirm hidden1"
			title="tip：" id="btnSubmit">
			<fmt:message key="button.submit" bundle="${lang}" />
		</button>
	</div>

</body>
</html>
