<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>押品联合开发</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/debtassets/collateral_development_deal_edit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="save_development_deal" name="save_development_deal" >  
	<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
			<c:if test="${collateralDevelopmentDeal.id ne null}">
		<input type="hidden"  readonly="readonly" value="${collateralDevelopmentDeal.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${collateralDevelopmentDeal.creator }" name="creator" id="creator"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${collateralDevelopmentDeal.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${collateralDevelopmentDeal.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
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
				<td class="content"><bizoptionname:showname biztypekey="1152,1153" value="${collateralDevelopmentDeal.collateralType}" /></td>
				<td class="label BgColor">投资总额：</td>
				<td class="content tabBorderRight">${collateralDevelopmentDeal.investmentAmount}</td>
			</tr>
			<tr>
				<td class="label BgColor">项目建设地址：</td>
				<td class="content">${collateralDevelopmentDeal.projectPlace}</td>
				<td class="label BgColor">合作方式：</td>
				<td class="content tabBorderRight">${collateralDevelopmentDeal.cooperationType}</td>
			</tr>
			<tr>
				<td class="label BgColor">合营期限：</td>
				<td class="content">${collateralDevelopmentDeal.term}</td>
				<td class="label BgColor">负责人：</td>
				<td class="content tabBorderRight">${collateralDevelopmentDeal.chief}</td>
			</tr>
				<tr>
				<td class="label BgColor">联系电话：</td>
				<td class="content">${collateralDevelopmentDeal.phone}</td>
				<td class="label BgColor">电子邮件：</td>
				<td class="content tabBorderRight">${collateralDevelopmentDeal.mail}</td>
			</tr>
				<tr>
				<td class="label BgColor">联系地址：</td>
				<td class="content" >${collateralDevelopmentDeal.address}</td>
					<td class="label BgColor">出资额：</td>
				<td class="content tabBorderRight" >${collateralDevelopmentDeal.contributionAmount}</td>
			</tr>
					<tr>
				<td class="label BgColor">收益额：</td>
				<td class="content" >${collateralDevelopmentDeal.income}</td>
					<td class="label BgColor">变现差额：</td>
				<td class="content tabBorderRight" >${collateralDevelopmentDeal.balanceAmount}</td>
			</tr>
					<tr>
				<td class="label BgColor">抵贷额：</td>
				<td class="content" >${collateralDevelopmentDeal.loanAmount}</td>
					<td class="label BgColor">差额处理：</td>  
				<td class="content tabBorderRight" >${collateralDevelopmentDeal.balanceDeal}</td>
				</tr>
				<tr>
					<td class="label BgColor">交易日期：</td>
				<td class="content tabBorderRight" colspan="3" ><fmt:formatDate value='${collateralDevelopmentDeal.tradeDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
			</tr>
			<tr>
				<td class="label BgColor">备注：</td>
				<td class="content tabBorderRight" colspan="3">${collateralDevelopmentDeal.remarks }</td>
			</tr>
		</table>
			<div  class="tabbuttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="canceldevelopment"  value="返回"   loxiaType="button" />
	</div>
	</form>   
</body>
</html>