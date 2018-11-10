
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>执行收回及费用登记信息</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/preservation/recallcost_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_recallcost" name="save_recallcost" >  
		<table class="textalignCenter tabcustomPeoNoborder">
			<c:if test="${recallCostRegistration.id ne null}">
		<input type="hidden"  readonly="readonly" value="${recallCostRegistration.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${recallCostRegistration.createId }" name="createId" id="createId"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${recallCostRegistration.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${recallCostRegistration.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
		</c:if>
		<input type="hidden"  readonly="readonly" value="${legalProceeding.id }" name="legalProceedingsId" id="legalProceedingsId"/><!--条目状态  -->
			<input type="hidden"  readonly="readonly" value="${legalProceeding.projectId }" name="projectId" id="projectId"/>
			<input type="hidden"  readonly="readonly" value="${legalProceeding.collateralId }" name="collateralId"  id="collateralId"/>
			<tr>   
				<td class="label">诉讼人名称：</td>
				<td class="content"><input loxiaType="input" readonly="readonly"  value="${legalProceeding.prosecutionClientName }"/></td>
				<td class="label">法律诉讼流水号：</td>
				<td class="content"><input loxiaType="input"  readonly="readonly" value="${legalProceeding.litigationSerialNo }" /></td>
			</tr>
			<tr>
				<td class="label">费用类型：</td>
				<td class="content"><bizoption:bizoption biztypekey="1175"  selected="${recallCostRegistration.costType}"  isChoose="true"  
								id="costType" name="costType"  /></td>
				<td class="label">币种：</td>
				<td class="content"><bizoption:bizoption biztypekey="1103"  selected="${recallCostRegistration.currency}"  isChoose="true"  
								id="currency" name="currency"  /></td>
			</tr>    
			<tr>
				<td class="label">付出金额：</td>
				<td class="content"><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2" name="payMoney" value="${recallCostRegistration.payMoney }" /></td>
					<td class="label">判决执行金额：</td>
				<td class="content" ><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2" name="executionMoney" value="${recallCostRegistration.executionMoney}" /></td>
			</tr>
			<tr>
				<td class="label">费用处理方式：</td>
				<td class="content" colspan="3"><input loxiaType="input" name="costWay" value="${recallCostRegistration.costWay }" /></td>
			</tr>
				<tr>
				<td class="label">回收方式：</td>
				<td class="content"><input loxiaType="input" name="recallWay" value="${recallCostRegistration.recallWay }" /></td>
				<td class="label">判决执行日期：</td>
				<td class="content"><input loxiaType="date" name="executionTime" value="<fmt:formatDate value='${recallCostRegistration.executionTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
			</tr>
			<tr>
				<td class="label">备注：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="remark" value="${recallCostRegistration.remark }"/></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="savecost"  value="保存"  loxiaType="button" />
		<input type="button" class="confirm" id="cancelcost"  value="返回"   loxiaType="button" />
	</div>
	</form>
</body>
</html>