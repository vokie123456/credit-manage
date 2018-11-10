<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<table style="display: none" name="addTemplate">
	<tbody>
		<tr style="display: none">
			<td class="label"><bizoption:bizoption biztypekey="1090"
					name="costCode" /></td>
			<td><input loxiaType="number" name="cost" /></td>
			<td><input loxiaType="number" name="costPaid" /></td>
			<td><button loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="tip.button.confirm" bundle="${lang}"/>"
					name="btnConfirm">确认</button>
				<button name="btnRemove" loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="tip.button.confirm" bundle="${lang}"/>">删除</button></td>
		</tr>
	</tbody>
</table>

<c:forEach items="${bills }" var="bill">
	<form name="frm-accountbill" method="POST" onSubmit="return false;">

		<div class="divtitle">
			<span>账单编号：${bill.billCode }</span>
			
		</div>
		<div class="paddingwidthLeft10 contentfont contentBold">
			<span> 最后还款日： <fmt:formatDate value="${bill.expiredDate }"
					type="both" pattern="yyyy-MM-dd" />
					<c:if test="${ bill.status eq 109403}"> 
			            &nbsp; &nbsp; 账单完结日期：<fmt:formatDate value="${bill.finishDate }"
					              type="both" pattern="yyyy-MM-dd" />
	                </c:if>
					 &nbsp; &nbsp; 状态： <bizoptionname:showname
					biztypekey="1094" value="${bill.status }" />
					
					<input type="hidden" name="projectId" value="${bill.projectId}">
		            <input type="hidden" name="billId" value="${bill.id}"> 
		            <input type="hidden" name="orderStatus" value="${bill.orderStatus }" />
					<c:if test="${ bill.status ne 109403 and bill.status ne 109405 and projectStatus ne 110131}">
					&nbsp; &nbsp; <button loxiaType="button" class="confirm hidden1"
						title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
						name="btnCutBillEnd">完结</button>
					<button loxiaType="button" class="confirm hidden1" onclick="editBillMoney(${bill.id},${bill.projectId})">编辑</button>
						
				</c:if>
			 </span>
		</div>

		<table name="tbl-bill" cellpadding="0" cellspacing="0" width="100%" class="textalignCenter tabcustom" >
			<tr class="moneyRight bgCo">
				<td width="15%" >款项</td>
				<td width="12%" >应收</td>
				<td width="12%" >实收</td>
				<c:if test="${ cflag eq 100311}"> 
					<td width="12%" >扣款中</td>
					<td width="12%" >扣款失败</td>
				</c:if>
				
				<td width="10%" >扣款日期</td>
				<td>&nbsp;</td>
			</tr>
			<tr class="moneyRight">
				<td  class="bgCo">本金</td>
				<td>${bill.principal }<input type="hidden"
					value="${bill.principal }"></td>
				<td>${bill.principalPaid }<input type="hidden"
					value="${bill.principalPaid }"></td>
					
				<c:if test="${ cflag eq 100311}"> 
				<td>${bill.princalDoing }</td>
				<td>${bill.princalFaild }</td>
				</c:if>
				
				<td><fmt:formatDate value="${bill.principalPaidDate }"
					type="both" pattern="yyyy-MM-dd" /></td>
				<td><c:if
						test="${   bill.principal > bill.principalPaid and 
						           bill.principalStatus ne 109403 and 
									bill.status ne 109403 and 
									bill.status ne 109405 and 
									projectStatus ne 110131}">
						<button loxiaType="button" class="confirm hidden1" title="tip：扣款"
							id="principal" name="btnCutPayment">线上扣款</button>
							
						<button loxiaType="button" class="confirm hidden1" title="tip：扣款"
							id="principal" name="lineOffPayment">线下扣款</button>
					</c:if></td>
			</tr>
			<tr class="moneyRight">
				<td  class="bgCo">利息</td>
				<td>${bill.interest }<input type="hidden"
					value="${bill.interest }"></td>
				<td>${bill.interestPaid }<input type="hidden"
					value="${bill.interestPaid }"></td>
				
				<c:if test="${ cflag eq 100311}"> 
				<td>${bill.interDoing }</td>
				<td>${bill.interFaild }</td>
				</c:if>
				
				<td><fmt:formatDate value="${bill.interestPaidDate }"
					type="both" pattern="yyyy-MM-dd" /></td>
				<td><c:if
						test="${    bill.interest > bill.interestPaid and
						            bill.interestStatus ne 109403 and 
									bill.status ne 109403 and 
									bill.status ne 109405 and 
									projectStatus ne 110131}">
						<button loxiaType="button" class="confirm hidden1" title="tip：扣款"
							id="interest" name="btnCutPayment">线上扣款</button>
						<button loxiaType="button" class="confirm hidden1" title="tip：扣款"
							id="interest" name="lineOffPayment">线下扣款</button>
					</c:if></td>
			</tr>
			
			<c:if test="${bill.interestFine ne '0.00' }">
				<tr class="moneyRight">
					<td  class="bgCo">罚息</td>
					<td>${bill.interestFine }<input type="hidden"
						value="${bill.interestFine }"></td>
					<td>${bill.interestFinePaid }<input type="hidden"
						value="${bill.interestFinePaid }"></td>
						
					<c:if test="${ cflag eq 100311}"> 
					<td>${bill.interfineDoing }</td>
				    <td>${bill.interfineFaild }</td>
					</c:if>
					
					<td><fmt:formatDate value="${bill.interestFinePaidDate }"
					type="both" pattern="yyyy-MM-dd" /></td>
					<td><c:if
							test="${bill.interestFineStatus ne 109403 and 
									bill.status ne 109403 and 
									bill.status ne 109405 and 
									projectStatus ne 110131}">
							<button loxiaType="button" class="confirm hidden1" title="tip：扣款"
								id="interestFine" name="btnCutPayment">线上扣款</button>
							<button loxiaType="button" class="confirm hidden1" title="tip：扣款"
							   id="interestFine" name="lineOffPayment">线下扣款</button>
						</c:if></td>
				</tr>
			</c:if>
			<!-- 已有科目 -->
			<c:forEach items="${bill.billItemVoList }" var="it"
				varStatus="itState">
				<tr class="moneyRight">
					<td class="bgCo"><bizoptionname:showname biztypekey="1090"
							value="${it.costCode }" /></td>
					<td>${it.cost }<input type="hidden" value="${it.cost }"></td>
					<td>${it.costPaid }<input type="hidden"
						value="${it.costPaid }"></td>
						
					<c:if test="${ cflag eq 100311}"> 
						<td>${it.costDoing }</td>
					    <td>${it.costFaild }</td>
					</c:if>
					
					<td><fmt:formatDate value="${it.costPaidDate }"
					type="both" pattern="yyyy-MM-dd" /></td>
					<td><c:if
							test="${
							        it.status ne 109403 and
									bill.status ne 109403 and 
									bill.status ne 109405 and it.status ne 109403 and it.status ne 109405 
									and projectStatus ne 110131}">
							<button loxiaType="button" class="confirm hidden1" title="tip：扣款"
								id="${it.id }" name="btnCutPayment">线上扣款</button>
							<button loxiaType="button" class="confirm hidden1" title="tip：扣款"
							   id="${it.id }" name="lineOffPayment">线下扣款</button>
						</c:if></td>
				</tr>
			</c:forEach>
			<tr class="moneyRight">
				<td class="bgCo">总计</td>
				<td>${bill.totalReceivables }</td>
				<td>${bill.totalActualMoney }</td>
				<c:if test="${ cflag eq 100311}"> 
				<td>${bill.totalDoing }</td>
				<td>${bill.totalFaild }</td>
				</c:if>
				
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
		<c:if test="${ bill.status eq 109403}">
			<span> 备注： ${bill.remark }</span>
	    </c:if>
	</form>
	
	</br>
</c:forEach>