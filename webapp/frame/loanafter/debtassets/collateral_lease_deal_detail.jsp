<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>押品租赁</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/debtassets/collateral_lease_deal_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_lease_deal" name="save_lease_deal" >  
<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
			<c:if test="${collateralLeaseDeal.id ne null}">
		<input type="hidden"  readonly="readonly" value="${collateralLeaseDeal.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${collateralLeaseDeal.creator }" name="creator" id="creator"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${collateralLeaseDeal.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${collateralLeaseDeal.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
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
				<td class="content"><bizoptionname:showname biztypekey="1152,1153" value="${collateralLeaseDeal.collateralType}" /></td>
				<td class="label BgColor">承租人：</td>
				<td class="content tabBorderRight">${collateralLeaseDeal.lessee}</td>
			</tr>
			<tr>
				<td class="label BgColor">租赁方式：</td>
				<td class="content">${collateralLeaseDeal.leaseType}</td>
				<td class="label BgColor">租赁金额：</td>
				<td class="content tabBorderRight">${collateralLeaseDeal.leaseMoney}</td>
			</tr>
			<tr>
				<td class="label BgColor">起租日期：</td>
				<td class="content"><fmt:formatDate value='${collateralLeaseDeal.leaseBegDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
				<td class="label BgColor">租赁期限(月)：</td>
				<td class="content tabBorderRight">${collateralLeaseDeal.leaseTerm}</td>
			</tr>
				<tr>
				<td class="label BgColor">止租日期：</td>
				<td class="content"><fmt:formatDate value='${collateralLeaseDeal.leaseEndDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
				<td class="label BgColor">租金缴纳方式：</td>
				<td class="content tabBorderRight">${collateralLeaseDeal.paymentMode}</td>
			</tr>
				<tr>
				<td class="label BgColor">联系电话：</td>
				<td class="content" >${collateralLeaseDeal.phone}</td>
					<td class="label BgColor">电子邮件：</td>
				<td class="content tabBorderRight" >${collateralLeaseDeal.mail}</td>
			</tr>
					<tr>
				<td class="label BgColor">联系地址：</td>
				<td class="content" >${collateralLeaseDeal.address}</td>
					<td class="label BgColor">交易日期：</td>
				<td class="content tabBorderRight" ><fmt:formatDate value='${collateralLeaseDeal.tradeDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
			</tr>
			<tr>
				<td class="label BgColor">备注：</td>
				<td class="content tabBorderRight" colspan="3">${collateralLeaseDeal.remarks }</td>
			</tr>
		</table>
			<div  class="tabbuttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="cancellease"  value="返回"   loxiaType="button" />
	</div>
	</form>   
</body>
</html>