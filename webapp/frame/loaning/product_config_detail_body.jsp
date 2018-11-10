<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript" src="<c:url value='/scripts/frame/loaning/lend_product_config_detail.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<div class="divBgColor">产品配置信息</div>
<table class="col3" >
			<tr>
				<!-- 担保方式 -->
				<td class="label"><fmt:message key="label.loaning.guaranteeType" bundle="${lang}" /></td>
				<td class="content">
				<bizoptionname:showname biztypekey="1059" value="${pconfig.guaranteeType }" />
				</td>
			
			<!-- 还款方式-->
				<td class="label"><fmt:message key="label.loaning.repayMode" bundle="${lang}" /></td>
				<td class="content">
				<bizoptionname:showname biztypekey="1091" value="${pconfig.repayMode }" />
				</td>
			</tr>
			<tr>
					<!-- 贷款利率 -->
		<td class="label"><label onclick="detailInte();" ><fmt:message key="label.loaning.interest"
				bundle="${lang}" /></label></td>
		<td class="content">${pconfig.interestCompliance }</td>
		<input type="hidden" value="${pconfig.interest }" id="interest" />
		
				<!-- 利率单位 -->
		        <td class="label"><fmt:message key="label.loaning.interest.init"
				      bundle="${lang}" /></td>
		        <td class="content"><bizoptionname:showname biztypekey="1058"
				                            value="${pconfig.interestUnit }" /></td>
			</tr>
			<tr>
				<!-- 罚息率 -->
				<td class="label"><fmt:message key="label.loaning.fineInterest" bundle="${lang}" /></td>
				<td class="content">${pconfig.fineInterest }</td>
			<!-- 罚息率 -->
				<td class="label"><fmt:message key="label.loaning.embezzleInterest" bundle="${lang}" /></td>
				<td class="content">${pconfig.embezzleInterest}</td>
			</tr>
			<tr>
			<!-- 贷款期限 -->
				<td class="label"  id="periodDes">还款期限：</td>
			<td class="content">${pconfig.loanPeriod }</td>
			    <!-- 每月还款日 -->
			<td class="label"><fmt:message key="label.loaning.loanRepayDay"  bundle="${lang}" /></td>
			<td class="content">${pconfig.loanRepayDay }</td>
			</tr>
		</table>
		<!-- 产品费用 -->
		<div class="divBgColor" style="margin-top: 1em;">
			<fmt:message key="label.loaning.title2" bundle="${lang}" />
		</div>
			<table  class="textalignCenter tabcustom"  cellpadding="0"
					cellspacing="0"   id="tabProductCost">
			<thead>
					<tr class="tabcustomTr">
						<td  class="label" ><fmt:message key="label.loaning.costTitle"
								bundle="${lang}" /></td>
						<td class="content"  style="text-align: center;"><fmt:message key="label.loaning.costMode"
								bundle="${lang}" /></td>
						<td class="content"  style="text-align: center;"><fmt:message key="label.loaning.costRate"
								bundle="${lang}" /></td>
						<td class="content"  style="text-align: center;"><fmt:message key="label.loaning.costFix" 
						        bundle="${lang}" /></td>
						<td class="content tabBorderRight" ><fmt:message key="label.loaning.costPeriod"
								bundle="${lang}" /></td>
					</tr>
			 </thead>
				<tbody id="pCostBody" style="text-align:center;">
					<c:forEach items="${pcostList}" var="dis" >
					<c:if test="${ empty productId || dis.ifShow !=100112}">
						<tr>
							<td class="label"><bizoptionname:showname biztypekey="1090" value="${dis.costCode }" /></td>
							<td  class="content"   style="text-align: center;">
							<bizoptionname:showname biztypekey="1092" value="${dis.costMode }" />
							</td>
							<td  class="content" style="text-align: center;">${dis.costRate }</td>
							<td class="content" style="text-align: center;">${dis.costFix}</td>
							<td  class="content tabBorderRight" >
							<bizoptionname:showname biztypekey="1093" value="${dis.costPeriod}" />
							</td>
						</tr>
					</c:if>
					</c:forEach>
				</tbody>
			</table>
<div id="dialogDiv"></div>