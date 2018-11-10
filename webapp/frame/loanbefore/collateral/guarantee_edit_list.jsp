<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/collateral/guarantee_edit_list.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="collateralListDiv">
		<!-- 担保信息 -->
		<div class="divBgColor">
			<fmt:message key="label.collateral.manager.guarantee.info" bundle="${lang}" />
		</div>
		<form id="collateralAssessListForm">
			<input type="hidden" id="list_projectId" value="${projectId }" />
			<input type="hidden" id="money" value="${money }" />
			<div id="assessListDiv">
				<table class="textalignCenter tabcustom" cellpadding="0" cellspacing="0"
					width="100%">
					<tr class="tabcustomTr">
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
					<c:if test="${flag==true }">
						<th   class="tabBorderRight"><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>
					</c:if>
				</tr>
					<c:forEach items="${celist}" var="gl" varStatus="loop">
						<tr>
							<td><bizoptionname:showname biztypekey="1149"
									value="${gl.guaranteeType }" /></td>
							<td>${gl.guaranteeName }</td>
							<td><bizoptionname:showname biztypekey="1007,1102"
									value="${gl.cardType }" /></td>
							<td>${gl.cardNo }</td>
							<td>${gl.inputTime }</td>
							<c:choose>
								<c:when test="${flag==true }">
									<td><label id="gloadLink"
										style="color: blue; text-decoration: underline;"
										onclick="editGuarantee(${gl.guaranteeId })"> <fmt:message
												key="label.collection.but.edit" bundle="${lang}" />
									</label></td>

									<td  class="tabBorderRight"><label
										style="color: blue; text-decoration: underline;"
										onclick="deleteGuarantee(${gl.guaranteeId })"> <fmt:message
												key="button.delete" bundle="${lang}" />
									</label></td>
								</c:when>
								<c:otherwise>
									<td  class="tabBorderRight"><label id="gloadLink"
										style="color: blue; text-decoration: underline;"
										onclick="detailGuarantee(${gl.guaranteeId })"> <fmt:message
												key="label.collection.but.detail" bundle="${lang}" />
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
					id="addGuaranteePer">
					<fmt:message key="label.guarantee.button.per" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					id="addGuaranteeEnt">
					<fmt:message key="label.guarantee.button.en" bundle="${lang}" />
				</button>    
				<button type="button" loxiaType="button" class="confirm"
					id="addGuaranteeCom">
					<fmt:message key="label.guarantee.button.com" bundle="${lang}" />
				</button>
			</div>
		</c:if>
	</div>
	<div id="collateralAssessDetailDiv"></div>
</body>

</html>
