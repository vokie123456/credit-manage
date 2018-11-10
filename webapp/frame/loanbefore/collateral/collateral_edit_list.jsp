<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/collateral/collateral_edit_list.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>

<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="collateralListDiv">
		<!-- 抵押品信息 -->
		<div class="divBgColor">抵押信息</div>
		<form id="collateralAssessListForm">
			<input type="hidden" id="list_projectId" value="${projectId }" /> <input
				type="hidden" id="money" value="${money }" />
			<div id="assessListDiv">
				<table class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0" width="100%">
					<tr class="tabcustomTr">
						<th><fmt:message key="label.assessCar.edit.collateral.type"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.assessCar.edit.collateral.itNo"
								bundle="${lang}" /></th>
						<th><fmt:message
								key="label.assessCar.edit.collateral.notaryNo" bundle="${lang}" /></th>
						<th><fmt:message
								key="label.assessCar.edit.collateral.totalPrice"
								bundle="${lang}" /></th>
						<th><fmt:message
								key="label.assessCar.edit.collateral.assessName"
								bundle="${lang}" /></th>
						<th><fmt:message
								key="label.assessCar.edit.collateral.assessTime"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.repay.princal.input"
								bundle="${lang}" /></th>
						<th><fmt:message
								key="label.assessCar.edit.collateral.operate" bundle="${lang}" /></th>
						<c:if test="${flag==true }">
							<th   class="tabBorderRight"><fmt:message
									key="label.assessCar.edit.collateral.operate" bundle="${lang}" /></th>
						</c:if>
					</tr>
					<c:forEach items="${celist}" var="collateral" varStatus="loop">
						<tr>
							<td><bizoptionname:showname biztypekey="1152"
									value="${collateral.collateralType }" /></td>
							<td>${collateral.itCardNo }</td>
							<td>${collateral.notaryNo }</td>
							<td>${collateral.assessTotalprice }</td>
							<td>${collateral.assessName }</td>
							<td>${collateral.assessTime }</td>
							<td>${collateral.inputName }</td>
							<c:choose>
								<c:when test="${flag==true }">
									<td><label id="loadLink" class="fileList"
										onclick="editCollateral(${collateral.collateralId })">
											<fmt:message key="label.collection.but.edit" bundle="${lang}" />
									</label></td>
									<td  class="tabBorderRight"><label class="fileList"
										onclick="deleteCollateral(${collateral.collateralId })">
											<fmt:message key="button.delete" bundle="${lang}" />
									</label></td>
								</c:when>
								<c:otherwise>
									<td class="tabBorderRight"><label id="loadLink" class="fileList"
										onclick="detailCollateral(${collateral.collateralId })">
											<fmt:message key="label.collection.but.detail"
												bundle="${lang}" />
									</label></td>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>
				</table>
			</div>

		</form>

		<c:if test="${flag==true }">
			<div class="tabbuttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="addCarColl">
					<fmt:message key="label.collateral.edit.addCar" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					id="addHouseColl">
					<fmt:message key="label.collateral.edit.addHouse" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					id="addOtherColl">
					<fmt:message key="label.collateral.edit.addOther" bundle="${lang}" />
				</button>
			</div>
		</c:if>
	</div>
	<div id="collateralAssessDetailDiv"></div>
	<div id="zyListDiv">
		<!-- 押品信息 -->
		<br/>
		<div class="divBgColor">质押信息</div>
		<div id="assessDiv">
			<table class="textalignCenter tabcustom" cellpadding="0"
				cellspacing="0" width="100%">
				<tr class="tabcustomTr">
					<th><fmt:message key="label.assessCar.edit.collateral.type"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.assessCar.edit.collateral.itNo"
							bundle="${lang}" /></th>
					<th><fmt:message
							key="label.assessCar.edit.collateral.notaryNo" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.assessCar.edit.collateral.totalPrice" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.assessCar.edit.collateral.assessName" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.assessCar.edit.collateral.assessTime" bundle="${lang}" /></th>
					<th><fmt:message key="label.repay.princal.input"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>
					<c:if test="${flag==true }">
						<th  class="tabBorderRight"><fmt:message
								key="label.assessCar.edit.collateral.operate" bundle="${lang}" /></th>
					</c:if>
				</tr>
				<c:forEach items="${zList}" var="item" varStatus="loop">
					<tr>
						<td><bizoptionname:showname biztypekey="1153"
								value="${item.collateralType }" /></td>
						<td>${item.itCardNo }</td>
						<td>${item.notaryNo }</td>
						<td>${item.assessTotalprice }</td>
						<td>${item.assessName }</td>
						<td>${item.assessTime }</td>
						<td>${item.inputName }</td>
						<c:choose>
							<c:when test="${flag==true }">
								<td><label id="loadLink" class="fileList"
									onclick="editZy(${item.collateralId })"> <fmt:message
											key="label.collection.but.edit" bundle="${lang}" />
								</label></td>
								<td  class="tabBorderRight"><label class="fileList"
									onclick="deleteZy(${item.collateralId })"> <fmt:message
											key="button.delete" bundle="${lang}" />
								</label></td>
							</c:when>
							<c:otherwise>
								<td  class="tabBorderRight"><label id="loadLink" class="fileList"
									onclick="detailZy(${item.collateralId })"> <fmt:message
											key="label.collection.but.detail" bundle="${lang}" />
								</label></td>
							</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>
			</table>
		</div>
		<c:if test="${flag==true }">
			<div class="tabbuttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="addWarehouseColl">
					<fmt:message key="label.collateral.edit.addWarehouse"
						bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					id="addEquityColl">
					<fmt:message key="label.collateral.edit.addEquity" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					id="addNoteColl">
					<fmt:message key="label.collateral.edit.addNote" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					id="addZyOtherColl">
					<fmt:message key="label.collateral.edit.addOther" bundle="${lang}" />
				</button>
			</div>
		</c:if>

	</div>
	<div id="zyDetailDiv"></div>
</body>

</html>
