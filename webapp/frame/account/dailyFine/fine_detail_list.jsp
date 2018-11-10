<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/dailyFine/fine_detail_list.js'/>"></script>

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
			<fmt:message key="label.fine.detail.title" bundle="${lang}" />
		</div>
		<form id="collateralAssessListForm">
			<input type="hidden" id="list_billId" value="${billId }" />
			<div id="assessListDiv">
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
				   <th><fmt:message key="label.fine.detail.no"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.fine.detail.generate.date"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.fine.detail.fine.money"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.fine.detail.ifvalid"
							bundle="${lang}" /></th>

					<th><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>

					<c:forEach items="${list}" var="cl" varStatus="loop">
						<tr>
							<input type="hidden" id="id${loop.index }" value="${cl.id }" />
							<input type="hidden" id="ifValid${loop.index }"
								value="${cl.ifValid }" />
							<td class="tdCen">${loop.count }</td>
							<td class="tdCen"><fmt:formatDate value="${cl.createDate }" pattern="yyyy-MM-dd"/></td>
							<td class="tdCen">${cl.fineMoney }</td>
							<td class="tdCen"><bizoptionname:showname biztypekey="1001"
									value="${cl.ifValid }" /></td>
							<td class="tdCen"><label id="loadLink"
								style="color: blue; text-decoration: underline;"
								onclick="editBillFineDaily(${loop.index})"> <fmt:message
										key="label.collection.but.edit" bundle="${lang}" />
							</label></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</form>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：返回" id="backoff">返回</button>
		</div>
		<div id="dialogDiv"></div>
	</div>

</body>

</html>
