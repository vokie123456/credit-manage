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
		<table class="textalignCenter tabcustomPeoNoborder">
		<c:if test="${collateralAuctionDeal.id ne null}">
			<input type="hidden"  readonly="readonly" value="${collateralAuctionDeal.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${collateralAuctionDeal.creator }" name="creator" id="creator"/><!--创建人  -->
			<input type="hidden"  readonly="readonly" value="${collateralAuctionDeal.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
			<input type="hidden"  readonly="readonly" value="${collateralAuctionDeal.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
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
				<td class="label">购买人：</td>
				<td class="content"><input loxiaType="input" name="purchaser" value="${collateralAuctionDeal.purchaser}" /></td>
			</tr>
			<tr>
				<td class="label">成交价格：</td>
				<td class="content"><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2" name="transactionValue"  value="${collateralAuctionDeal.transactionValue}" /></td>
				<td class="label">联系电话：</td>
				<td class="content"><input loxiaType="input" name="tel" value="${collateralAuctionDeal.tel}"  checkmaster="validatemobile" /></td>
			</tr>
			<tr>
				<td class="label">电子邮件：</td>
				<td class="content"><input loxiaType="input" name="mail" value="${collateralAuctionDeal.mail}" checkmaster="validateEmail" /></td>
				<td class="label">联系地址：</td>
				<td class="content"><input loxiaType="input" name="address" value="${collateralAuctionDeal.address}" /></td>
			</tr>
				<tr>
				<td class="label">委托机构：</td>
				<td class="content"><input loxiaType="input" name="associatedAgency" value="${collateralAuctionDeal.associatedAgency}"  /></td>
				<td class="label">审批人：</td>
				<td class="content"><introduceUser:introduceUser id="approval" name="approval" compCode="${compCode}" selected="${collateralAuctionDeal.approval}" ></introduceUser:introduceUser>
				</td>
			</tr>
				<tr>
				<td class="label">起价标的：</td>
				<td class="content" ><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  name="startingBid" value="${collateralAuctionDeal.startingBid}" /></td>
					<td class="label">拍卖费用：</td>
				<td class="content" ><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  name="auctionCharges" value="${collateralAuctionDeal.auctionCharges}" /></td>
			</tr>
					<tr>
				<td class="label">变现差额：</td>
				<td class="content" ><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  name="cashBalance" value="${collateralAuctionDeal.cashBalance}" /></td>
					<td class="label">抵贷额：</td>
				<td class="content" ><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  name="loanAmount" value="${collateralAuctionDeal.loanAmount}" /></td>
			</tr>
					<tr>
				<td class="label">差额处理：</td>
				<td class="content" ><input loxiaType="input" name="balanceDeal" value="${collateralAuctionDeal.balanceDeal}" /></td>
					<td class="label">交易日期：</td>
				<td class="content" ><input loxiaType="date" name="tradeDate" value="<fmt:formatDate value='${collateralAuctionDeal.tradeDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
			</tr>
			<tr>
				<td class="label">备注：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="remarks" value="${collateralAuctionDeal.remarks }"/></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="savedeal"  value="保存"  loxiaType="button" />
		<input type="button" class="confirm" id="canceldeal"  value="返回"   loxiaType="button" />
	</div>
	</form>   
</body>
</html>