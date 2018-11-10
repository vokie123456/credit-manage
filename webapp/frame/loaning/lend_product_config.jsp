<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/common/metaload.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/lend_product_config.js'/>"></script>
<fmt:setBundle basename="messages" var="lang" />
<style type="text/css">
.label {
	text-align: left;
}

/* .content ul {
	margin: 0px;
	padding-right: 0px;
	padding-left: 0px;
} */
td ul{ 
list-style: none;
margin: 0px; padding:0px;
float: left;
}
</style>
<div class="divBgColor">产品配置</div>
<table class="col3">
    <tr>
		<!-- 贷款产品 -->
		<td class="label">贷款产品：</td>
		<td class="content">
		  ${productName}
		  <input type="hidden" name="productConfig.productId" value="${pconfig.productId}">
		</td>
	</tr>
	<tr>
		<!-- 担保方式 -->
		<td class="label"><fmt:message key="label.loaning.guaranteeType"
				bundle="${lang}" /></td>
		<td class="content"><checkBox:checkBox biztypekey="1059"
				name="guaranteeType" checked="${pconfig.guaranteeType }" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>
			
	    <!-- 还款方式-->
		<td class="label"><fmt:message key="label.loaning.repayMode"
				bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption biztypekey="1091"
				id="repayMode" name="productConfig.repayMode" isChoose="false"
				mandatory="true" selected="${pconfig.repayMode }" /><label
			class="del_mandatory">&nbsp;*</label></td>
			
	</tr>
	
	<tr>
		
		<!-- 贷款利率 -->
		<td class="label"><label onclick="editInte();" ><fmt:message key="label.loaning.interest"
				bundle="${lang}" /></label></td>
		<td class="content"><input
			name="productConfig.interestCompliance" loxiaType="number" trim="true"
			value="${interestCompliance }" decimal="2" mandatory="true" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>
			
		<input type="hidden" id="interest" name="productConfig.interest" value="${pconfig.interest }" />
			
		<!-- 利率单位 -->
		<td class="label"><fmt:message key="label.loaning.interest.init"
				bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption biztypekey="1058"
				name="productConfig.interestUnit" isChoose="false" mandatory="true"
				selected="${pconfig.interestUnit }" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>

	</tr>
	<tr>
		<!-- 罚息率 -->
		<td class="label"><fmt:message key="label.loaning.fineInterest"
				bundle="${lang}" /></td>
		<td class="content"><input id="fineInterest"
			name="productConfig.fineInterest" loxiaType="money" trim="true"
			value="${pconfig.fineInterest }" mandatory="true" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>
		<!-- 挪用罚息上浮 -->
		<td class="label"><fmt:message
				key="label.loaning.embezzleInterest" bundle="${lang}" /></td>
		<td class="content"><input id="embezzleInterest"
			name="productConfig.embezzleInterest" loxiaType="money" trim="true"
			value="<c:if test="${empty pconfig.embezzleInterest }">0.00</c:if><c:if test="${ not empty pconfig.embezzleInterest }">${pconfig.embezzleInterest }</c:if>"
			mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
	</tr>
	<tr>
		<!-- 贷款期限 -->
		<td class="label">贷款期限(月)：</td>
		<td class="content"><input id="loanPeriod"
			name="productConfig.loanPeriod" loxiaType="number" trim="true"
			value="${pconfig.loanPeriod }" mandatory="true" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>

		<!-- 每月还款日 -->
		<td class="label"><fmt:message key="label.loaning.loanRepayDay"
				bundle="${lang}" /></td>
		<td class="content"><input id="loanRepayDay"
			name="productConfig.loanRepayDay" loxiaType="number" trim="true"
			value="${pconfig.loanRepayDay }" mandatory="true" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>
	</tr>
