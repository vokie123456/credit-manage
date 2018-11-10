<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/account_detail.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div>
		<input type="hidden" id="bill_lendId" value="${lendId }" />
		<form>

			<c:if test="${billNum ne 0 }">
				<!-- z账单信息 -->
				<table class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0" width="100%" style="margin-top:20px;">
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
						<!-- <td>操作</td> -->
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

						<%-- 	<td><c:if
									test="${ bill.status ne 109403 and bill.status ne 109405 and proj.projectStauts ne 110131}">
									<label style="color: blue;"
										onclick="endBill(${bill.id },${bill.projectId})">
										完结|&nbsp; </label>
									<label style="color: blue;"
										onclick="editBill(${bill.id },${bill.projectId})">
										编辑|&nbsp; </label>
									<label style="color: blue;"
										onclick="cutMoneyDialog(${bill.id },${bill.projectId})">
										扣款 </label>
								</c:if></td> --%>
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
						<td>还款期数</td>
						<td>本金应收</td>

						<td>利息应收</td>

						<td>本息合计</td>
						<td>本金剩余</td>


						<c:forEach items="${rclist }" var="oc" varStatus="lp">
							<td><bizoptionname:showname biztypekey="1090"
									value="${oc.costCode }" />应收</td>
						</c:forEach>

						<td>计划还款日期</td>
						<td>提醒日期</td>
						<!-- <td>操作</td>
 -->
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

					<%-- 		<td><c:if
									test="${pl.billStatus eq 0 and proj.projectStauts ne 110131 and pl.repayId eq showBillId}">
									<label style="color: blue;"
										onclick="toBillRecord(${pl.repayId })">生成账单 </label>
								</c:if></td> --%>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</form>
	</div>
</body>

</html>
