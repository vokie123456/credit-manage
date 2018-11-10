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
		<table class="textalignCenter tabcustomPeoNoborder">
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
				<td class="label">诉讼人名称：</td>
				<td class="content"><input loxiaType="input" readonly="readonly"  value="${legalProceeding.prosecutionClientName }"/></td>
				<td class="label">法律诉讼流水号：</td>
				<td class="content"><input loxiaType="input"  readonly="readonly" value="${legalProceeding.litigationSerialNo }" /></td>
			</tr>
			<tr>
				<td class="label">诉讼案件名称：</td>
				<td class="content"><input loxiaType="input" name="proceedCaseName" value="${litigationExecution.proceedCaseName}" /></td>
				<td class="label">第一被执行人名称：</td>
				<td class="content"><input loxiaType="input" name="firstExecutedName" value="${litigationExecution.firstExecutedName}" /></td>
			</tr>
			<tr>
				<td class="label">申请强制执行日期：</td>
				<td class="content"><input loxiaType="date" name="executionTime" value="<fmt:formatDate value='${litigationExecution.executionTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>" /></td>
				<td class="label">受理法院：</td>
				<td class="content"><input loxiaType="input" name="acceptanceCourt" value="${litigationExecution.acceptanceCourt}" /></td>
			</tr>
			<tr>
				<td class="label">其他受理法院：</td>
				<td class="content"><input loxiaType="input" name="otherAcceptanceCourt" value="${litigationExecution.otherAcceptanceCourt}" /></td>
				<td class="label">执行员：</td>
				<td class="content"><input loxiaType="input" name="executionPerson" value="${litigationExecution.executionPerson}" /></td>
			</tr>
				<tr>
				<td class="label">联系电话：</td>
				<td class="content"><input loxiaType="input" name="telephone" value="${litigationExecution.telephone}" 
									checkmaster="validatemobile" /></td>
				<td class="label">执行阶段：</td>
				<td class="content"><input loxiaType="input" name="executionStage" value="${litigationExecution.executionStage}" /></td>
			</tr>
				<tr>
				<td class="label">执行详情：</td>
				<td class="content" colspan="3"><input loxiaType="input" name="executionInfo" value="${litigationExecution.executionInfo}" /></td>
			</tr>
			<tr>
				<td class="label">备注：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="remark" value="${litigationExecution.remark }"/></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="saveExecution"  value="保存"  loxiaType="button" />
		<input type="button" class="confirm" id="cancelExecution"  value="返回"   loxiaType="button" />
	</div>
	</form>
</body>
</html>