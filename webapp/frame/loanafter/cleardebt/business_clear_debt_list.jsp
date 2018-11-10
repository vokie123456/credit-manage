<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>

<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/cleardebt/business_clear_debt_list.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>

<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="showListDiv">

		<div class="divBgColor">
			<fmt:message key="label.clear.debt.list.title" bundle="${lang}" />
		</div>
		<form>
			<input type="hidden" id="show_projectId" value="${projectId }" />
			<div>
				<table  cellpadding="0" cellspacing="0" width="100%" class="textalignCenter tabcustom">
					<tr class="tabcustomTr">
					<th><fmt:message key="label.extend.extension.detail.lendCode"
							bundle="${lang}" /></th>
					<th><fmt:message
							key="label.clear.debt.title.clear.money" bundle="${lang}" /></th>
					<th>清贷利息</th>
					<th><fmt:message key="label.clear.debt.title.clear.date"
							bundle="${lang}" /></th>
					<th class="tabBorderRight"><fmt:message
							key="label.clear.debt.title.clear.status" bundle="${lang}" /></th>
				    
				    <!--  
					<th><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>
					-->
				</tr>
					<tbody id="detailBody">
						<c:forEach items="${pilist}" var="vo" varStatus="loop">
							<tr>

								<input type="hidden" id="hiddenExtId${loop.index }"
									value="${vo.payoffId }" />

								<td  id="lendCodeTd${loop.index }"><input
									type="hidden" id="hiddenLendCode${loop.index }"
									value="${vo.lendId }" /></td>
								<td >${vo.totalPrincipal }</td>
								<td >${vo.totalInterest }</td>
								<td ><fmt:formatDate
										value="${vo.expiredDate }" type="both" pattern="yyyy-MM-dd" /></td>
								<td class="tabBorderRight">${vo.statusStr }</td>
								<!--  
								<td ><label
									style="color: blue; text-decoration: underline;"
									onclick="showListDetail(${loop.index})"> <fmt:message
											key="label.assessCar.edit.collateral.detail" bundle="${lang}" />
								</label></td>
							    -->

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</form>
	</div>
	<div id="showDetailDiv"></div>
</body>

</html>
