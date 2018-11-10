<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/lend/lend_past.js'/>"></script>

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
		<table class="textalignCenter tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0">
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
		<label>放款信息</label>

	</div>
	
	
	
	<br />
	<!-- 当前放款信息 -->
	<form id="lendPastForm" method="post">
			<input id="lendApplyId" name="lendApplyId"
			     value="${lendApply.lendApplyId}" type="hidden" /> 
		<table class="textalignCenter tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0">
            <!-- 开户行 -->
			<tr>
				<td class="label"><fmt:message key="label.lend.bank.bankName"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.openBank}</td>
				
				<td class="label"><fmt:message
						key="label.lend.bank.bankNameRepay" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.openBankRepay}</td>
				
			</tr>
			<!-- 支行 -->
			<tr>
			    <td class="label"><fmt:message key="label.lend.bank.subBankName"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.subOpenBank}</td>
				
				<td class="label"><fmt:message key="label.lend.bank.subBankNameRepay"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.subOpenBankRepay}</td>
				
			</tr>
			
			<!-- 账号 -->
			<tr>
				<td class="label"><fmt:message key="label.lend.bank.bankNo"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.bankCard}</td>
				
				<td class="label"><fmt:message
						key="label.lend.bank.bankNoRepay" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.bankCardRepay}</td>
			</tr>
			<tr>
				<!-- 小贷公司开户行（还款） -->
				<td class="label"><fmt:message
						key="label.company.lend.bankName" bundle="${lang}" /></td>
				<td class="content">${lendApply.lendBank}</td>


				<!-- 小贷公司银行账号（还款） -->
				<td class="label"><fmt:message key="label.company.lend.cardNo"
						bundle="${lang}" /></td>
				<td class="content">${lendApply.lendCard}</td>
			</tr>

			<tr>
				<td class="label"><fmt:message key="label.lend.lendMoney"
						bundle="${lang}" /></td>
				<td class="content">${lendApply.lendMoney}<input
					id="lendMoney" name="lendMoney" type="hidden"
					value="${lendApply.lendMoney}" />
				</td>

				<td class="label"><fmt:message key="label.lend.lendingTime"
						bundle="${lang}" /></td>
				<td class="content"><input id="lendingTime" loxiaType="date"
					name="lendingTime" mandatory="true" readonly="readonly"
					value="<fmt:formatDate value='${lendApply.lendDate}' pattern='yyyy-MM-dd' />" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>

		</table>
		<br />
		<!-- 以往放款信息 -->
	<c:if test="${pastListNum ne 0 }">
         
		<form>
			<c:forEach items="${pastList}" var="dis" varStatus="loop">
				<div style="text-align: center;">
					<label >第${pastListNum - loop.index }次放款信息</label>
				</div>
				<table class="textalignCenter tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0">
					<input type="hidden" id="lendApplyId${loop.index}" value="${dis.lendApplyId}" />
					<tr>
						<!-- 小贷公司开户行（还款） -->
						<td class="label"><fmt:message
								key="label.company.lend.bankName" bundle="${lang}" /></td>
						<td class="content">${dis.lendBank}</td>


						<!-- 小贷公司银行账号（还款） -->
						<td class="label"><fmt:message
								key="label.company.lend.cardNo" bundle="${lang}" /></td>
						<td class="content">${dis.lendCard}</td>
					</tr>
					<tr>
						<td class="label"><fmt:message key="label.lend.lendMoney"
								bundle="${lang}" /></td>
						<td class="content">${dis.lendMoney}</td>

						<td class="label"><fmt:message key="label.lend.lendingTime"
								bundle="${lang}" /></td>
						<td class="content">${dis.detailLendTime}</td>

					</tr>
					<tr>

						<td class="label"><fmt:message key="label.sign.applyAgent"
								bundle="${lang}" /></td>
						<td class="content">${dis.agentName}</td>

					</tr>

				</table>
				<br />
			</c:forEach>
		</form>
	</c:if>
		
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
