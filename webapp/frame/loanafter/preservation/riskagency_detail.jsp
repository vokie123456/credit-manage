<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>风险代理机构</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/preservation/riskagency_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_riskagency" name="save_riskagency" >  
		<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
			<c:if test="${riskAgency.id ne null}">
		<input type="hidden"  readonly="readonly" value="${riskAgency.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${riskAgency.createId }" name="createId" id="createId"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${riskAgency.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${riskAgency.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
		</c:if>
		<input type="hidden"  readonly="readonly" value="${legalProceeding.id }" name="legalProceedingsId" id="legalProceedingsId"/><!--条目状态  -->
			<tr>   
				<td class="label BgColor">诉讼人名称：</td>
				<td class="content">${legalProceeding.prosecutionClientName }</td>
				<td class="label BgColor">法律诉讼流水号：</td>
				<td class="content tabBorderRight">${legalProceeding.litigationSerialNo }</td>
			</tr>
			<tr>
				<td class="label BgColor">律师事务所名称：</td>
				<td class="content">${riskAgency.lawFirmName }</td>
				<td class="label BgColor">律师姓名：</td>
				<td class="content tabBorderRight">${riskAgency. lawyerName}</td>
			</tr>
			<tr>
				<td class="label BgColor">签约时间：</td>
				<td class="content"><fmt:formatDate value='${riskAgency.signTime }'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
					<td class="label BgColor">合同到期日：</td>
				<td class="content tabBorderRight" ><fmt:formatDate value='${riskAgency.expireTime }'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
			</tr>
			<tr>
				<td class="label BgColor">代理权限：</td>
				<td class="content">${riskAgency.agencyAuthority }</td>
				<td class="label BgColor">合同执行情况：</td>
				<td class="content tabBorderRight">${riskAgency.contractExecution}</td>
			</tr>
			<tr>
				<td class="label BgColor">备注：</td>
				<td class="content tabBorderRight" colspan="3">${riskAgency.remark }</td>
			</tr>
		</table>
			<div  class="tabbuttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="cancelRisk"  value="返回"   loxiaType="button" />
	</div>
	</form>
</body>
</html>