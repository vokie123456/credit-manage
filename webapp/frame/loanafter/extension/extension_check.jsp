<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.debt.info.title" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/extension/extension_check.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;   
}
#tabletitle{
	border-right:1px solid #dcdcdc ;
	border-bottom: 1px solid #dcdcdc;
	}
#tabletitle tr td{
		border-left: 1px solid #dcdcdc;
	border-top: 1px solid #dcdcdc;
}
#tabletitle tr th{
		border-left: 1px solid #dcdcdc;
	border-top: 1px solid #dcdcdc;
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
				href="#div-1">项目详情 </a></li>
			<!--  
			<li class="ui-state-default ui-corner-top"><a href="#div-2">还款计划</a></li>
			
			<li class="ui-state-default ui-corner-top"><a href="#div-2">电子文档</a></li>
			-->
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<form id="basicInfoForm">
				<div class="divBgColor">项目详情</div>
				<!-- class="buttonlist buttonDivWidth" -->
				<div >       
					<table width="100%"  class="textalignCenter tabcustomPeoNoborder"  cellpadding="0" cellspacing="0" >
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
							<td class="contentview" id="period">${vo.periods }</td>
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

			<form id="extendCheckForm">
				<div class="divBgColor">
					<fmt:message key="label.debt.info.title" bundle="${lang}" />
					<input type="hidden" id="taskId" value="${taskId}" /> <input
						type="hidden" id="taskType" value="${taskType}" />
				</div>

				<div>
				<!--  	<table width="100%"  style=""border="1" append="1" bordercolor="#EFEFEF">-->
					<table width="100%" cellpadding="0" cellspacing="0"  append="1"  id="tabletitle">
						<tr>
							<!-- 申请理由 -->
							<td class="label" style="text-align: right;width:10%;"><fmt:message
									key="label.extend.check.reason" bundle="${lang}" /></td>
							<td class="contentview" colspan="3"><textarea readonly="true"
									name="extendExcuse" loxiaType="input" trim="true">${ep.extendExcuse }</textarea></td>
						</tr>

						<!-- 针对哪次放款进行展期 -->
						<tr>
						    <input type="hidden" id="hiddenLendId"
								value="${ep.lendId}" name="lendId" />
								
							<td class="label"  style="text-align: right">放款批次：</td>
							<td id="tdLendDes" class="contentview"></td>
							
							<input type="hidden" name="projectId" value="${ep.projectId}"
								id="projectId" />
							<input type="hidden" name="extendPayment.extendId"
								value="${ep.extendId}" />
							
							
							<!-- 贷款期数-->
							<td class="label"  style="text-align: right">展期期数：</td>
							<td class="contentview"><input loxiaType="number" name="loanPeriod"
								id="loanPeriod" value="${ep.loanPeriod}" mandatory="true"
								readonly="readonly" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
							</td>
						</tr>
						<tr>
							<!-- 审核意见 -->
							<td class="label"  style="text-align: right"> <fmt:message
									key="label.extend.check.approveComments" bundle="${lang}" /></td>
							<td class="contentview" colspan="5"><textarea name="approveComments"
									loxiaType="input" trim="true">${ep.approveComments }</textarea></td>
						</tr>
					</table>
				</div>

			</form>

			<!-- 如果还款方式为“自定义还款，则选择费用项隐藏掉” -->
			<div id="costHiddenDiv">
				<form id="productCostForm">
					<!-- 产品费用 -->
					<div class="title" style="margin-top: 1em;">
						<fmt:message key="label.loaning.title2" bundle="${lang}" />
					</div>

					<table cellpadding="0" cellspacing="0"  append="1"  id="tabletitle" width="100%"
						id="tabProductCost">
						<thead>
							<tr>
								<th><fmt:message key="label.loaning.costTitle"
										bundle="${lang}" /></th>
								<th><fmt:message key="label.loaning.costMode"
										bundle="${lang}" /></th>
								<th><fmt:message key="label.loaning.costRate"
										bundle="${lang}" /></th>
								<th><fmt:message key="label.loaning.costFix"
										bundle="${lang}" /></th>
								<th><fmt:message key="label.loaning.costPeriod"
										bundle="${lang}" /></th>
							</tr>
						</thead>
						<tbody id="pCostBody">
							<c:forEach items="${pcost}" var="dis" varStatus="loop">
								<tr <c:if test="${dis.ifShow==100112}">style="display:none;"</c:if> >
									<td style="text-align: center;"><bizoptionname:showname biztypekey="1090"
											value="${dis.costCode }" /></td>
									<!--费用号及 费用项 -->
									<input type="hidden" name="productCostList.costCode"
										value="${dis.costCode }" />
									<input type="hidden" name="productCostList.costTitle"
										value="${dis.costTitle }" />

									<td><bizoption:bizoption biztypekey="1092" id=""
											mandatory="true" name="productCostList.costMode"
											isChoose="false" selected="${dis.costMode }"
											checkmaster="selectSetValue" /></td>
									<td><input type="text" loxiaType="money"
										name="productCostList.costRate" value="${dis.costRate }" /></td>
									<td><input type="text" loxiaType="number" decimal="2"
										name="productCostList.costFix" value="${dis.costFix }" /></td>
									<td><bizoption:bizoption biztypekey="1093" id="repayMode"
											name="productCostList.costPeriod" isChoose="false"
											selected="${dis.costPeriod }" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			</div>
			<!-- class="buttonlist buttonDivWidth" -->
			<div >
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="label.extend.check.button" bundle="${lang}"/>"
					id="checkBut">通过审核</button>
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="label.extend.check.button" bundle="${lang}"/>"
					id="backBut">驳回审核</button>
			</div>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>
</body>
</html>












