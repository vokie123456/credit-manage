<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:forEach items="${bills }" var="bill">
	<form>
		<div class="divBgColor">      
			<span>账单编号：${bill.billCode }</span>
		</div>
		<div class="paddingwidthLeft10 contentfont contentBold">
			<span> 最后还款日： <fmt:formatDate value="${bill.expiredDate }"
					type="both" pattern="yyyy-MM-dd" />
			<c:if test="${ bill.status eq 109403}">
			&nbsp; &nbsp;
			 账单完结日期：<fmt:formatDate value="${bill.finishDate }"
					              type="both" pattern="yyyy-MM-dd" />
		</c:if> &nbsp; &nbsp; 状态： <bizoptionname:showname
					biztypekey="1094" value="${bill.status }" />		
			</span>
		</div>
		
		<table name="tbl-bill" cellpadding="0" cellspacing="0" width="100%" class="textalignCenter tabcustom" >
			<tr class="moneyRight bgCo">
				<td width="15%" >款项</td>
				<td width="15%" >应收</td>
				<td width="15%" >实收</td>
				<c:if test="${ cflag eq 100311}"> 
					<td width="15%" >扣款中</td>
					<td width="15%" >扣款失败</td>
				</c:if>
				
				<td width="10%" >扣款日期</td>
			</tr>
			<tr class="moneyRight">
				<td class="bgCo">本金</td>
				<td>${bill.principal }</td>
				<td>${bill.principalPaid }</td>
				<c:if test="${ cflag eq 100311}"> 
				<td>${bill.princalDoing }</td>
				<td>${bill.princalFaild }</td>
				</c:if>
				<td><fmt:formatDate value="${bill.principalPaidDate }"
					type="both" pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr class="moneyRight">
				<td class="bgCo">利息</td>
				<td>${bill.interest }</td>
				<td>${bill.interestPaid }</td>
				<c:if test="${ cflag eq 100311}"> 
				<td>${bill.interDoing }</td>
				<td>${bill.interFaild }</td>
				</c:if>
				<td><fmt:formatDate value="${bill.interestPaidDate }"
					type="both" pattern="yyyy-MM-dd" /></td>
			</tr>
			<c:if test="${bill.interestFine ne '0.00' }">
			    <tr class="moneyRight">
				<td class="bgCo">罚息</td>
				<td>${bill.interestFine }</td>
				<td>${bill.interestFinePaid }</td>
				<c:if test="${ cflag eq 100311}"> 
					<td>${bill.interfineDoing }</td>
				    <td>${bill.interfineFaild }</td>
					</c:if>
				<td><fmt:formatDate value="${bill.interestFinePaidDate }"
					type="both" pattern="yyyy-MM-dd" /></td>
			</tr>
			</c:if>
			
			<!-- 已有科目 -->
			<c:forEach items="${bill.billItemVoList }" var="it"
				varStatus="itState">
				<tr class="moneyRight">
					<td  class="bgCo"><bizoptionname:showname biztypekey="1090"
							value="${it.costCode }" /></td>
					<td>${it.cost }</td>
					<td>${it.costPaid }</td>
				    <c:if test="${ cflag eq 100311}"> 
						<td>${it.costDoing }</td>
					    <td>${it.costFaild }</td>
					</c:if>
					<td><fmt:formatDate value="${it.costPaidDate }"
					type="both" pattern="yyyy-MM-dd" /></td>
				</tr>
			</c:forEach>
			<tr class="moneyRight">
				<td  class="bgCo">总计</td>
				<td>${bill.totalReceivables }</td>
				<td>${bill.totalActualMoney }</td>
				<c:if test="${ cflag eq 100311}"> 
				<td>${bill.totalDoing }</td>
				<td>${bill.totalFaild }</td>
				</c:if>
				<td>&nbsp;</td>
			</tr>
		</table>
		<div>
		<c:if test="${ bill.status eq 109403}">
			<span> 备注： ${bill.remark }</span>
		</c:if>
		</div>
	</form>
	</br>
</c:forEach>