<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/collateral_assess_list.js'/>"></script>
<title></title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>


<body contextpath="<%=request.getContextPath()%>">

	<div id="collateralListDiv">
		<!-- 抵押品信息 -->
		<div class="divBgColor">
			<fmt:message key="label.collateral.manager.info" bundle="${lang}" />
		</div>
		<form id="collateralAssessListForm">
			<input type="hidden" id="list_projectId" value="${projectId }" /> <input
				type="hidden" id="assessListFlag" value="${flag }" />
			<div id="assessListDiv">
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<th><fmt:message key="label.assessCar.edit.collateral.code"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.assessCar.edit.collateral.type"
							bundle="${lang}" /></th>
					<th><fmt:message
							key="label.assessCar.edit.collateral.isAssess" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.assessCar.edit.collateral.totalPrice" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.assessCar.edit.collateral.assessName" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.assessCar.edit.collateral.assessTime" bundle="${lang}" /></th>
					<th><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>

					<c:forEach items="${collatealList}" var="collateral"
						varStatus="loop">
						<tr>
							<td id="collateralCode${loop.index}">${collateral.collateralCode }</td>
							<td><bizoptionname:showname biztypekey="1097"
									value="${collateral.collateralType }" /> <input type="hidden"
								id="collateralType${loop.index}"
								value="${collateral.collateralType }" /></td>
							<td><bizoptionname:showname biztypekey="1035"
									value="${collateral.isAssess }" /><input type="hidden"
								id="isAssess${loop.index}" value="${collateral.isAssess }" /></td>
							<td>${collateral.assessTotalprice }</td>
							<td>${collateral.assessName }</td>
							<td>${collateral.assessTime }</td>
							<td><label id="loadLink"
								style="color: blue; text-decoration: underline;"
								onclick="assessCollateral(${loop.index})"> <c:if
										test="${flag eq 'detail'}">
										<fmt:message key="label.assessCar.edit.collateral.detail"
											bundle="${lang}" />
									</c:if> <c:if test="${flag eq 'edit'}">
										<fmt:message key="label.assessCar.edit.collateral.assess"
											bundle="${lang}" />
									</c:if>
							</label></td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</form>
		
		<br />
		<br />

		<!-- 担保人、担保公司信息 -->
		<div class="divBgColor">
			<fmt:message key="label.collateral.manager.person.info"
				bundle="${lang}" />
		</div>
		<form id="guaranteeListForm">
			<input type="hidden" id="guaranteeFlag" value="${flag }" />
			<div>
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<th><fmt:message key="label.collateral.manager.guarantee.no"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.collateral.manager.guarantee.type"
							bundle="${lang}" /></th>

					<th><fmt:message key="label.collateral.manager.guarantee.name"
							bundle="${lang}" /></th>
					<th><fmt:message
							key="label.collateral.manager.guarantee.cardType"
							bundle="${lang}" /></th>
					<th><fmt:message
							key="label.collateral.manager.guarantee.cardNo" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.collateral.manager.guarantee.updateTime"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>

					<c:forEach items="${guaranteeList}" var="gl" varStatus="loop">
						<tr>
							<td id="guaranteeCode${loop.index}">${gl.guaranteeCode }</td>
							<td><bizoptionname:showname biztypekey="1097"
									value="${gl.guaranteeType }" /> <input type="hidden"
								id="guaranteeType${loop.index}" value="${gl.guaranteeType }" /></td>
							<td>${gl.clientName }</td>
							<td>${gl.cardType }</td>
							<td>${gl.cardNo }</td>
							<td>${gl.updateDate }</td>
							<td><label id="gloadLink"
								style="color: blue; text-decoration: underline;"
								onclick="editGuarantee(${loop.index})"> <c:if
										test="${flag eq 'detail'}">
										<fmt:message key="label.assessCar.edit.collateral.detail"
											bundle="${lang}" />
									</c:if> <c:if test="${flag eq 'edit'}">
										<fmt:message key="label.collection.but.edit"
											bundle="${lang}" />
									</c:if>
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
