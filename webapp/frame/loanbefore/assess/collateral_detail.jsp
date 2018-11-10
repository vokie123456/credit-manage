<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>押品登记</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/collateral_register.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.title {
	background-color: #9BB3CD;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<form id="collateralForm">
		<input type="hidden" id="projectId" name="projectId"
			value="${projectId }" />
		<%-- 		<table>	
			<tr>	
				<td class="label">押品类型</td>
				<td width="150">
				<bizoption:bizoption biztypekey="1097" name="collateralType" isChoose="false" 
					id="collateralType"/>
				</td>
			</tr>
		</table> --%>
		<div id="div_car">
			<table>
				<tr>
					<!-- 车架号 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
					<td width="150">${assessCarPerson.winCode}</td>
					<!-- 车牌号码 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
					<td width="150">${assessCarPerson.plateNo}</td>
				</tr>
				<tr>
					</td>
					<!-- 发票金额 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.invoicePrice" bundle="${lang}" /></td>
					<td>${assessCarPerson.invoicePrice}</td>
					<!-- 厂牌 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.brand" bundle="${lang}" /></td>
					<td>${assessCarPerson.brand}</td>
				</tr>
				<tr>
					<!-- 车辆类型  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.carType" bundle="${lang}" /></td>
					<td>${assessCarPerson.carType}</td>
					<!-- 型号 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.model" bundle="${lang}" /></td>
					<td>${assessCarPerson.model}</td>
				</tr>
				<tr>
					<!-- 颜色  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.color" bundle="${lang}" /></td>
					<td>${assessCarPerson.color}</td>
				</tr>
			</table>
		</div>
		<%-- 		<div id="div_house">
			<table>	
				<tr>	
					<!-- 房屋坐落  -->
					<td class="label"><fmt:message key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
					<td width="150">
					<input name="houseAddress" value="${assessHousePerson.houseAddress}" loxiaType="input" trim="true" />
					</td>
				</tr>
			</table>
		</div> --%>

		</div>
	</form>



</body>
</html>
