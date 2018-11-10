<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<title>押品拍卖</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/debtassets/collateral_approve_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_approve_deal" name="save_approve_deal" >  
		<table class="textalignCenter tabcustomPeoNoborder">
		<input type="hidden"  readonly="readonly" value="${projectId }" name="projectId" id="projectId"/><!--项目状态  -->
		<input type="hidden"  readonly="readonly" value="${collateralType }" name="collateralType" id="collateralType"/>
		<input type="hidden" readonly="readonly" value="${collateralId }"	name="collateralId" id="collateralId" />
		<input type="hidden"  readonly="readonly" value="${collateralDealApprove.id }" name="id" id="id"/>
		<%-- 	<tr>   
				<td class="label">客户名称：</td>
				<td class="content"></td>
				<td class="label">审批部门：</td>
				<td class="content"><bizoptionname:showname biztypekey="1097" value="${collateralDealApprove.collateralType}" /></td>
			</tr> --%>
			<tr>
				<td class="label">审核人：</td>
				<td class="content"><introduceUser:introduceUser id="approval" name="approval" compCode="${compCode}" selected="${collateralDealApprove.approval}" ></introduceUser:introduceUser></td>
				<td class="label">审核时间：</td>
				<td class="content"><input loxiaType="date" name="approvalDate" value="<fmt:formatDate value='${collateralDealApprove.approvalDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>" /></td>
			</tr>
			<tr>
				<td class="label">是否同意：</td>
				<td class="content"><bizoption:bizoption biztypekey="1001"  isChoose="true"  selected="${collateralDealApprove.isAgree}"
								id="isAgree" name="isAgree"  /></td>
			</tr>
			<tr>
				<td class="label">审核意见：</td>
				<td class="content" colspan="3"><textarea class="cleditor" id="approvalComments" name="approvalComments" rows="4" >${ucx:unCleanXSS(collateralDealApprove.approvalComments) }
				</textarea></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="saveApprove"  value="保存"  loxiaType="button" />
		<input type="button" class="confirm" id="saveSubmit"  value="提交"  loxiaType="button" />
		<input type="button" class="confirm" id="cancelapprove"  value="返回"   loxiaType="button" />
	</div>
	</form>   
</body>
</html>