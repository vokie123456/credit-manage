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
	<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
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
				<td class="label BgColor">诉讼人名称：</td>
				<td class="content">${legalProceeding.prosecutionClientName }</td>
				<td class="label BgColor">法律诉讼流水号：</td>
				<td class="content tabBorderRight">${legalProceeding.litigationSerialNo }</td>
			</tr>
			<tr>
				<td class="label BgColor">诉讼阶段：</td>
				<td class="content">${litigationRegistration.litigationStage}</td>
				<td class="label BgColor">起诉日期：</td>
				<td class="content tabBorderRight">${litigationRegistration.prosecutionTime}</td>
			</tr>
			<tr>
				<td class="label BgColor">代理机构：</td>
				<td class="content">${litigationRegistration.agentMechanism}</td>
				<td class="label BgColor">代理机构名称：</td>
				<td class="content tabBorderRight">${litigationRegistration.agentMechanismName}</td>
			</tr><tr>
				<td class="label BgColor">代理人姓名：</td>
				<td class="content">${litigationRegistration.agentPersonName}</td>
				<td class="label BgColor">受理日期：</td>
				<td class="content  tabBorderRight">${litigationRegistration.acceptanceTime}</td>
			</tr><tr>
				<td class="label BgColor">第一被告名称：</td>
				<td class="content">${litigationRegistration.firstDefendantName}</td>
				<td class="label BgColor">第二被告名称：</td>
				<td class="content  tabBorderRight">${litigationRegistration.secondDefendantName}</td>
			</tr>
			<tr>
				<td class="label BgColor">其他被告名称：</td>
				<td class="content">${litigationRegistration.otherDefendantName}</td>
				<td class="label BgColor">受理法院：</td>
				<td class="content tabBorderRight">${litigationRegistration.acceptanceCourt}</td>
			</tr>
			<tr>
				<td class="label BgColor">主审法官：</td>
				<td class="content">${litigationRegistration.presidingJudge}</td>
				<td class="label BgColor">联系电话：</td>
				<td class="content tabBorderRight">${litigationRegistration.telephone}</td>
			</tr>
			<tr>
				<td class="label BgColor">庭审结果：</td>
				<td class="content">${litigationRegistration.trialResult}</td>
				<td class="label BgColor">判决日期：</td>
				<td class="content tabBorderRight"><fmt:formatDate value='${litigationRegistration.sentenceTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
			</tr>
			<tr>
				<td class="label BgColor">法律文书号：</td>
				<td class="content">${litigationRegistration.legalDocumentNo}</td>
				<td class="label BgColor">保全措施到期日：</td>
				<td class="content tabBorderRight"><fmt:formatDate value='${litigationRegistration.safeTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
			</tr>
			<tr>
				<td class="label BgColor">备注：</td>
				<td class="content tabBorderRight" colspan="3">${litigationRegistration.remark }</td>
			</tr>
		</table>
			<div  class="tabbuttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="cancelliRe"  value="返回"   loxiaType="button" />
	</div>
	</form>
</body>
</html>