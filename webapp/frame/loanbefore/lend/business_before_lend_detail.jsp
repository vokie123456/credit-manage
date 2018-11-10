<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/lend/lend_detail.js'/>"></script>

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
		<input id="projectId" value="${projectId}" type="hidden" /> <label>放款申请信息<input type="hidden"
			id="lendApplyId1000" value="${lb.lendApplyId }" /></label>
	</div>

		<!-- 当前放款信息 -->
		<form id="lendPastForm" method="post">
		<table class="col3">
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
				<td class="label"><fmt:message
						key="label.lend.bank.subBankName" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.subOpenBank}</td>

				<td class="label"><fmt:message
						key="label.lend.bank.subBankNameRepay" bundle="${lang}" /></td>
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
				<td class="content">${lendDetailVo.lendBank}</td>


				<!-- 小贷公司银行账号（还款） -->
				<td class="label"><fmt:message key="label.company.lend.cardNo"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.lendCard}</td>

			</tr>
			<tr>
				<td class="label"><fmt:message key="label.lend.lendMoney"
						bundle="${lang}" /></td>
				<td class="content">${lb.lendMoney}<input id="lendMoney"
					name="lendMoney" type="hidden" value="${lb.lendMoney}" />
				</td>

				<td class="label"><fmt:message key="label.lend.lendingTime"
						bundle="${lang}" /></td>
				<td class="content"><fmt:formatDate value="${lb.lendingTime }"
						pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<td class="label"><fmt:message key="label.sign.applyAgent"
						bundle="${lang}" /></td>
				<td class="content"><showusername:showusername
						value="${lb.lendAgent }"></showusername:showusername></td>
			</tr>

		</table>

		
<br/>
			<!-- 放款资金来源比例    弹出框 -->
			<div id="dialog-chgrole"></div>
			<div class="divBgColor">操作信息</div>
			<table class="col3">
				<tr>
					<td class="label">操作类型：</td>
					<td class="content">${taskList.operType}</td>
					<td class="label">操作时间：</td>
					<td class="content"><fmt:formatDate
							value="${taskList.submitTime}" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
				</tr>
				<tr>
					<td class="label">经办人：</td>
					<td class="content"><showusername:showusername
							value="${taskList.taskAgent}"></showusername:showusername></td>
				</tr>
				<tr>
				<td class="label">操作意见：</td>
				<td  colspan="3" style="font-size: 14px; width:80%;border: 1px solid #dcdcdc;padding-left:10px;" valign="top">${ucx:unCleanXSS(taskList.operReasonRemark) }</td>
			</tr>
			</table>
</body>
</html>
