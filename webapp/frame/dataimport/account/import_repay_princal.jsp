<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head><%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/dataimport/account/import_repay_princal.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}
</style>

<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">

	<form id="repayPrincalForm" method="post">
		<input name="id" value="${rp.id}" type="hidden" />
		<input name="projectId" value="${rp.projectId}" type="hidden" />
		<input name="lendId" value="${rp.lendId}" type="hidden" />
		<c:if test="${ifUsed ne 100111 }">
		  <table class="col3">
			<tr>
				<td class="label">还本金额：</td>
				<td class="content"><input name="repayPrincal"
					loxiaType="money" trim="true" mandatory="true" value="${rp.repayPrincal}" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>

				<td class="label">还本日期</td>
				<td class="content"><input value="${rp.repayDate}"
					name="repayDate" loxiaType="date" trim="true" mandatory="true" readonly="readonly"/><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>

		</table>
		
			<div class="buttonlist buttonDivWidth">
		    <button type="button" loxiaType="button" class="confirm" id="btnSave">保存</button>
		    </div>
		</c:if>
		
		<c:if test="${ifUsed eq 100111 }">
		    <table class="col3">
			<tr>
				<td class="label">还本金额：</td>
				<td class="content">${rp.repayPrincal}</td>

				<td class="label">还本日期</td>
				<td class="content">${rp.repayDate}</td>
			</tr>

		   </table>
		</c:if>
		
	</form>

</body>
</html>
