
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>风险代理机构</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/preservation/litigationExecution_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_litigationExecution" name="save_litigationExecution" >  
	<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
			<c:if test="${litigationExecution.id ne null}">
		<input type="hidden"  readonly="readonly" value="${litigationExecution.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${litigationExecution.createId }" name="createId" id="createId"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${litigationExecution.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${litigationExecution.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
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
				<td class="label BgColor">诉讼案件名称：</td>
				<td class="content">${litigationExecution.proceedCaseName}</td>
				<td class="label BgColor">第一被执行人名称：</td>
				<td class="content tabBorderRight">${litigationExecution.firstExecutedName}</td>
			</tr>
			<tr>
				<td class="label BgColor">申请强制执行日期：</td>
				<td class="content"><fmt:formatDate value='${litigationExecution.executionTime}' pattern='yyyy-MM-dd'/></td>
				<td class="label BgColor">受理法院：</td>
				<td class="content tabBorderRight">${litigationExecution.acceptanceCourt}</td>
			</tr>
			<tr>
				<td class="label BgColor">其他受理法院：</td>
				<td class="content">${litigationExecution.otherAcceptanceCourt}</td>
				<td class="label BgColor">执行员：</td>
				<td class="content tabBorderRight">${litigationExecution.executionPerson}</td>
			</tr>
				<tr>
				<td class="label BgColor">联系电话：</td>
				<td class="content">${litigationExecution.telephone}</td>
				<td class="label BgColor">执行阶段：</td>
				<td class="content tabBorderRight">${litigationExecution.executionStage}</td>
			</tr>
				<tr>
				<td class="label BgColor">执行详情：</td>
				<td class="content tabBorderRight" colspan="3">${litigationExecution.executionInfo}</td>
			</tr>
			<tr>
				<td class="label BgColor">备注：</td>
				<td class="content tabBorderRight" colspan="3">${litigationExecution.remark }</td>
			</tr>
		</table>
			<div  class="tabbuttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="cancelExecution"  value="返回"   loxiaType="button" />
	</div>
	</form>
</body>
</html>