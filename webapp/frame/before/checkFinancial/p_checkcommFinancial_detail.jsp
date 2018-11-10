<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<fmt:setBundle basename="messages" var="lang" />
<div class="divBgColor">流程信息</div>
<table class="col3">
			<tr>
				<!-- 工作流程  -->
			<td class="label"><fmt:message key="label.applyDetail.wf_code"
					bundle="${lang}" /></td>
			<td class="content">${project.wfName}</td>
			<td class="label"></td>
			<td class="content"></td>
			</tr>
</table>
<!-- 贷款信息-->
	<div class="divBgColor">
		<fmt:message key="label.apply.loan" bundle="${lang}" />
	</div>
	
<table class="col3">
	<tr>
		<!-- 希望贷款金额 applyBasic.loanHopeMoney  -->
		<td class="label">申请金额(万元)：</td>
		<td class="content">${applyBasic.loanHopeMoney}</td>
			<!-- 产品名称  -->
		<td class="label"><fmt:message key="label.loan.product.loan.name"
				bundle="${lang}" /></td>
		<td class="content">${project.prodName}</td>
	</tr>
	<tr>
		<!-- 贷款用途 applyBasic.loanPurpose 键值对数据 -->
		<td class="label"><fmt:message
				key="label.applyDetail.loanPurpose" bundle="${lang}" /></td>
		<td class="content">${applyBasic.loanPurpose }</td>
	</tr>
	<tr>
		<td class="label">还款来源：</td>
		<td class="content" colspan="3">${applyBasic.repaySourse }</td>
	</tr>
	<tr>
		<!-- 信息来源  applyBasic.infoFrom -->
		<td class="label">贷款引进人：</td>
		<td class="content"><showusername:showusername
				value="${applyBasic.infoFrom}" ></showusername:showusername></td>
	</tr>
	<tr>
		<!-- 客户来源 applyBasic.clientFrom 键值对数据 -->
		<td class="label"><fmt:message key="label.applyDetail.clientFrom"
				bundle="${lang}" /></td>
		<td class="content"><bizoptionname:showname biztypekey="1004"
				value="${applyBasic.clientFrom}" /></td>
		<c:if test="${applyBasic.clientFrom==100412}">
			<td class="label">中介信息：</td>
			<td class="content">${applyBasic.clientFromAgency}</td>
		</c:if>
	</tr>
</table>
   <div class="divBgColor">放款信息</div>
   <table class="col3">
     <tr>
				<!-- 开户行（放款） -->
				<td class="label"><fmt:message key="label.lend.bank.bankName"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.openBank}</td>

				<!-- 开户行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.bankNameRepay" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.openBankRepay}</td>
		</tr>
		<tr>
				<!-- 支行（放款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankName" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.subOpenBank}</td>

				<!-- 支行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankNameRepay" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.subOpenBankRepay}</td>
		 </tr>
		 <tr>
				<!-- 银行账号（放款） -->
				<td class="label"><fmt:message key="label.lend.bank.bankNo"
						bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.bankCard}</td>

				<!-- 银行账号（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.bankNoRepay" bundle="${lang}" /></td>
				<td class="content">${lendDetailVo.bankCardRepay}</td>
		 </tr>
		 <tr>
				<td class="label"><fmt:message key="label.lend.lendMoney"
							bundle="${lang}" /></td>
				<td class="content">${signContractBasic.lendMoney}<input id="lendMoney"
						name="lendMoney" type="hidden" value="${signContractBasic.lendMoney}" />
				</td>

				<td class="label"><fmt:message key="label.lend.lendingTime"
							bundle="${lang}" /></td>
				<td class="content"><fmt:formatDate value="${signContractBasic.lendDate}"
							pattern="yyyy-MM-dd" /></td>
		 </tr>
   </table>

	<div class="divBgColor">操作信息</div>
		<table class="col3">
		<tr>
				<td class="label">操作类型：</td>
				<td class="content">${taskList.operType}</td>
					<td class="label">操作时间：</td>
					<td class="content"><fmt:formatDate  value="${taskList.submitTime}"  pattern="yyyy-MM-dd  HH:mm:ss"/></td>
			</tr>
			<tr>
				<td class="label">经办人：</td>
			    <td class="content"><showusername:showusername value="${taskList.taskAgent}"></showusername:showusername></td>
			</tr>
			<tr>
			<td class="label">操作意见：</td>
				<td  colspan="3" style="font-size: 14px; width:80%;border: 1px solid #dcdcdc;padding-left:10px;" valign="top">${ucx:unCleanXSS(taskList.operReasonRemark) }</td>
				</tr>
		</table>
