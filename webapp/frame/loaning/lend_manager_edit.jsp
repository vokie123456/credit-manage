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
	src="<c:url value='/scripts/frame/loaning/lend_manager_edit.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>
<div class="divBgColor">总经理审核</div>
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
<form id="lendManagerForm" method="post">
	<input id="lendManagerBasicLoanOptionValues"
		name="lendManagerBasicLoanOptionValues" type="hidden" type="hidden" />
	<input id="lendManagerBasicContractOptionValues"
		name="lendManagerBasicContractOptionValues" type="hidden"
		type="hidden" /> <input id="managerAgent" name="managerAgent"
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
		<c:forEach items="${lendManagerBasicLoanOptionList }"
			var="lendManagerBasicLoanOption" varStatus="index">
			<tr>
				<td class="label" colspan="2">${lendManagerBasicLoanOption.subtypeName }：</td>
				<td class="content" colspan="2"><c:forEach
						items="${systemDictionary3 }" var="systemDictionary" varStatus="i">
						<input type="radio" value="${systemDictionary.subtypeCode }"
							<c:if test="${i.count == 1 }">
							checked="checked"
							</c:if>
							<c:forEach items="${lendComplianceBasicLoanList }"
							var="lendComplianceBasicLoan">
							<c:if
								test="${lendComplianceBasicLoan.loanCondition == lendManagerBasicLoanOption.subtypeCode && lendComplianceBasicLoan.ifPass == systemDictionary.subtypeCode }">
								checked="checked"
							</c:if>
							</c:forEach>
							<c:forEach items="${lendManagerBasicLoanList }"
							var="lendManagerBasicLoan">
							<c:if
								test="${lendManagerBasicLoan.loanCondition == lendManagerBasicLoanOption.subtypeCode && lendManagerBasicLoan.ifPass == systemDictionary.subtypeCode }">
								checked="checked"
							</c:if>
							</c:forEach>
							id="${lendManagerBasicLoanOption.subtypeCode }"
							name="lendManagerBasicLoanOptionValue_${index.count }">${systemDictionary.subtypeName }
					</c:forEach></td>
				<td class="content" colspan="2"><c:forEach
						items='${lendManagerBasicLoanList }' var='lendManagerBasicLoan'>
						<c:if
							test='${lendManagerBasicLoan.loanCondition == lendManagerBasicLoanOption.subtypeCode }'>
							<c:set var="tempLoanRemark"
								value="${lendManagerBasicLoan.loanRemark }"></c:set>
						</c:if>
					</c:forEach> <c:forEach items='${lendComplianceBasicLoanList }'
						var='lendComplianceBasicLoan'>
						<c:if
							test='${lendComplianceBasicLoan.loanCondition == lendManagerBasicLoanOption.subtypeCode }'>
							<c:set var="tempLoanRemark"
								value="${lendComplianceBasicLoan.loanRemark }"></c:set>
						</c:if>
					</c:forEach> <input id="result_${lendManagerBasicLoanOption.subtypeCode }"
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
		<c:forEach items="${lendManagerBasicContractOptionList }"
			var="lendManagerBasicContractOption" varStatus="index">
			<tr>
				<td class="label" colspan="2">${lendManagerBasicContractOption.subtypeName }：</td>
				<td class="content" colspan="2"><c:forEach
						items="${systemDictionary2 }" var="systemDictionary" varStatus="i">
						<input type="radio" value="${systemDictionary.subtypeCode }"
							<c:if test="${i.count == 1 }">
							checked="checked"
							</c:if>
							<c:forEach items="${lendComplianceBasicContractList }"
							var="lendComplianceBasicContract">
							<c:if
								test="${lendComplianceBasicContract.contractCondition == lendManagerBasicContractOption.subtypeCode && lendComplianceBasicContract.ifPass == systemDictionary.subtypeCode }">
								checked="checked"
							</c:if>
							</c:forEach>
							<c:forEach items="${lendManagerBasicContractList }"
							var="lendManagerBasicContract">
							<c:if
								test="${lendManagerBasicContract.contractCondition == lendManagerBasicContractOption.subtypeCode && lendManagerBasicContract.ifPass == systemDictionary.subtypeCode }">
								checked="checked"
							</c:if>
							</c:forEach>
							id="${lendManagerBasicContractOption.subtypeCode }"
							name="lendManagerBasicContractOptionValue_${index.count }" />
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
				<textarea class="cleditor" id="managerResult" name="managerResult" rows="4" >${ucx:unCleanXSS(lendManagerBasic.managerResult ) }${ucx:unCleanXSS(lendComplianceBasic.complianceResult ) }</textarea>
		</td>
		</tr>
	</table>
	<div id="operateOrder" class="buttonlist buttonDivWidth">
		<input type="button" class="confirm" id="tempSave"  value="暂存"  loxiaType="button" />
	</div>
</form>