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
		<table class="textalignCenter tabcustomPeoNoborder">
			<c:if test="${collateralDevelopmentDeal.id ne null}">
		<input type="hidden"  readonly="readonly" value="${collateralDevelopmentDeal.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${collateralDevelopmentDeal.creator }" name="creator" id="creator"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${collateralDevelopmentDeal.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${collateralDevelopmentDeal.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
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
				<td class="label">投资总额：</td>
				<td class="content"><input loxiaType="number" max="9999999999999.99"  trim="true" decimal="2" name="" value="${collateralDevelopmentDeal.investmentAmount}" /></td>
			</tr>
			<tr>
				<td class="label">项目建设地址：</td>
				<td class="content"><input loxiaType="input"   name="projectPlace"  value="${collateralDevelopmentDeal.projectPlace}" /></td>
				<td class="label">合作方式：</td>
				<td class="content"><input loxiaType="input" name="cooperationType" value="${collateralDevelopmentDeal.cooperationType}"  /></td>
			</tr>
			<tr>
				<td class="label">合营期限：</td>
				<td class="content"><input loxiaType="input" max="9999999999999.99"  trim="true" name="term"  value="${collateralDevelopmentDeal.term}"  /></td>
				<td class="label">负责人：</td>
				<td class="content"><input loxiaType="input" name="chief" value="${collateralDevelopmentDeal.chief}" /></td>
			</tr>
				<tr>
				<td class="label">联系电话：</td>
				<td class="content"><input loxiaType="input" name="phone" value="${collateralDevelopmentDeal.phone}"  checkmaster="validatemobile" /></td>
				<td class="label">电子邮件：</td>
				<td class="content"><input loxiaType="input" name="mail" value="${collateralDevelopmentDeal.mail}" checkmaster="validateEmail" /></td>
			</tr>
				<tr>
				<td class="label">联系地址：</td>
				<td class="content" ><input loxiaType="input"   name="address" value="${collateralDevelopmentDeal.address}" /></td>
					<td class="label">出资额：</td>
				<td class="content" ><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  name="contributionAmount" value="${collateralDevelopmentDeal.contributionAmount}" /></td>
			</tr>
					<tr>
				<td class="label">收益额：</td>
				<td class="content" ><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  name="income" value="${collateralDevelopmentDeal.income}" /></td>
					<td class="label">变现差额：</td>
				<td class="content" ><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  name="balanceAmount" value="${collateralDevelopmentDeal.balanceAmount}" /></td>
			</tr>
					<tr>
				<td class="label">抵贷额：</td>
				<td class="content" ><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  name="loanAmount" value="${collateralDevelopmentDeal.loanAmount}" /></td>
					<td class="label">差额处理：</td>
				<td class="content" ><input loxiaType="input" name="balanceDeal" value="${collateralDevelopmentDeal.balanceDeal}" /></td>
				</tr>
				<tr>
					<td class="label">交易日期：</td>
				<td class="content" ><input loxiaType="date" name="tradeDate" value="<fmt:formatDate value='${collateralDevelopmentDeal.tradeDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
			</tr>
			<tr>
				<td class="label">备注：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="remarks" value="${collateralDevelopmentDeal.remarks }"/></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="savedevelopment"  value="保存"  loxiaType="button" />
		<input type="button" class="confirm" id="canceldevelopment"  value="返回"   loxiaType="button" />
	</div>
	</form>   
</body>
</html>