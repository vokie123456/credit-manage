
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/edit_bill_dialog.js'/>"></script>

</head>

<form id="culBillForm" method="post">
    <input type="hidden" name="id" value="${billId }">
    <input type="hidden" id="dialog_projectId" value="${bv.projectId }">
    
	<span style="color: red; font-weight: normal;">【注：仅适合小额修改】</span>			
	<table style="width:100%" >
		<tr>
			<td class="label">应还本金：</td>
			<td class="content">
			<c:if test="${bv.principalStatus eq 109403 }">
			 ${bv.principal }
			 <input type="hidden"
				name="principal" value="${bv.principal }"/>
			</c:if>
			<c:if test="${bv.principalStatus ne 109403 }">
			 <input loxiaType="number" decimal="2"
				name="principal" value="${bv.principal }"/>
			</c:if>
			
			</td>
		</tr>
		<tr>
			<td class="label">应还利息：</td>
			<td class="content">
			
			<c:if test="${bv.interestStatus eq 109403 }">
			 ${bv.interest }
			 <input type="hidden"
				name="interest" value="${bv.interest }"/>
			</c:if>
			<c:if test="${bv.interestStatus ne 109403 }">
			 <input loxiaType="number" decimal="2"
				name="interest" value="${bv.interest }"/>
			</c:if>
			
			</td>
		</tr>

		<tr>
			<td class="label">应还罚息：</td>
			<td class="content">
			
			<c:if test="${bv.interestFineStatus eq 109403 }">
			 ${bv.interestFine }
			 <input type="hidden"
				name="interestFine" value="${bv.interestFine }"/>
			</c:if>
			<c:if test="${bv.interestFineStatus ne 109403 }">
			 <input loxiaType="number" decimal="2"
				name="interestFine" value="${bv.interestFine }" />
			</c:if>
			
			
			</td>

		</tr>
		<!-- 已有科目 -->
		<c:forEach items="${itemlist }" var="it"
			varStatus="loop">

			<input type="hidden" name="itemArray[${loop.index }].id"
				value="${it.id }">
			<tr>
				<td class="label"><bizoptionname:showname biztypekey="1090"
						value="${it.costCode }" />：</td>
				<td class="content"><c:if test="${it.status eq 109403 }">
			        ${it.cost }
			        <input type="hidden"
							name="itemArray[${loop.index }].cost" value="${it.cost }" />
			        </c:if> 
			        <c:if test="${it.status ne 109403 }">
						<input loxiaType="number" decimal="2"
							name="itemArray[${loop.index }].cost" value="${it.cost }" />
					</c:if>
				</td>
			</tr>

		</c:forEach>
		
	</table>
	
	
	<div class="buttonlist buttonDivWidth" style="text-align:center;">
		<button type="button" loxiaType="button" class="confirm"
			id="save">保存</button>
		<button type="button" loxiaType="button" class="confirm" id="cancel">关闭</button>
	</div>
</form>