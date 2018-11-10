<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款调查查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/loanproduct/loanproduct_add.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}
.content ul{
	padding: 0px;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<div class="divBgColor">
			<fmt:message key="label.loan.product.addproduct" bundle="${lang}" />
		</div>
		<form id="loanproductaddForm" method="post">
			<table>
				<tr>
					<!-- 产品名称-->
					<td class="label" valign="bottom"><fmt:message
							key="label.loan.product.info.pro_name" bundle="${lang}" /></td>
					<td width="150" valign="bottom"><input id="prodName"
						name="productInfo.prodName" loxiaType="input" trim="true"
						mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<!-- 担保方式 -->
					<td class="label" valign="bottom"><fmt:message
							key="label.loan.product.info.guarantee_type" bundle="${lang}" /></td>
					<td class="content" width="300" valign="top"><checkBox:checkBox biztypekey="1059"
							id="guaranteeTypeGroup" name="guaranteeTypeGroup" /> <input
						id="guaranteeType" name="productInfo.guaranteeType" type="hidden" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
					<tr>
					<!-- 贷款期限默认值 -->
					<td width="160" class="label"><fmt:message
							key="label.loan.product.info.loan_period_default"
							bundle="${lang}" /></td>
					<td><input id="loanPeriodDefault" loxiaType="number"
						name="productInfo.loanPeriodDefault" trim="true" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<!-- 还款方式 -->
					<td class="label" valign="bottom"><fmt:message
							key="label.loan.product.info.repay_type" bundle="${lang}" /></td>
					<td width="150" valign="bottom"><bizoption:bizoption biztypekey="1091"
							id="repayType" name="productInfo.repayType" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<!-- 贷款利率默认值 -->
					<td width="160" class="label"><fmt:message
							key="label.loan.product.info.rate_default" bundle="${lang}" /></td>
					<td width="150"><input id="rateDefault"
						name="productInfo.rateDefault" loxiaType="number" decimal="2" mandatory="true"  /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<!-- 利率单位 -->
					<td class="label"><fmt:message
							key="label.loaning.interest.init" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1058"
							name="productInfo.interestUnit" isChoose="false" mandatory="true"/><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
				
					
						<!-- 是否启用 -->
                    <td class="label"><fmt:message
							key="label.loan.product.info.loan_start" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1001"
							id="ifValid" name="productInfo.ifValid" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<td class="label">&nbsp;</td>
					<td class="content">&nbsp;</td>
				</tr>
				
			</table>
		</form>
		<form id="loanproductCostForm">
			<!-- 产品费用 -->
			<div class="divBgColor" style="margin-top: 1em;">
				<fmt:message key="label.loaning.title2" bundle="${lang}" />
			</div>

			<div id="edittable1" loxiaType="edittable">
				<table operation="add,delete" append="1" width="100%"
					id="tabProductCost">
					<thead>
						<tr>
							<th><input type="checkbox" /></th>
							<!--  
							<th><fmt:message key="label.loaning.costCode"
									bundle="${lang}" /></th>
							-->
							<th><fmt:message key="label.loaning.costTitle"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costMode"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costRate"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costFix"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costPeriod"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.ifShow"
									bundle="${lang}" /></th>
						</tr>
					</thead>
					<tbody id="pCostBody">
						<c:forEach items="${pcostList}" var="dis" varStatus="loop">
							<tr>
								<td><input type="checkbox" /></td>
								<td><bizselect:bizselect biztypekey="1090" id=""
										mandatory="true" name="productInfoCostList.costCode"
										isChoose="true" selected="${dis.costCode }"
										checkmaster="setCostTitle"  startSort="31" endSort="50"  /></td>
										
										
								<input type="hidden" readonly="true"
									name="productInfoCostList.costTitle" value="${dis.costTitle }" />
									
									
								<td><bizoption:bizoption biztypekey="1092" id=""
										mandatory="true" name="productInfoCostList.costMode"
										isChoose="false" selected="${dis.costMode }"
										checkmaster="selectSetValue" /></td>
								<td><input type="text" loxiaType="money"
									name="productInfoCostList.costRate" value="${dis.costRate }" /></td>
								<td><input type="text" loxiaType="number"
									name="productInfoCostList.costFix" value="${dis.costFix }" /></td>
								<td><bizoption:bizoption biztypekey="1093" id="repayMode"
										name="productInfoCostList.costPeriod" isChoose="false"
										selected="${dis.costPeriod }" /></td>
								<td><bizoption:bizoption biztypekey="1001" id="ifShow"
									name="productInfoCostList.ifShow" isChoose="false"
									selected="${dis.ifShow }" /></td>
							</tr>
						</c:forEach>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" /></td>
							<td><bizselect:bizselect biztypekey="1090"  name="productInfoCostList.costCode" isChoose="true" 
											checkmaster="setCostTitle"  startSort="31" endSort="50"   mandatory="true"  />
											<input type="hidden" name="productInfoCostList.costCode" value="" />
											<input type="hidden" name="productInfoCostList.costTitle" 	value="" /></td>
							<td><bizoption:bizoption biztypekey="1092" id=""
									name="productInfoCostList.costMode" isChoose="false"
									checkmaster="selectSetValue" mandatory="true" /></td>
							<td><input type="text" loxiaType="money"
								name="productInfoCostList.costRate" /></td>
							<td><input type="text" loxiaType="number"
								name="productInfoCostList.costFix" /></td>
							<td><bizoption:bizoption biztypekey="1093" id="repayMode"
									name="productInfoCostList.costPeriod" isChoose="false" /></td>
							<td><bizoption:bizoption biztypekey="1001" id="ifShow"
									name="productInfoCostList.ifShow" isChoose="false" /></td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.button.addproduct" bundle="${lang}"/>"
				id="save">
				<fmt:message key="button.save" bundle="${lang}" />
			</button>
		</div>
		<table id="tbl-loanproductlist"></table>
		<div id="pager"></div>
	</div>

</body>
</html>