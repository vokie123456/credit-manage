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
		<table class="textalignCenter tabcustomPeoNoborder">
			<c:if test="${riskAgency.id ne null}">
		<input type="hidden"  readonly="readonly" value="${riskAgency.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${riskAgency.createId }" name="createId" id="createId"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${riskAgency.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${riskAgency.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
		</c:if>
		<input type="hidden"  readonly="readonly" value="${legalProceeding.id }" name="legalProceedingsId" id="legalProceedingsId"/><!--条目状态  -->
			<tr>   
				<td class="label">诉讼人名称：</td>
				<td class="content"><input loxiaType="input" readonly="readonly"  value="${legalProceeding.prosecutionClientName }"/></td>
				<td class="label">法律诉讼流水号：</td>
				<td class="content"><input loxiaType="input"  readonly="readonly" value="${legalProceeding.litigationSerialNo }" /></td>
			</tr>
			<tr>
				<td class="label">律师事务所名称：</td>
				<td class="content"><input loxiaType="input" name="lawFirmName" value="${riskAgency.lawFirmName }" /></td>
				<td class="label">律师姓名：</td>
				<td class="content"><input loxiaType="input" name="lawyerName" value="${riskAgency. lawyerName}" trim="true"/></td>
			</tr>
			<tr>
				<td class="label">签约时间：</td>
				<td class="content"><input loxiaType="date" name="signTime" value="<fmt:formatDate value='${riskAgency.signTime }'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>" /></td>
					<td class="label">合同到期日：</td>
				<td class="content" ><input loxiaType="date"   name="expireTime" trim="true" value="<fmt:formatDate value='${riskAgency.expireTime }'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
			</tr>
			<tr>
				<td class="label">代理权限：</td>
				<td class="content"><input loxiaType="input" name="agencyAuthority"  trim="true" value="${riskAgency.agencyAuthority }"
					/></td>
				<td class="label">合同执行情况：</td>
				<td class="content"><input loxiaType="input"   name="contractExecution" value="${riskAgency.contractExecution}"/></td>
			</tr>
			<tr>
				<td class="label">备注：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="remark" value="${riskAgency.remark }"/></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="saveRisk"  value="保存"  loxiaType="button" />
		<input type="button" class="confirm" id="cancelRisk"  value="返回"   loxiaType="button" />
	</div>
	</form>
</body>
</html>