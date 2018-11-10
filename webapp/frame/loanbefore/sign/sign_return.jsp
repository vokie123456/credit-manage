<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 签约信息新增-->
<head>
<%@include file="/common/metaload.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/sign/sign_return.js'/>"></script>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="lable.sign.return" bundle="${lang}" /></title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<form id="signReturnForm" method="post">
		<div id="formreturn">
			<input id="projectId2" name="signContract.projectId"
				value="${projectId}" type="hidden" /> <input id="signStauts2"
				name="signContract.signStatus" value="${signStauts}" type="hidden" />
			<input id="signId2" name="signContract.signId" value="${signId}"
				type="hidden" /> <input id="clientType" name="clientType"
				value="${clientType}" type="hidden" /> <input name="taskId"
				value="${taskId}" type="hidden" /><input name="taskType"
				value="${taskType}" type="hidden" /><input type="hidden"
				id="direction" name="direction" value="" /> <input type="hidden"
				id="backActivityId" name="backActivityId" value="" />
			<table>
				<tr>
					<td class="label"><fmt:message key="label.sign.returnReason"
							bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1056"
							id="returnReason" name="signContract.returnReason"
							isChoose="true" selected="${signAddVo.returnReason}" /></td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="label"><fmt:message key="label.sign.returnRemark"
							bundle="${lang}" /></td>
					<td width="450" colspan="5"><textarea
							name="signContract.returnRemark" loxiaType="input"
							id="returnRemark">${signAddVo.returnRemark }</textarea></td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">

				<button type="submit" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sign.return" bundle="${lang}"/>"
					id="return">
					<fmt:message key="button.return" bundle="${lang}" />
				</button>
				<button type="submit" loxiaType="button" class="confirm" id="close1">
					<fmt:message key="button.close" bundle="${lang}" />
				</button>
			</div>
		</div>
	</form>
</body>
</html>
