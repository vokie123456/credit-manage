<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>诉讼登记信息</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/preservation/litigationRegistration_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_litigationRegistration" name="save_litigationRegistration" >  
		<table class="textalignCenter tabcustomPeoNoborder">
			<c:if test="${litigationRegistration.id ne null}">
		<input type="hidden"  readonly="readonly" value="${litigationRegistration.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${litigationRegistration.createId }" name="createId" id="createId"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${litigationRegistration.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${litigationRegistration.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
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
				<td class="label">诉讼阶段：</td>
				<td class="content"><input loxiaType="input" name="litigationStage" value="${litigationRegistration.litigationStage}" /></td>
				<td class="label">起诉日期：</td>
				<td class="content"><input loxiaType="date" name="prosecutionTime" value="<fmt:formatDate value='${litigationRegistration.prosecutionTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
			</tr>
			<tr>
				<td class="label">代理机构：</td>
				<td class="content"><input loxiaType="input" name="agentMechanism" value="${litigationRegistration.agentMechanism}" /></td>
				<td class="label">代理机构名称：</td>
				<td class="content"><input loxiaType="input" name="agentMechanismName" value="${litigationRegistration.agentMechanismName}" /></td>
			</tr><tr>
				<td class="label">代理人姓名：</td>
				<td class="content"><input loxiaType="input" name="agentPersonName" value="${litigationRegistration.agentPersonName}" /></td>
				<td class="label">受理日期：</td>
				<td class="content"><input loxiaType="date" name="acceptanceTime" value="<fmt:formatDate value='${litigationRegistration.acceptanceTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>" /></td>
			</tr><tr>
				<td class="label">第一被告名称：</td>
				<td class="content"><input loxiaType="input" name="firstDefendantName" value="${litigationRegistration.firstDefendantName}" /></td>
				<td class="label">第二被告名称：</td>
				<td class="content"><input loxiaType="input" name="secondDefendantName" value="${litigationRegistration.secondDefendantName}" /></td>
			</tr>
			<tr>
				<td class="label">其他被告名称：</td>
				<td class="content"><input loxiaType="input" name="otherDefendantName" value="${litigationRegistration.otherDefendantName}" /></td>
				<td class="label">受理法院：</td>
				<td class="content"><input loxiaType="input" name="acceptanceCourt" value="${litigationRegistration.acceptanceCourt}" /></td>
			</tr>
			<tr>
				<td class="label">主审法官：</td>
				<td class="content"><input loxiaType="input" name="presidingJudge" value="${litigationRegistration.presidingJudge}" /></td>
			<%-- 	<td class="label">联系电话：</td>
				<td class="content"><input loxiaType="input" name="telephone" value="${litigationRegistration.telephone}" checkmaster="validatemobile" /></td> --%>
							<td class="label">联系电话：</td>
							<td class="content"><input loxiaType="input" name="telephone" value="${litigationRegistration.telephone}" 
									checkmaster="validatemobile" /></td>
			</tr>
			<tr>   
				<td class="label">庭审结果：</td>
				<td class="content"><input loxiaType="input" name="trialResult" value="${litigationRegistration.trialResult}" /></td>
				<td class="label">判决日期：</td>
				<td class="content"><input loxiaType="date" name="sentenceTime" value="<fmt:formatDate value='${litigationRegistration.sentenceTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>" /></td>
			</tr>         
			<tr>       
				<td class="label">法律文书号：</td>
				<td class="content"><input loxiaType="input" name="legalDocumentNo" value="${litigationRegistration.legalDocumentNo}" /></td>
				<td class="label">保全措施到期日：</td>
				<td class="content"><input loxiaType="date" name="safeTime" value="<fmt:formatDate value='${litigationRegistration.safeTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
			</tr>
			<tr>
				<td class="label">备注：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="remark" value="${litigationRegistration.remark }"/></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="saveliRe"  value="保存"  loxiaType="button" />
		<input type="button" class="confirm" id="cancelliRe"  value="返回"   loxiaType="button" />
	</div>
	</form>
</body>
</html>