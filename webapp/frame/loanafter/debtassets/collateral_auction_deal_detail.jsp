<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>押品拍卖</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/debtassets/collateral_auction_deal_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_auction_deal" name="save_auction_deal" >     
<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
			<c:if test="${collateralAuctionDeal.id ne null}">
		<input type="hidden"  readonly="readonly" value="${collateralAuctionDeal.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${collateralAuctionDeal.creator }" name="creator" id="creator"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${collateralAuctionDeal.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${collateralAuctionDeal.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
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
				<td class="content"><bizoptionname:showname biztypekey="1152,1153" value="${collateralAuctionDeal.collateralType}" /></td>
				<td class="label BgColor">购买人：</td>
				<td class="content tabBorderRight">${collateralAuctionDeal.purchaser}</td>
			</tr>
			<tr>
				<td class="label BgColor">成交价格：</td>
				<td class="content">${collateralAuctionDeal.transactionValue}</td>
				<td class="label BgColor">联系电话：</td>
				<td class="content tabBorderRight">${collateralAuctionDeal.tel}</td>
			</tr>
			<tr>
				<td class="label BgColor">电子邮件：</td>
				<td class="content">${collateralAuctionDeal.mail}</td>
				<td class="label BgColor">联系地址：</td>
				<td class="content tabBorderRight">${collateralAuctionDeal.address}</td>
			</tr>
				<tr>
				<td class="label BgColor">委托机构：</td>
				<td class="content">${collateralAuctionDeal.associatedAgency}</td>
				<td class="label BgColor">审批人：</td>
				<td class="content tabBorderRight">${collateralAuctionDeal.userName}</td>
			</tr>
				<tr>
				<td class="label BgColor">起价标的：</td>
				<td class="content" >${collateralAuctionDeal.startingBid}</td>
					<td class="label BgColor">拍卖费用：</td>
				<td class="content tabBorderRight" >${collateralAuctionDeal.auctionCharges}</td>
			</tr>
					<tr>
				<td class="label BgColor">变现差额：</td>
				<td class="content" >${collateralAuctionDeal.cashBalance}</td>
					<td class="label BgColor">抵贷额：</td>
				<td class="content tabBorderRight" >${collateralAuctionDeal.loanAmount}</td>
			</tr>
					<tr>
				<td class="label BgColor">差额处理：</td>
				<td class="content" >${collateralAuctionDeal.balanceDeal}</td>
					<td class="label BgColor">交易日期：</td>
				<td class="content tabBorderRight" ><fmt:formatDate value='${collateralAuctionDeal.tradeDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
			</tr>
			<tr>
				<td class="label BgColor">备注：</td>
				<td class="content tabBorderRight" colspan="3">${collateralAuctionDeal.remarks }</td>
			</tr>
		</table>
			<div  class="tabbuttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="canceldeal"  value="返回"   loxiaType="button" />
	</div>
	</form>   
</body>
</html>