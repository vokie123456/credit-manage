<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.credit.credit_assessment.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/credit/credit_assessment.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<!-- 这里是页面内容区 -->
	<div id="div_Tab"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#creditDiv" id="a_credit">授信信息</a>
			</li>
			<li class="ui-state-default ui-corner-top"><a href="#div_body"
				id='a_apply'>申请表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div_body"
				id="a_inves">调查表</a></li>

		</ul>

		<div id="creditDiv">
			<div class="divBgColor">
				<fmt:message key="label.credit.credit_assessment.title"
					bundle="${lang}" />
				<!-- 用来标识是个人还是企业授信 -->
				<input type="hidden" id="basicType" value="${basicType }" /> <input
					type="hidden" id="clientId" value="${clientId }" /> <input
					type="hidden" id="taskId" value="${taskId }" /> <input
					type="hidden" id="credit_applyId" value="${applyId }" /> <input
					type="hidden" id="credit_projectId" value="${projectId }" /> <input
					type="hidden" id="modelIdHidden" value="${modelId }" />
			</div>

			<form id="creditAssessmentForm" method="post">
				<table>
					<tr>
						<td class="label"><fmt:message
								key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
						<td width="150">${clientName }</td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.apply.clientproject.credit_model" bundle="${lang}" /></td>
						<td width="150"><select name="modelId" id="modelId" /></td>
					</tr>
				</table>
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<th><fmt:message key="label.credit.th.indexName"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.credit.th.indexHigh"
								bundle="${lang}" /></th>
						<!--  
						<th id="status"><fmt:message key="label.credit.th.indexWay"
								bundle="${lang}" /></th>
						-->
						<th><fmt:message key="label.credit.th.indexCon"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.credit.th.indexSco"
								bundle="${lang}" /></th>
					</tr>
					<tbody id="creditAssessment"></tbody>
					<div style="font-size: 16px; font-weight: bold;" align="right">
						<label id="totalScore"></label>
					</div>
				</table>

			</form>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="label.credit.but.countLevel" bundle="${lang}"/>"
					id="countLevel">
					<fmt:message key="label.credit.but.countLevel" bundle="${lang}" />
				</button>
			</div>
			<br />
			<form id="creditRiskForm">
				<div class="divBgColor">信用评级信息</div>
				<input type="hidden" id="projectId" name="projectId"
					value="${projectId}" /> <input type="hidden" id="taskType"
					name="taskType" value="${ taskType}" /> <input type="hidden"
					id="taskId" name="taskId" value="${taskId}" /> <input
					type="hidden" id="compCode" name="compCode" value="${compCode}" />
				<input type="hidden" id="direction" name="direction" value="" /> <input
					type="hidden" id="backActivityId" name="backActivityId" value="" />
				<input type="hidden" id="operType" name="operType" value="" /> <input
					type="hidden" id="operReason" name="operReason" value="" /> <input
					type="hidden" id="operReasonRemark" name="operReasonRemark"
					value="" />

				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<th><fmt:message key="label.credit.th.riskGra"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.credit.th.riskRat"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.credit.th.creditM"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.credit.th.creditD"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.credit.th.creditA"
								bundle="${lang}" /></th>
					</tr>
					<tr>
						<!-- 年化利率 -->
						<td><input id="riskGrade" name="creditRiskVo.riskGrade"
							loxiaType="input" trim="true" value="${crisk.riskGrade }"
							readonly="true" /></td>
						<td><input id="riskRate" name="creditRiskVo.riskRate"
							loxiaType="number" trim="true" value="${crisk.riskRate }"
							decimal="2" readonly="true" /></td>
						<td><input id="" name="creditRiskVo.creditMoney"
							loxiaType="number" trim="true" value="${crisk.creditMoney }"
							decimal="2" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<td><input id="credit_periodDate"
							name="creditRiskVo.periodDate" loxiaType="date" trim="true"
							value="${crisk.periodDate }" mandatory="true" min="${nowDate}" /><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<td><input id="creditScoreAll"
							name="creditRiskVo.creditScoreAll" loxiaType="number" trim="true"
							value="${crisk.creditScoreAll }" readonly="true" /></td>
					</tr>
				</table>
			</form>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="label.assessCar.edit.save" bundle="${lang}"/>"
					id="addAssessment">
					<fmt:message key="label.assessCar.edit.save" bundle="${lang}" />
				</button>
			</div>
		</div>

		<div id="div_body"></div>
	</div>

</body>
</html>

