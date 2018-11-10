<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 审核拒绝申诉页面 -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>申诉详情</title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">
		<fmt:message key="lable.apply.check.info" bundle="${lang}" />
	</div>
	<table>
		<tr>
			<td class="label"><fmt:message
					key="lable.apply.appeal.checkStatus" bundle="${lang}" /></td>
			<td width="450"><bizoptionname:showname biztypekey="1033" name="appealPerson" property="checkStatus"  value="${appealPerson.checkStatus }"/>
		</tr>
	</table>
	<table>
		<tr>
			<td class="label"><fmt:message
					key="lable.apply.appeal.appealMoney" bundle="${lang}" /></td>
			<td>${appealPerson.appealMoney }</td>
		</tr>
	</table>
	<table>
		<tr>
			<td class="label"><fmt:message
					key="lable.apply.appeal.appealCause" bundle="${lang}" /></td>
			<td width="450">${appealPerson.appealCause }</td>
		</tr>
	</table>
	<br />
	<br />
	<div class="divBgColor">
		<fmt:message key="lable.apply.appeal.checkResult" bundle="${lang}" />
	</div>
	<table>
		<tr>
			<td class="label"><fmt:message
					key="lable.apply.appeal.checkCause" bundle="${lang}" /></td>
			<td align="left" width="150">${appealPerson.operReason}</td>
			<td class="label">原因备注</td>
			<td width="150">${appealPerson.operReasonRemark} </td>
		</tr>
	</table>
</body>