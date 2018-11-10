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
		<table class="textalignCenter tabcustomPeoNoborder">
			<c:if test="${collateralLeaseDeal.id ne null}">
		<input type="hidden"  readonly="readonly" value="${collateralLeaseDeal.id }" name="id" id="id"/>
			<input type="hidden"  readonly="readonly" value="${collateralLeaseDeal.creator }" name="creator" id="creator"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${collateralLeaseDeal.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${collateralLeaseDeal.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
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
				<td class="label">承租人：</td>
				<td class="content"><input loxiaType="input" name="lessee" value="${collateralLeaseDeal.lessee}" /></td>
			</tr>
			<tr>
				<td class="label">租赁方式：</td>
				<td class="content"><input loxiaType="input" name="leaseType"  value="${collateralLeaseDeal.leaseType}" /></td>
				<td class="label">租赁金额：</td>
				<td class="content"><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2" name="leaseMoney" value="${collateralLeaseDeal.leaseMoney}" /></td>
			</tr>
			<tr>
				<td class="label">起租日期：</td>
				<td class="content"><input loxiaType="date" name="leaseBegDate" value="<fmt:formatDate value='${collateralLeaseDeal.leaseBegDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"  /></td>
				<td class="label">租赁期限(月)：</td>
				<td class="content"><input  loxiaType="number"  max="9999999999999"  trim="true" name="leaseTerm" value="${collateralLeaseDeal.leaseTerm}" /></td>
			</tr>
				<tr>
				<td class="label">止租日期：</td>
				<td class="content"><input loxiaType="date" name="leaseEndDate" value="<fmt:formatDate value='${collateralLeaseDeal.leaseEndDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"  /></td>
				<td class="label">租金缴纳方式：</td>
				<td class="content"><input loxiaType="input" name="paymentMode" value="${collateralLeaseDeal.paymentMode}" /></td>
			</tr>
				<tr>
				<td class="label">联系电话：</td>
				<td class="content" ><input  loxiaType="input"  name="phone" value="${collateralLeaseDeal.phone}"  checkmaster="validatemobile" /></td>
					<td class="label">电子邮件：</td>
				<td class="content" ><input  loxiaType="input" name="mail" value="${collateralLeaseDeal.mail}"  checkmaster="validateEmail" /></td>
			</tr>
					<tr>
				<td class="label">联系地址：</td>
				<td class="content" ><input loxiaType="input"   name="address" value="${collateralLeaseDeal.address}" /></td>
					<td class="label">交易日期：</td>
				<td class="content" ><input loxiaType="date" name="tradeDate" value="<fmt:formatDate value='${collateralLeaseDeal.tradeDate}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
			</tr>
			<tr>
				<td class="label">备注：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="remarks" value="${collateralLeaseDeal.remarks }"/></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">   
		<input type="button" class="confirm" id="savelease"  value="保存"  loxiaType="button" />
		<input type="button" class="confirm" id="cancellease"  value="返回"   loxiaType="button" />
	</div>
	</form>       
</body>
</html>