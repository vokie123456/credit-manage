<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/repay_plan_edit_extend.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
 
    <!--的还款计划，不能被修改 -->
	<form >
		<div class="divBgColor">
			<fmt:message key="label.loaning.repayPlanDetail" bundle="${lang}" />
		</div>

		<c:forEach items="${planE }" var="pl" varStatus="cnt">
            <div class="class">
				<label >第${cnt.count }期</label>
		    </div>
			<div>
				<!-- 还款计划明细 -->
				<table width="100%" border="1" append="1" id="repayTab${cnt.index }">
					<tr>
						<th class="title"><fmt:message
								key="label.loaning.principalRepay" bundle="${lang}" /></th>
						<th class="title"><fmt:message
								key="label.loaning.interestRepay" bundle="${lang}" /></th>
						<th class="title"><fmt:message
								key="label.loaning.principal_interest" bundle="${lang}" /></th>
						<th class="title"><fmt:message
								key="label.loaning.principal_left" bundle="${lang}" /></th>
						<th class="title"><fmt:message key="label.loaning.repayDate"
								bundle="${lang}" /></th>
						<th class="title"><fmt:message key="label.loaning.remindDate"
								bundle="${lang}" /></th>
					</tr>

					<tbody >
						<tr >
							
							<td>${pl.principalRepay }</td>

							<td>${pl.interestRepay }</td>

							<td>${pl.principalInterest }</td>

							<td>${pl.principalLeft }</td>

							<td>${pl.repayDate }</td>

							<td>${pl.remindDate }</td>
						</tr>
					</tbody>
				</table>


				<!-- 还款计划中的费用 -->
				<table border="1" append="1" background-color="#99CCFF">

					<c:if test="${cnt.first}">
						<c:forEach items="${pl.firstCost }" var="oc" varStatus="lp">
							<tr>
								<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
								<td><bizoptionname:showname biztypekey="1090"
										value="${oc.costCode }" /></td>
							
								<td width="160">${oc.cost }</td>
							</tr>
						</c:forEach>
					</c:if>

					<c:if test="${!cnt.first}">
						<c:forEach items="${pl.everyCost }" var="oc" varStatus="lp">
							<tr>
								<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
								<td><bizoptionname:showname biztypekey="1090"
										value="${oc.costCode }" /></td>

								<td width="160">${oc.cost }</td>

							</tr>
						</c:forEach>
					</c:if>
				</table>

			</div>
			<br/>
		</c:forEach>
	</form>
	
</body>