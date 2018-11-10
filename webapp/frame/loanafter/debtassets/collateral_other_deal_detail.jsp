<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>押品其他处置</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/debtassets/collateral_other_deal_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_other_deal" name="save_other_deal" >  
		<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
			<c:if test="${collateralOtherDeal.id ne null}">
		<input type="hidden"  readonly="readonly" value="${collateralOtherDeal.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${collateralOtherDeal.creator }" name="creator" id="creator"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${collateralOtherDeal.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${collateralOtherDeal.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
		</c:if>
			<input type="hidden"  readonly="readonly" value="${projectId }" name="projectId" id="projectId"/><!--项目状态  -->
		<input type="hidden"  readonly="readonly" value="${collateralType }" name="collateralType" id="collateralType"/>
							<%-- 	<tr>   
				<td class="label BgColor">抵债资产拍卖：</td>
				<td class="content"></td>
				<td class="label BgColor">资产类别：</td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1152" value="${collateralAuctionDeal.collateralType}" /></td>
			</tr> --%>
			<tr>
				<td class="label BgColor">资产类别：</td>
				<td class="content"><bizoptionname:showname biztypekey="1152,1153" value="${collateralOtherDeal.collateralType}" /></td>
				<td class="label BgColor">处置方式：</td>
				<td class="content tabBorderRight">${collateralOtherDeal.disposalMethod }</td>
			</tr>
			<tr>
				<td class="label BgColor">接收方：</td>
				<td class="content">${collateralOtherDeal.receiver }</td>
				<td class="label BgColor">接收方联系方式：</td>
				<td class="content tabBorderRight">${collateralOtherDeal.phone}</td>
			</tr>
			<tr>
				<td class="label BgColor">变现金额：</td>
				<td class="content">${collateralOtherDeal.realizedAmount}</td>
				<td class="label BgColor">变现差额：</td>
				<td class="content tabBorderRight">${collateralOtherDeal.balanceAmount}</td>
			</tr>
					<tr>
				<td class="label BgColor">差额处理：</td>
				<td colspan="3" class="content tabBorderRight" >${collateralOtherDeal.balanceDeal}</td>
			</tr>
			<tr>
				<td class="label BgColor">备注：</td>
				<td class="content tabBorderRight" colspan="3">${collateralOtherDeal.remarks }</td>
			</tr>
		</table>
			<div  class="tabbuttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="cancelother"  value="返回"   loxiaType="button" />
	</div>
	</form>   
</body>
</html>