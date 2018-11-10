<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>

<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/business_plan_detail.js'/>"></script>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">

	<div class="divBgColor">账务详细信息</div>
		<form>

			<c:if test="${billNum ne 0 }">
				<!-- z账单信息 -->
				<table class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0" width="100%">
					<tr class="tabcustomTr"
						style="font-size: 12px; font-weight: normal;">
						<td>账单编号</td>
						<td>本金应收</td>
						<td>本金实收</td>

						<td>利息应收</td>
						<td>利息实收</td>

						<td>罚息应收</td>
						<td>罚息实收</td>

						<c:forEach items="${bilist }" var="it" varStatus="itState">
							<td><bizoptionname:showname biztypekey="1090"
									value="${it.costCode }" />应收</td>
							<td><bizoptionname:showname biztypekey="1090"
									value="${it.costCode }" />实收</td>
						</c:forEach>

						<td>逾期天数</td>
						<td>计划还款日期</td>
						<td>账单状态</td>
						<td>完结日期</td>
					</tr>

					<c:forEach items="${bills }" var="bill">
                        <input type="hidden" value=" ${bill.remark }"
				             id="hiddenRemark${bill.id}" />
						<tr>
							<td>
							<a title="${bill.remark }">${bill.billCode }</a>
							</td>

							<td>${bill.principal }</td>
							<td>${bill.principalPaid }</td>

							<td>${bill.interest }</td>
							<td>${bill.interestPaid }</td>

							<td>${bill.interestFine }</td>
							<td>${bill.interestFinePaid }</td>

							<c:forEach items="${bilist }" var="bi">

								<c:set var="tempLa" value="0"></c:set>
								<c:set var="tempLb" value="0"></c:set>

								<td><c:forEach items="${bill.billItemVoList }" var="it"
										varStatus="itState">
										<c:if test="${it.costCode eq bi.costCode }">
											${it.cost }
											<c:set var="tempLa" value="1"></c:set>
								        </c:if>
									</c:forEach>
									
									<c:if test="${tempLa ne 1 }">0.00</c:if>
								</td>
								<td><c:forEach items="${bill.billItemVoList }" var="it"
										varStatus="itState">
										<c:if test="${it.costCode eq bi.costCode }">
											${it.costPaid }
											<c:set var="tempLb" value="1"></c:set>
								        </c:if>
									</c:forEach>
									<c:if test="${tempLb ne 1 }">0.00</c:if>
									</td>

							</c:forEach>


							<td>${bill.overDays }</td>

							<td><fmt:formatDate value="${bill.expiredDate }" type="both"
									pattern="yyyy-MM-dd" /></td>
							<td><bizoptionname:showname biztypekey="1094"
									value="${bill.status }" /></td>
							<td><fmt:formatDate value="${bill.finishDate }" type="both"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>


			<br></br>
			<c:if test="${planNum ne 0 }">
				<!-- 还款计划信息  -->
				<table class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0" width="100%">
					<tr class="tabcustomTr"
						style="font-size: 12px; font-weight: normal;">
						<td>账单编号</td>
						<td>本金应收</td>

						<td>利息应收</td>

						<td>本息合计</td>
						<td>本金剩余</td>


						<c:forEach items="${rclist }" var="oc" varStatus="lp">
							<td><bizoptionname:showname biztypekey="1090"
									value="${oc.costCode }" />应收</td>
						</c:forEach>

						<td>还款日期</td>
						<td>提醒日期</td>

					</tr>

					<c:forEach items="${plans }" var="pl" varStatus="cnt">

						<tr>
							<td>${pl.serials }</td>
							<td>${pl.principalRepay }</td>

							<td>${pl.interestRepay }</td>

							<td>${pl.principalInterest }</td>
							<td>${pl.principalLeft }</td>

							<c:forEach items="${rclist }" var="oc" varStatus="lp">
							    <c:set var="tempLc" value="0"></c:set>
								<td><c:forEach items="${pl.rcCost }" var="rc">
								<c:if test="${oc.costCode eq rc.costCode }">
									${rc.cost }
									<c:set var="tempLc" value="1"></c:set>
								</c:if>
								</c:forEach>
								<c:if test="${tempLc ne 1 }">0.00</c:if>
							    </td>

							</c:forEach>

							<td>${pl.repayDate }</td>

							<td>${pl.remindDate }</td>

						</tr>
					</c:forEach>
				</table>
			</c:if>
		</form>

</body>