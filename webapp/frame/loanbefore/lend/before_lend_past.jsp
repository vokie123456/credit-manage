<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/lend/before_lend_past.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}
</style>

<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">

	<!-- 项目基本信息 -->
	<div class="divBgColor">
		<fmt:message key="label.person.sign.project.detail.title"
			bundle="${lang}" />
	</div>

	<form>
		<table class="col3">
			<tr>
				<td class="label">项目编号：</td>
				<td class="content">${lendDetailVo.projectCode }</td>

				<td class="label"><fmt:message key="label.sign.clientName"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.clientName}</td>

			</tr>
			<tr>
				<td class="label"><fmt:message key="label.sign.contractId"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.contractId}</td>
				<td class="label"><fmt:message
						key="label.lend.moneyCheckBalance" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.moneyCheckBalance}</td>
			</tr>
			<tr>
				<td class="label"><fmt:message
						key="label.sign.project.startTime" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.contractStart}</td>
				<td class="label"><fmt:message key="label.sign.project.endTime"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.contractEnd}</td>
			</tr>
		</table>
	</form>
	<br />

     <%@ include file="/frame/loaning/lend_product_config_detail.jsp"%>

	<div class="divBgColor">
	    <!-- 公司账套数 -->
	    <input type="hidden" id="hiddenCaNum" value="${caNum }" />
	    <input type="hidden" id="hiddenLm" value="${accountLm }" />
		<label>放款信息</label>

	</div>
	
	<!-- 当前放款信息 -->
	<form id="lendPastForm" method="post">
			<input id="lendApplyId" name="lendApplyId"
			value="${lendDetailVo.lendApplyId}" type="hidden" />
		<table class="col3">
			<tr>
				<!-- 开户行（放款） -->
				<td class="label"><fmt:message key="label.lend.bank.bankName"
						bundle="${lang}" /></td>
				<td class="content">
				
				<input id="openBank" name="openBank"
					loxiaType="input" trim="true" value="${lendDetailVo.openBank}" /></td>

				<!-- 开户行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.bankNameRepay" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.openBankRepay}<input id="openBankRepay" value="${lendDetailVo.openBankRepay}"
					name="openBankRepay" type="hidden" trim="true" /></td>
			</tr>
			<tr>
				<!-- 支行（放款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankName" bundle="${lang}" /></td>
				<td class="content"><input id="subOpenBank" loxiaType="input"
					name="subOpenBank" value="${lendDetailVo.subOpenBank}" /></td>

				<!-- 支行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankNameRepay" bundle="${lang}" /></td>
				<td class="content"><input id="subOpenBankRepay"
					loxiaType="input" name="subOpenBankRepay" value="${lendDetailVo.subOpenBankRepay}" /></td>
			</tr>
			<tr>
				<!-- 银行账号（放款） -->
				<td class="label"><fmt:message key="label.lend.bank.bankNo"
						bundle="${lang}" /></td>
				<td class="content">
				<input id="bankCard" loxiaType="input"
					name="bankCard" value="${lendDetailVo.bankCard}" /></td>

				<!-- 银行账号（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.bankNoRepay" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.bankCardRepay}<input id="bankCardRepay" type="hidden"
					name="bankCardRepay" value="${lendDetailVo.bankCardRepay}" /></td>
			</tr>
			<tr>
				<!-- 小贷公司开户行（还款） -->
				<td class="label"><fmt:message
						key="label.company.lend.bankName" bundle="${lang}" /></td>
				<td class="content"><input id="lendBank" name="lendBank"
					loxiaType="input" trim="true" value="${lendDetailVo.lendBank}" /></td>


				<!-- 小贷公司银行账号（还款） -->
				<td class="label"><fmt:message key="label.company.lend.cardNo"
						bundle="${lang}" /></td>
				<td class="content"><input id="lendCard" loxiaType="input"
					name="lendCard" value="${lendDetailVo.lendCard}" /></td>
			</tr>
			<tr>
				<td class="label"><fmt:message key="label.lend.lendMoney"
						bundle="${lang}" /></td>
				<td class="content" id="hiddenMoneyTd">
				<!-- 公司账套数大于1，则不允许输入，只能在账套设置里配 -->
				<c:if test="${caNum > 1}">
				${accountLm}
				<input id="lendMoney" name="lendMoney" type="hidden"
					value="${accountLm}" />
				</c:if>
				
			    <c:if test="${caNum == 1 and accountLm == '0.00'}">
			    <input id="lendMoney"
					name="lendMoney" loxiaType="money" trim="true" mandatory="true"
					value="${accountLm}" />
				</c:if>
				
				<c:if test="${caNum == 1 and accountLm != '0.00'}">
			    ${accountLm}
				<input id="lendMoney" name="lendMoney" type="hidden"
					value="${accountLm}" />
				</c:if>
					
				 <label class="del_mandatory">&nbsp;&nbsp;*</label></td>

				<td class="label"><fmt:message key="label.lend.lendingTime"
						bundle="${lang}" /></td>
				<td class="content"><input id="lendingTime" loxiaType="date" value="<fmt:formatDate value='${lendDetailVo.lendingTime}' pattern='yyyy-MM-dd' />"
					name="lendingTime" mandatory="true" readonly="readonly"/> <label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>

		</table>
		
	   
	   <%@include file="/common/editor.jsp"%>
	   <br/>
       <div class="divBgColor">操作信息</div>
		<table class="col3">
			<tr>
				<td class="label"></td>
				<td class="content"></td>
				<td class="label"></td>
				<td class="content"></td>
		</tr>
			<tr>
		<td  colspan="4"  style="padding-left: 10%">
			<textarea class="cleditor" id="operMark" name="operMark" rows="4" >${ucx:unCleanXSS(taskList.operReasonRemark) }</textarea>
		</td>
			</tr>
		</table>

		<div id="operateOrder" class="buttonlist buttonDivWidth">
			
		</div>
	</form>

	<!-- 放款资金来源比例    弹出框 -->
	<div id="dialog-chgrole"></div>

</body>
</html>
