<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<fmt:setBundle basename="messages" var="lang" />
<title>抵债审核</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/debtassets/collateral_approve_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_auction_deal" name="save_auction_deal" >  
<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
			<c:if test="${collateralDealApprove.id ne null}">
		<input type="hidden"  readonly="readonly" value="${collateralDealApprove.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${collateralDealApprove.creator }" name="creator" id="creator"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${collateralDealApprove.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		</c:if>
			<input type="hidden"  readonly="readonly" value="${projectId }" name="projectId" id="projectId"/><!--创建时间  -->
			<tr>   
				<td class="label BgColor">审核人：</td>
				<td class="content">${collateralDealApprove.userName}</td>
				<td class="label BgColor">审核时间：</td>
				<td class="content tabBorderRight"><fmt:formatDate value='${collateralDealApprove.approvalDate }' pattern='yyyy-MM-dd'/></td>
			</tr>
			<tr>
				<td class="label BgColor">是否同意：</td>       
				<td class="content tabBorderRight" colspan="3"><bizoptionname:showname biztypekey="1001" value="${collateralDealApprove.isAgree}" /></td>
			</tr>
			<tr>
				<td class="label BgColor">审核意见：</td>
				<td class="content tabBorderRight" colspan="3">${ucx:unCleanXSS(collateralDealApprove.approvalComments) }</td>
			</tr>
		</table>
			<div  class="tabbuttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="cancelapprove"  value="返回"   loxiaType="button" />
	</div>
	</form>   
</body>
</html>