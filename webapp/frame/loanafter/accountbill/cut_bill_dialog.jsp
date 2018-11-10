
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/cut_bill_dialog.js'/>"></script>

</head>

<form id="culBillForm" method="post">
    <input type="hidden" name="id" value="${billId }">
    <input type="hidden" name="projectId" value="${bv.projectId }">
    
	<div><span style="color: red; font-weight: normal;">【注】:线上扣款不需要选择扣款日期</span></div>
	
				
	<table class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0" width="100%">
		<tr class="tabcustomTr" style="font-size: 12px; font-weight: normal;">
			<td>费用项</td>
			<td>扣款金额</td>
		</tr>
		
		<c:set var="tempCount" value="0"></c:set>
		
		<!-- 本金 -->
		<tr>
			<td>本金</td>
			<td><c:if test="${bv.principalStatus eq 109403 }">
			 全额已扣
			</c:if><c:if test="${bv.principalStatus ne 109403 }">
					<input loxiaType="number" decimal="2"  value="${bv.leftPrincal }" name="itemArray[${tempCount }].cost" checkmaster="validatorMoney"/>
					<input type="hidden" value="109011" name="itemArray[${tempCount }].costCode"/>
					
					<input type="hidden" value="${bv.leftPrincal }" name="money"/>
					<c:set var="tempCount" value="${tempCount + 1 }"></c:set>
			</c:if>
			</td>
			
		</tr>
		
		<!-- 利息 -->
		<tr>
			<td>利息</td>
			<td><c:if test="${bv.interestStatus eq 109403 }">
			 全额已扣
			</c:if> <c:if test="${bv.interestStatus ne 109403 }">
					<input loxiaType="number" decimal="2"  value="${bv.leftInter }" name="itemArray[${tempCount }].cost" checkmaster="validatorMoney"/>
					<input type="hidden" value="109012" name="itemArray[${tempCount }].costCode"/>
					
					<input type="hidden" value="${bv.leftInter }" name="money"/>
					<c:set var="tempCount" value="${tempCount + 1 }"></c:set>
				</c:if></td>

		</tr>
		

       <!-- 罚息 -->
       <c:if test="${bv.interestFine ne '0.00' }">
       
		<tr>
			<td>罚息</td>
			<td><c:if test="${bv.interestFineStatus eq 109403 }">
			 全额已扣
			</c:if><c:if test="${bv.interestFineStatus ne 109403 }">
					<input loxiaType="number" decimal="2"  value="${bv.leftInterfine }" name="itemArray[${tempCount }].cost" checkmaster="validatorMoney"/>
					<input type="hidden" value="109021" name="itemArray[${tempCount }].costCode" />
					
					<input type="hidden" value="${bv.leftInterfine }" name="money"/>
					<c:set var="tempCount" value="${tempCount + 1 }"></c:set>
				</c:if></td>
		</tr>
		</c:if>
		
		<!-- 费用项 -->
		<c:forEach items="${itemlist }" var="it"
			varStatus="loop">

			<tr>
				<td><bizoptionname:showname biztypekey="1090"
						value="${it.costCode }" /></td>
				<td><c:if test="${it.status eq 109403 }">
			                    全额已扣
			        </c:if> <c:if test="${it.status ne 109403 }">
						<input loxiaType="number" decimal="2"  value="${it.leftMoney }" name="itemArray[${tempCount }].cost" checkmaster="validatorMoney"/>
					    <input type="hidden" value="${it.costCode }" name="itemArray[${tempCount }].costCode" />
					    
					    <input type="hidden" value="${it.leftMoney }" name="money"/>
					    <c:set var="tempCount" value="${tempCount + 1 }"></c:set>
					</c:if></td>
			</tr>

		</c:forEach>
		
		<tr>
			<td>扣款日期</td>
			<td><input loxiaType="date" readonly="readonly" name="cutDate" id="cutDate"/></td>
		</tr>
	</table>
	
	<div class="buttonlist buttonDivWidth">
	<input type="button" class="confirm" id="cutOnLine"  value="线上扣款"  loxiaType="button" />
	<input type="button" class="confirm" id="cutOff"  value="线下扣款"   loxiaType="button" />
	</div>
	
</form>