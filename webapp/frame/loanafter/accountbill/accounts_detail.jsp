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
			<!-- 账单信息 -->
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
					<td>逾期天数</td>
					<td>计划还款日期</td>
					<td>账单状态</td>
					<td>完结日期</td>
					<!-- <td>操作</td> -->
				</tr>

				<c:forEach items="${lendApplyDetailsList }" var="lendApplyDetailsList">
                    <tr>
                    	<td>${lendApplyDetailsList.billCode }</td>
                    	<td>${lendApplyDetailsList.principal }</td>
                    	<td>${lendApplyDetailsList.principalPaid }</td>
                    	<td>${lendApplyDetailsList.interest }</td>
                    	<td>${lendApplyDetailsList.interestPaid }</td>
                    	<td>${lendApplyDetailsList.interestFine }</td>
                    	<td>${lendApplyDetailsList.interestFinePaid }</td>
                    	<td>${lendApplyDetailsList.lateDays }</td>
                    	<td><fmt:formatDate value="${lendApplyDetailsList.repayDate}" type="both"
									pattern="yyyy-MM-dd" /></td>
                    	<td>
                    	${(lendApplyDetailsList.status)=='待还款'?'还款中':(lendApplyDetailsList.status) }
                    	</td>
                    	<td><fmt:formatDate value="${lendApplyDetailsList.finishDate}" type="both"
									pattern="yyyy-MM-dd" /></td>
                    </tr>  
				</c:forEach>
			</table>
			<br></br>
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
					<td>计划还款日期</td>
					<td>提醒日期</td>
				</tr>
				<c:forEach items="${list3 }" var="vo">
					<tr>
                    	<td>${vo.repaymentPeriod }</td>
                    	<td>${vo.principalRepay}</td>
                    	<td>${vo.interestRepay}</td>
                    	<td>${vo.principalInterest}</td>
                    	<td>${vo.principalLeft}</td>
                    	<td><fmt:formatDate value="${vo.repayDate}" type="both"
									pattern="yyyy-MM-dd" /></td>
                    	<td><fmt:formatDate value="${vo.remindDate}" type="both"
									pattern="yyyy-MM-dd" /></td>
                    </tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>

</html>
