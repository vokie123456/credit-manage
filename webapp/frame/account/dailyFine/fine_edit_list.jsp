<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/dailyFine/fine_edit_list.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.tdCen{ 
     text-align:center;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="collateralListDiv">
	
		<div class="divBgColor">
			<fmt:message key="label.fine.edit.title" bundle="${lang}" />
		</div>
		<form id="collateralAssessListForm">
			<input type="hidden" id="list_projectId" value="${projectId }" />
			<div id="assessListDiv">
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<th><fmt:message key="label.fine.edit.lend.code"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.fine.edit.last.date"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.fine.edit.over.due"
							bundle="${lang}" /></th>

					<th><fmt:message key="label.fine.edit.total.money"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.fine.edit.total.paid.money"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.fine.edit.fine.money"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.fine.edit.fine.paid.money"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>

					<c:forEach items="${list}" var="cl"
						varStatus="loop">
						<tr>
						    <input type="hidden" id="billId${loop.index }" value="${cl.billId }" />
							<td class="tdCen">${cl.lendCount }</td>
							<td class="tdCen"><fmt:formatDate value="${cl.lastDate }" pattern="yyyy-MM-dd"/></td>
							<td class="tdCen">${cl.overDues }</td>
							<td class="tdCen">${cl.totalMoney }</td>
							<td class="tdCen">${cl.totalPaidMoney }</td>
							<td class="tdCen">${cl.interestFine }</td>
							<td class="tdCen">${cl.interestFinePaid }</td>
							<td class="tdCen"><label id="loadLink"
								style="color: blue; text-decoration: underline;"
								onclick="editOverDueBill(${loop.index})"> <fmt:message
										key="label.collection.but.edit" bundle="${lang}" />
							</label></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</form>
	</div>
	<div id="collateralAssessDetailDiv"></div>
</body>

</html>
