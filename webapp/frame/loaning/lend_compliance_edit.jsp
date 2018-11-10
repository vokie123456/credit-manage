<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/lend_compliance_edit.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>
<div class="divBgColor">合规信息</div>
<table class="col3">
	<tr>
		<td class="label">客户名称：</td>
		<td class="content">${clientBasic.clientName}</td>
		<td class="label">客户经理：</td>
		<td class="content"><showusername:showusername
				value="${clientProject.saleraCode}"></showusername:showusername></td>
	</tr>
<tr>
		<td class="label">放款金额(万元)：</td>
		<td class="content">${la.lendMoney}</td>
		<td class="label">贷款期限：</td>
		<td class="content">${pconfig.loanPeriod }</td>
	</tr>
	<tr>
		<td class="label">贷审会议编号：</td>
		<td class="content">${checkBasic.checkNo}</td>
		<td class="label"></td>
		<td class="content"></td>
	</tr>
</table>
<form id="lendComplianceForm" method="post">
	<input id="lendComplianceBasicLoanOptionValues"
		name="lendComplianceBasicLoanOptionValues" type="hidden" /> <input
		id="lendComplianceBasicContractOptionValues"
		name="lendComplianceBasicContractOptionValues" type="hidden" /> <input
		id="complianceAgent" name="complianceAgent"
		value="${clientProject.saleraCode}" type="hidden" />
	<div class="divBgColor">授信条件落实情况</div>
	<table class="col3">
		<tr>
			<td class="label"></td>
			<td class="content"></td>
			<td class="label"></td>
			<td class="content"></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
		<c:forEach items="${lendComplianceBasicLoanOptionList }"
			var="lendComplianceBasicLoanOption" varStatus="index">
			<tr>
				<td class="label" colspan="2">${lendComplianceBasicLoanOption.subtypeName }：</td>
				<td class="content" colspan="2"><c:forEach
						items="${systemDictionary3 }" var="systemDictionary" varStatus="i">
						<input type="radio" value="${systemDictionary.subtypeCode }"
							<c:if test="${i.count == 1 }">
							checked="checked"
							</c:if>
							<c:forEach items="${lendComplianceBasicLoanList }"
							var="lendComplianceBasicLoan">
							<c:if
								test="${lendComplianceBasicLoan.loanCondition == lendComplianceBasicLoanOption.subtypeCode && lendComplianceBasicLoan.ifPass == systemDictionary.subtypeCode }">
								checked="checked"
							</c:if>
							</c:forEach>
							id="${lendComplianceBasicLoanOption.subtypeCode }"
							name="lendComplianceBasicLoanOptionValue_${index.count }">${systemDictionary.subtypeName }
					</c:forEach></td>
				<td class="content" colspan="2"><c:forEach
						items='${lendComplianceBasicLoanList }'
						var='lendComplianceBasicLoan'>
						<c:if
							test='${lendComplianceBasicLoan.loanCondition == lendComplianceBasicLoanOption.subtypeCode }'>
							<c:set var="tempLoanRemark"
								value="${lendComplianceBasicLoan.loanRemark }"></c:set>
						</c:if>
					</c:forEach> <input id="result_${lendComplianceBasicLoanOption.subtypeCode }"
					value="${tempLoanRemark }" /></td>
			</tr>
		</c:forEach>
	</table>

	<div class="divBgColor">合同合规性审查</div>
	<table class="col3">
		<tr>
			<td class="label"></td>
			<td class="content"></td>
			<td class="label"></td>
			<td class="content"></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
		<c:forEach items="${lendComplianceBasicContractOptionList }"
			var="lendComplianceBasicContractOption" varStatus="index">
			<tr>
				<td class="label" colspan="2">${lendComplianceBasicContractOption.subtypeName }：</td>
				<td class="content" colspan="2"><c:forEach
						items="${systemDictionary2 }" var="systemDictionary" varStatus="i">
						<input type="radio" value="${systemDictionary.subtypeCode }"
							<c:if test="${i.count == 1 }">
							checked="checked"
							</c:if>
							<c:forEach items="${lendComplianceBasicContractList }"
							var="lendComplianceBasicContract">
							<c:if
								test="${lendComplianceBasicContract.contractCondition == lendComplianceBasicContractOption.subtypeCode && lendComplianceBasicContract.ifPass == systemDictionary.subtypeCode }">
								checked="checked"
							</c:if>
							</c:forEach>
							id="${lendComplianceBasicContractOption.subtypeCode }"
							name="lendComplianceBasicContractOptionValue_${index.count }" />
						 ${systemDictionary.subtypeName }
					</c:forEach></td>
				<td class="label" colspan="2"></td>
			</tr>
		</c:forEach>
	</table>
	<!-- 	上一节点操作意见 -->
	<div id="prevOpinionDiv"></div>
	<div class="divBgColor">审查结论</div>
	<table class="col3">
		<tr>
			<td class="label"></td>
			<td class="content"></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left: 10%">
			<textarea class="cleditor" id="complianceResult" name="complianceResult" rows="4" >${ucx:unCleanXSS(lendComplianceBasic.complianceResult) }</textarea>
					</td>
		</tr>
	</table>
	<div id="operateOrder" class="buttonlist buttonDivWidth">
		<input type="button" class="confirm" id="tempSave"  value="暂存"  loxiaType="button" />
	</div>
</form>