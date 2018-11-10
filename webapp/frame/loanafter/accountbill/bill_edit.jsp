<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>账单明细</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/bill_edit.js'/>"></script>

</head>
<body contextpath="<%=request.getContextPath()%>">
		<div class="divBgColor">
			账单明细
		</div>
		<!-- 模板 -->
		<table style="display:none" name="addTemplate">
		<tbody>
			<tr style="display:none">
				<td class="label"><bizoption:bizoption biztypekey="1090" name="costCode" isChoose="true"/> </td>
				<td><input loxiaType="number" name="cost" /></td>
				<td><input loxiaType="number" name="costPaid" decimal="2"/></td>
				<td><button loxiaType="button" class="confirm hidden1"
				title="tip：<fmt:message key="tip.button.confirm" bundle="${lang}"/>"
				name="btnConfirm">确认</button>
				<button name="btnRemove" loxiaType="button" class="confirm hidden1"
				title="tip：<fmt:message key="tip.button.confirm" bundle="${lang}"/>">删除</button></td>
			</tr>
		</tbody>
		</table>
		
		<form id="frm-accountbill">
			<div class="buttonlist buttonDivWidth">
				<input type="hidden" name="id" id="billId" value="${bill.id}"/>
				<input type="hidden" name="projectId" value="${bill.projectId}">
			
				账单流水号：${bill.id } &nbsp; &nbsp;  最后还款日 ${bill.expiredDate }      
			<c:if test="${bill.status ne 109403 and bill.status ne 109405}">
			<button type="button" loxiaType="button" class="confirm hidden1"
				title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
				id="btnCutBill"> 完扣
			</button>
			<button type="button" loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="label.loaning.addRepayPlan" bundle="${lang}"/>"
					name="btnNewCostItem" > 增加科目
			</button>
			</c:if>
			<c:if test="${bill.status eq 109403 or bill.status eq 109405}">
			<button type="button" loxiaType="button" class="confirm hidden1"
				title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
				disabled> 完扣
			</button>
		 	<button type="button" loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="label.loaning.addRepayPlan" bundle="${lang}"/>"
					disabled> 增加科目
			</button>
			</c:if>
			
			<c:if test="${bill.status eq 109402 or bill.status eq 109401 or bill.status eq 109404 or bill.status eq 109407}">
			<button type="button" loxiaType="button" class="confirm hidden1"
				title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
				name="btnLayAside"> 搁置
			</button>
			</c:if>
			<c:if test="${bill.status ne 109402 and bill.status ne 109401 and bill.status ne 109404 and bill.status ne 109407}">
			<button type="button" loxiaType="button" class="confirm hidden1"
				title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
				disabled> 搁置
			</button>
			</c:if>
			
			<c:if test="${bill.status eq 109405}">
			<button type="button" loxiaType="button" class="confirm hidden1"
				title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
				name="btnRecover"> 恢复
			</button>
			</c:if>
			<c:if test="${bill.status ne 109405}">
			<button type="button" loxiaType="button" class="confirm hidden1"
				title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
				disabled> 恢复
			</button>
			</c:if>
					<span> 应收： ${bill.totalReceivables } &nbsp;  实收：${bill.totalActualMoney }</span> &nbsp;
					<span> 账单状态： <bizoptionname:showname biztypekey="1094" value="${bill.status }"/></span>
			</div>
			
			<table width="100%" border="1" append="1" bordercolor="#EFEFEF">
			<tbody id="tbl-bill">
			   <tr class="title">
				<td>款项</td>
				<td>应收</td>
				<td>实收</td>
				<c:if test="${bill.status == 109401 or bill.status == 109407  }">
				<td>&nbsp;</td>				
				</c:if>
			   </tr>
			    <tr>
					<td class="label">本金</td>
					<td>${bill.principal }<input name="principal" type="hidden" value="${bill.principal }" trim="true"/></td>
					<td>${bill.principalPaid }<input name="principalPaid" type="hidden" value="${bill.principal }"/></td>
					<c:if test="${bill.status == 109401 or bill.status == 109407  }">
					<td><button loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
					id="principal" name="btnSingleCut">完扣</button></td>
					</c:if>
				</tr>
			    <tr>
					<td class="label">利息</td>
					<td>${bill.interest }<input name="interest" type="hidden" value="${bill.interest }"/></td>
					<td>${bill.interestPaid }<input name="interestPaid" type="hidden" value="${bill.interest }"/></td>
					<c:if test="${bill.status == 109401 or bill.status == 109407 }">
					<td><button loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
					id="interest" name="btnSingleCut">完扣</button></td>
					</c:if>
				</tr>
			    <tr>
					<td class="label">罚息</td>
					<td>${bill.interestFine }<input name="interestFine" type="hidden" value="${bill.interestFine }"/></td>
					<td>${bill.interestFinePaid }<input name="interestFinePaid" type="hidden" value="${bill.interestFine }"/></td>
					<c:if test="${bill.status == 109401 or bill.status == 109407 }">
					<td><button loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
					id="interestFine" name="btnSingleCut">完扣</button></td>
					</c:if>
				</tr>
				<!-- 已有科目 -->
				<c:forEach items="${bill.billItemsCollection }" var="it" varStatus="itState">
			    <tr name="cost">
					<td class="label"><bizoptionname:showname biztypekey="1090" value="${it.costCode }"/></td>
					<td>${it.cost }<input name="itemArray.cost" type="hidden" value="${it.cost }"/></td>
					<td>${it.costPaid }<input name="itemArray.costPaid" type="hidden" value="${it.cost }"/></td>
					
					<c:if test="${bill.status == 109401 or bill.status == 109407 }">
					<td><button loxiaType="button" class="confirm hidden1"
					title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
					id="${it.id }" name="btnSingleCut">完扣</button></td>
					</c:if>
					<input name="itemArray.costTitle" type="hidden" value="${it.costTitle }"/>
					<input name="itemArray.id" type="hidden" value="${it.id }"/>
					<input name="itemArray.costCode" type="hidden" value="${it.costCode }"/>
				</tr>
				</c:forEach>
				
			</tbody>
			</table>
		</form>
		
		<div id="con"></div>
</body>
</html>