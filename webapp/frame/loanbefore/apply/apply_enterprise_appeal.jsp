<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 审核拒绝申诉页面 -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>申诉表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/apply/apply_enterprise_appeal.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<form id="applyAppeal" method="post">
		<div class="divBgColor">
			<fmt:message key="lable.apply.check.info" bundle="${lang}" />
		</div>
		<table>
			<tr>
				<td class="label"><fmt:message key="lable.apply.appeal.checkStatus" bundle="${lang}" /></td>
				<td width="450">
				<bizoptionname:showname biztypekey="1033" name="checkBasic" property="checkStatus" /> 
				<input id="checkId" name="checkId" value="${checkBasic.checkId}" type="hidden" /> 
				<input id="projectId" name="projectId" value="${projectId}" type="hidden" /> 
				<input type="hidden" id="taskType" name="taskType" value="${ taskType}" /></td>
				<input type="hidden" id="taskId" name="taskId" value="${taskId }" />
				<input type="hidden" id="compCode" name="compCode" value="${compCode}" />
				<input type="hidden" id="direction" name="direction" value="" /> 
				<input type="hidden" id="backActivityId" name="backActivityId" value="" />
				<input type="hidden" id="operType" name="operType" value="" />
				<input type="hidden" id="operReason" name="operReason" value="" />
				<input type="hidden" id="operReasonRemark" name="operReasonRemark" value="" />
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td class="label"><fmt:message
						key="lable.apply.appeal.appealMoney" bundle="${lang}" /></td>
				<td><input id="appealMoney" name="appealMoney"
					loxiaType="number" trim="true" mandatory="true" decimal="2" max="9999999.99"/><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
		</table>
		<table>
			<tr>
				<td class="label"><fmt:message
						key="lable.apply.appeal.appealCause" bundle="${lang}" /></td>
				<td width="450"><input id="appealCause" name="appealCause"
					loxiaType="input" trim="true" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
		</table>
		<br />
		<div class="divBgColor">
			<fmt:message key="lable.apply.appeal.checkResult" bundle="${lang}" />
		</div>
		<table>
			<tr>
				<td class="label"><fmt:message
						key="lable.apply.appeal.checkCause" bundle="${lang}" /></td>
				<td align="left"><input id="checkCause" name="checkCause"
					loxiaType="input" trim="true" readonly="true"
					value="${checkBasic.operReason}" /></td>
				<td class="label">原因备注</td>
				<td><input id="checkResult" name="checkResult"
					loxiaType="input" trim="true" readonly="true"
					value="${checkBasic.operReasonRemark}" /></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.appeal.submit" bundle="${lang}"/>"
				id="appeal">
				<fmt:message key="button.appeal.submit" bundle="${lang}" />
			</button>
		</div>
	</form>
</body>