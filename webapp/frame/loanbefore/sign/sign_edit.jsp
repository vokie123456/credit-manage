<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/sign/sign_edit.js'/>"></script>
<title><fmt:message key="label.person.sign.info"
		bundle="${lang}" /></title>
<style type="text/css">
.label {
	text-align: left;
}

.hiddenClass {
	display: none;
}
</style>
<linkage:define />
</head>

<!-- 。。。。。。。。。。。弃用。。。。。。。。。。。。。 -->
<body contextpath="<%=request.getContextPath()%>">
	<form id="signForm" method="post">
		<input id="projectId" name="projectId" value="${projectId}"
			type="hidden" /> <input id="taskType" name="taskType"
			value="${taskType}" type="hidden" /> <input type="hidden"
			id="taskId" name="taskId" value="${taskId }" /> <input type="hidden"
			id="compCode" name="compCode" value="${compCode}" /> <input
			type="hidden" id="direction" name="direction" value="" /> <input
			type="hidden" id="backActivityId" name="backActivityId" value="" />
		<input type="hidden" id="operType" name="operType" value="" /> <input
			type="hidden" id="operReason" name="operReason" value="" /> <input
			type="hidden" id="operReasonRemark" name="operReasonRemark" value="" />
		<!-- 
		<div class="divBgColor">合同预览</div>
		<table class="col3">
			<tr>
				<td class="label">合同模板：</td>
				<td class="content"><select id="contractModel"
					class="ui-loxia-default">
						<option value="0">请选择</option>
						<c:forEach var="item" items="${contractModelList }">
							<option value="${item.id }">${item.fileName }</option>
						</c:forEach>
				</select></td>
				<td class="label"></td>
				<td class="content">
					<button type="button" loxiaType="button" class="confirm"
						id="preview">预览</button>
				</td>
			</tr>
		</table>
		 -->
		<div id="formdetail">
			<div class="divBgColor">
				<fmt:message key="label.sign.careful" bundle="${lang}" />
			</div>
			<input id="projectId1" name="signContract.projectId"
				value="${projectId}" type="hidden" /> <input id="signStauts1"
				name="signContract.signStatus" value="${signStauts}" type="hidden" />
			<input id="signId1" name="signContract.signId" value="${signId}"
				type="hidden" /> <input id="clientType" name="clientType"
				value="${clientType}" type="hidden" />
			<table class="col3">

				<tr>
					<td class="label"><fmt:message key="label.sign.contractId"
							bundle="${lang}" /></td>
					<td class="content"><input id="contractId"
						name="signContract.contractId" loxiaType="input" trim="true"
						mandatory="true" value="${signAddVo.contractId}" /><label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<td class="label"><fmt:message key="label.sign.bankCard"
							bundle="${lang}" /></td>
					<td class="content"><input id="openCardNo" name="openCardNo"
						loxiaType="input" trim="true" mandatory="true"
						value="${signAddVo.bankCard}" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label"><fmt:message key="label.sign.bankName"
							bundle="${lang}" /></td>
					<td class="content"><input id="openBank" name="openBank"
						loxiaType="input" trim="true" mandatory="true"
						value="${signAddVo.bankName}" /><label class="del_mandatory">&nbsp;&nbsp;*</label>
					</td>
					<td class="label"><fmt:message key="label.sign.clientName"
							bundle="${lang}" /></td>
					<td class="content">${clientName}</td>
				</tr>

				<tr>
					<td class="label"><fmt:message
							key="label.sign.project.startTime" bundle="${lang}" /></td>
					<td class="content"><input name="projectStartTime"
						loxiaType="date" trim="true" mandatory="true"
						value="${signAddVo.projectStartDate}" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<td class="label"><fmt:message
							key="label.sign.project.endTime" bundle="${lang}" /></td>
					<td class="content"><input name="projectEndTime"
						loxiaType="date" trim="true" mandatory="true"
						value="${signAddVo.projectEndDate}" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>

				<tr>
					<td class="label"><fmt:message key="label.sign.bankSub"
							bundle="${lang}" /></td>
					<td class="content"><input id="openBankSub" name="openBankSub"
						loxiaType="input" trim="true" mandatory="true"
						value="${signAddVo.bankSub}" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label"><fmt:message key="label.sign.signRemark"
							bundle="${lang}" /></td>
					<td colspan="3" class="content"><textarea
							name="signContract.signRemark" loxiaType="input" id="signRemark">${signAddVo.signRemark}</textarea></td>
				</tr>
			</table>
			<c:if test="${flagPerson eq 'person' and flag eq 'yes' }">
				<div class="divBgColor">共同还款人信息</div>
				<table class="col3">
					<tr>
						<input type="hidden" name="commonBank.bankId"
							value="${commonBank.bankId }" />
						<td class="label"><fmt:message key="label.sign.bankCard"
								bundle="${lang}" /></td>
						<td class="content"><input name="commonBank.bankNo"
							loxiaType="input" trim="true" mandatory="true"
							value="${commonBank.bankNo}" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<td class="label"><fmt:message key="label.sign.bankName"
								bundle="${lang}" /></td>
						<td class="content"><bizoption:bizoption biztypekey="1104"
								id="commonBank.bankName" name="commonBank.bankName"
								selected="${commonBank.bankName}" /> <label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
					<tr>

						<td class="label"><fmt:message key="label.sign.clientName"
								bundle="${lang}" /></td>
						<td class="content"><input name="commonBank.clientName"
							loxiaType="input" trim="true" mandatory="true"
							value="${commonBank.clientName}" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<td class="label"><fmt:message key="label.sign.bankSub"
								bundle="${lang}" /></td>
						<td class="content"><input name="commonBank.bankBranch"
							loxiaType="input" trim="true" mandatory="true"
							value="${commonBank.bankBranch}" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
				</table>
			</c:if>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：提交" id="submit">提交</button>

				<button type="submit" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sign.temporary" bundle="${lang}"/>"
					id="save">
					<fmt:message key="button.temporary" bundle="${lang}" />
				</button>
			</div>
		</div>
	</form>
</body>
</html>
