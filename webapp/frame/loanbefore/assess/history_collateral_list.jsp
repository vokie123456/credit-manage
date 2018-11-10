<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<title></title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<form id="collateralAssessListForm">
		<div id="assessListDiv">
			<table border="1" cellpadding="0" cellspacing="0"
					width="100%">
				<th><fmt:message key="label.assessCar.edit.collateral.code"
						bundle="${lang}" /></th>
				<th><fmt:message key="label.assessCar.edit.collateral.type"
						bundle="${lang}" /></th>
				<th><fmt:message key="label.assessCar.edit.collateral.totalPrice"
						bundle="${lang}" /></th>

				<c:forEach items="${collatealList}" var="collateral"
					varStatus="loop">
					<tr>
						<td id="collateralCode${loop.index}">${collateral.collateralCode }</td>
					    <td><bizoptionname:showname biztypekey="1097"
									value="${collateral.collateralType }" /> <input type="hidden"
								id="collateralType${loop.index}"
								value="${collateral.collateralType }"/></td>
						<td>${collateral.assessTotalprice }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</form>
</body>

</html>
