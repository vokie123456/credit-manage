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
		<table class="textalignCenter tabcustomPeoNoborder">
			<c:if test="${collateralOtherDeal.id ne null}">
		<input type="hidden"  readonly="readonly" value="${collateralOtherDeal.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${collateralOtherDeal.creator }" name="creator" id="creator"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${collateralOtherDeal.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${collateralOtherDeal.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
		</c:if>
			<input type="hidden"  readonly="readonly" value="${projectId }" name="projectId" id="projectId"/><!--项目状态  -->
		<input type="hidden"  readonly="readonly" value="${collateralType }" name="collateralType" id="collateralType"/>
		<input type="hidden" readonly="readonly" value="${collateralId }"	name="collateralId" id="collateralId" />
		<%-- 	<tr>   
				<td class="label">抵债资产拍卖：</td>
				<td class="content">${collateralDebtManage.id}</td>
				<td class="label">资产名称：</td>
				<td class="content"><bizoptionname:showname biztypekey="1152" value="${collateralDebtManage.collateralType}" /></td> --%>
			<tr>
			<td class="label">资产类别：</td>
				<td class="content"><bizoptionname:showname biztypekey="1152,1153" value="${collateralDebtManage.collateralType}" /></td>
				<td class="label">处置方式：</td>
				<td class="content">
				<input loxiaType="input"  name="disposalMethod" value="${collateralOtherDeal.disposalMethod }" />
								</td>
			</tr>
			<tr>
				<td class="label">接收方：</td>
				<td class="content"><input loxiaType="input"  name="receiver" value="${collateralOtherDeal.receiver }" /></td>
				<td class="label">接收方联系方式：</td>
				<td class="content"><input loxiaType="input" name="phone" value="${collateralOtherDeal.phone}"  checkmaster="validatemobile" /></td>
			</tr>
			<tr>
				<td class="label">变现金额：</td>
				<td class="content"><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2" name="realizedAmount"  value="${collateralOtherDeal.realizedAmount}" /></td>
				<td class="label">变现差额：</td>
				<td class="content"><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2" name="balanceAmount"  value="${collateralOtherDeal.balanceAmount}" /></td>
			</tr>
					<tr>
				<td class="label">差额处理：</td>
				<td class="content" ><input loxiaType="input" name="balanceDeal" value="${collateralOtherDeal.balanceDeal}" /></td>
			</tr>
			<tr>
				<td class="label">备注：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="remarks" value="${collateralOtherDeal.remarks }"/></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="saveother"  value="保存"  loxiaType="button" />
		<input type="button" class="confirm" id="cancelother"  value="返回"   loxiaType="button" />
	</div>
	</form>   
</body>
</html>