</table>
<!-- 产品费用 ${pconfig.productId}-->
<div class="divBgColor" style="margin-top: 1em;">
	<fmt:message key="label.loaning.title2" bundle="${lang}" />
	<c:if test="${pconfig.productId eq null}">
	<button id="addCostItem" icons="ui-icon-stop" title="添加费用项"
		aria-disabled="false" role="button"
		class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only"
		type="button" showtext="false" style="width: 16px; height: 16px;">
		<span class="ui-button-icon-primary ui-icon ui-icon-plus"></span><span
			class="ui-button-text">添加费用项</span>
	</button>
	<button id="removeCostItem" icons="ui-icon-stop" title="删除费用项"
		aria-disabled="false" role="button"
		class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only"
		type="button" showtext="false" style="width: 16px; height: 16px;">
		<span class="ui-button-icon-primary ui-icon ui-icon-minus"></span><span
			class="ui-button-text">删除费用项</span>
	</button>
	<span style="color: red; font-weight: normal;"><small>【注：随放款扣除的费用请勿添加】</small></span>
	</c:if>
</div>
<table class="textalignCenter tabcustom"  cellpadding="0"
					cellspacing="0"  id="tabProductCost">
	<thead>
		<tr class="tabcustomTr">
			<c:if test="${pconfig.productId eq null}">
				<td class="widthPx60"><input type="checkbox" id="selectCostAll"
					name="selectCostAll"></td>
			</c:if>
			<td class="label" style="padding-right: 20px;"><fmt:message
					key="label.loaning.costTitle" bundle="${lang}" /></td>
			<td class="content"><fmt:message
					key="label.loaning.costMode" bundle="${lang}" /></td>
			<td class="content contentfont"><fmt:message
					key="label.loaning.costRate" bundle="${lang}" /></td>
			<td class="content contentfont"><fmt:message
					key="label.loaning.costFix" bundle="${lang}" /></td>
			<td class="content contentfont tabBorderRight" style="padding-left: 20px;"><fmt:message
					key="label.loaning.costPeriod" bundle="${lang}" /></td>
		</tr>
	</thead>
	<tbody id="pCostBody">
		<c:forEach items="${pcostList}" var="dis" varStatus="loop">
			<tr <c:if test="${dis.ifShow==100112}">style="display:none;"</c:if> >
				<c:if test="${pconfig.productId eq null}">
					<td class="widthPx60"><input type="checkbox" id="selectCost"
						name="selectCost" /></td>
				</c:if>
				<td class="label">
				     <c:if test="${pconfig.productId ne null}">
						<bizoptionname:showname biztypekey="1090" value="${dis.costCode }" />
						<!--费用号及 费用项 -->
						<input type="hidden" name="productCostList.costCode"
							value="${dis.costCode }" />
						<input type="hidden" name="productCostList.costTitle"
							value="${dis.costTitle }" />
					 </c:if>
					 <c:if test="${pconfig.productId eq null}">
						<bizselect:bizselect biztypekey="1090"
							name="productCostList.costCode" startSort="31" endSort="50"
							selected="${dis.costCode }" mandatory="true" />
						<!--费用号及 费用项 -->
						<input type="hidden" name="productCostList.costTitle" value="" />
					 </c:if></td>
				<td class="content"><bizoption:bizoption
						biztypekey="1092" id="" mandatory="true"
						name="productCostList.costMode" isChoose="false"
						selected="${dis.costMode }" checkmaster="selectSetValue" /></td>
				<td class="content"><input
					type="text" loxiaType="money" trim="true"
					name="productCostList.costRate" value="${dis.costRate }" /></td>
				<td class="content"><input
					type="text" loxiaType="number" decimal="2" trim="true"
					name="productCostList.costFix" value="${dis.costFix }" /></td>
				<td class="content contentfont tabBorderRight"><bizoption:bizoption
						biztypekey="1093" name="productCostList.costPeriod"
						isChoose="false" selected="${dis.costPeriod }" /></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div id="costDiv" class="disNone"></div>
<div id="product-dialog"></div>
