<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/lend/lend_apply.js?v=3.1.2'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_common.js?v=4.1.2'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>
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


	

	
	
	
	
	<!-- 当前放款信息 -->
	<form id="lendForm" method="post">
	
	    <div id="productConfigDiv"></div>
	    
	    
		<div class="divBgColor">
			<label >放款信息</label>
		</div>
		
		<input id="apply_projectId" name="projectId" value="${projectId}"
			type="hidden" /> 
			<input id="lendApplyId" name="lendApplyId"
			value="${lendDetailVo.lendApplyId}" type="hidden" />
		<table class="col3">
			<tr>


				<!-- 开户行（放款） -->
				<td class="label"><fmt:message key="label.lend.bank.bankName"
						bundle="${lang}" /></td>

				<c:if test="${lendDetailVo.openBank eq null}">
					<td class="content"><input id="openBank" name="openBank"
						loxiaType="input" trim="true" value="" /></td>
				</c:if>

				<c:if test="${lendDetailVo.openBank ne null}">
					<td class="content">${lendDetailVo.openBank} <input
						type="hidden" name="openBank" id="openBank"
						value="${lendDetailVo.openBank}" />
					</td>
				</c:if>



				<!-- 开户行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.bankNameRepay" bundle="${lang}" /></td>
				<c:if test="${lendDetailVo.openBankRepay eq null}">
					<td class="content"><input id="openBankRepay"
						name="openBankRepay" loxiaType="input" trim="true" /></td>
				</c:if>

				<c:if test="${lendDetailVo.openBankRepay ne null}">
					<td class="content">${lendDetailVo.openBankRepay} <input
						type="hidden" name="openBankRepay" id="openBankRepay"
						value="${lendDetailVo.openBankRepay}" />
					</td>
				</c:if>

			</tr>

			<tr>

				<!-- 支行（放款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankName" bundle="${lang}" /></td>
				<c:if test="${lendDetailVo.subOpenBank eq null}">
					<td class="content"><input id="subOpenBank" loxiaType="input"
						name="subOpenBank" value="" /></td>
				</c:if>
				<c:if test="${lendDetailVo.subOpenBank ne null}">
					<td class="content">${lendDetailVo.subOpenBank}<input
						type="hidden" name="subOpenBank"
						value="${lendDetailVo.subOpenBank}" />
					</td>
				</c:if>


				<!-- 支行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankNameRepay" bundle="${lang}" /></td>
				<c:if test="${lendDetailVo.subOpenBankRepay eq null}">
					<td class="content"><input id="subOpenBankRepay"
						loxiaType="input" name="subOpenBankRepay" value="" /></td>
				</c:if>
				<c:if test="${lendDetailVo.subOpenBankRepay ne null}">
					<td class="content">${lendDetailVo.subOpenBankRepay}<input
						type="hidden" name="subOpenBankRepay"
						value="${lendDetailVo.subOpenBankRepay}" />
					</td>
				</c:if>
			</tr>

			<tr>

				<!-- 银行账号（放款） -->
				<td class="label"><fmt:message key="label.lend.bank.bankNo"
						bundle="${lang}" /></td>
				<c:if test="${lendDetailVo.bankCard eq null}">
					<td class="content"><input id="bankCard" loxiaType="input"
						name="bankCard" value="" /></td>
				</c:if>
				<c:if test="${lendDetailVo.bankCard ne null}">
					<td class="content">${lendDetailVo.bankCard} <input
						type="hidden" name="bankCard" value="${lendDetailVo.bankCard}" />
					</td>
				</c:if>

				<!-- 银行账号（还款） -->

				<td class="label"><fmt:message
						key="label.lend.bank.bankNoRepay" bundle="${lang}" /></td>
				<c:if test="${lendDetailVo.bankCardRepay eq null}">
					<td class="content"><input id="bankCardRepay"
						loxiaType="input" name="bankCardRepay" value="" /></td>
				</c:if>
				<c:if test="${lendDetailVo.bankCardRepay ne null}">
					<td class="content">${lendDetailVo.bankCardRepay} <input
						type="hidden" name="bankCardRepay"
						value="${lendDetailVo.bankCardRepay}" />
					</td>
				</c:if>
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
				<td class="content" id="hiddenMoneyTd"><input id="lendMoney"
					name="lendMoney" loxiaType="money" trim="true" mandatory="true"
					value="${lendDetailVo.lendMoney}" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>

				<td class="label"><fmt:message key="label.lend.lendingTime"
						bundle="${lang}" /></td>
				<td class="content"><input id="lendingTime" loxiaType="date"
					name="lendingTime" mandatory="true" readonly="readonly"
					value="<fmt:formatDate value='${lendDetailVo.lendingTime}' pattern='yyyy-MM-dd' />" /> <label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>

		</table>
		<br />
		<!-- 以往放款信息 -->
	        <c:if test="${pastListNum ne 0 }">
			<c:forEach items="${pastList}" var="dis" varStatus="loop">
				<div class="textalignCenter contentfont contentBold" >
					<label>第${pastListNum - loop.index }次放款信息</label>
				</div>
				<br/>
				<table class="col3">
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
	</c:if>

		<!-- 	上一节点操作意见 -->
	<div id="prevOpinionDiv"></div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="lendApply">提交</button>
		</div>
	</form>
	

	<div id="dialog-chgrole"></div>

</body>
</html>
