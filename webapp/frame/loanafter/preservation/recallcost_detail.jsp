
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
		<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
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
				<td class="label BgColor">诉讼人名称：</td>
				<td class="content">${legalProceeding.prosecutionClientName }</td>
				<td class="label BgColor">法律诉讼流水号：</td>
				<td class="content tabBorderRight">${legalProceeding.litigationSerialNo }</td>
			</tr>
			<tr>
				<td class="label BgColor">费用类型：</td>
				<td class="content"><bizoptionname:showname biztypekey="1175" value="${recallCostRegistration.costType}" />
				</td>
				<td class="label BgColor">币种：</td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1103" value="${recallCostRegistration.currency}" /></td>
			</tr>    
			<tr>     
				<td class="label BgColor">付出金额：</td>
				<td class="content">${recallCostRegistration.payMoney }</td>
					<td class="label BgColor">判决执行金额：</td>
				<td class="content tabBorderRight" >${recallCostRegistration.executionMoney}</td>
			</tr>
			<tr>
				<td class="label BgColor">费用处理方式：</td>
				<td class="content tabBorderRight" colspan="3">${recallCostRegistration.costWay }</td>
			</tr>
				<tr>
				<td class="label BgColor">回收方式：</td>
				<td class="content">${recallCostRegistration.recallWay }</td>
				<td class="label BgColor">判决执行日期：</td>
				<td class="content tabBorderRight"><fmt:formatDate value='${recallCostRegistration.executionTime}' pattern='yyyy-MM-dd'/></td>
			</tr>
			<tr>
				<td class="label BgColor">备注：</td>
				<td class="content tabBorderRight" colspan="3">${recallCostRegistration.remark }</td>
			</tr>
		</table>
			<div  class="tabbuttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="cancelcost"  value="返回"   loxiaType="button" />
	</div>
	</form>
</body>
</html>