<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_detail.js'/>"></script>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<input type="hidden" id="projectId"  value="${projectId }"/>
	<table class="col3">
		<tr>
			<td colspan="4">
				<div class="divBgColor">合同信息</div>
			</td>
		</tr>
		<tr>
			<td class="label">合同类型：</td>
			<td>${signContractBasic.contractType}</td>
		</tr>
		<tr>
			<td class="label">合同号：</td>
			<td class="content">${signContractBasic.contractId }</td>
			<td class="label">合同名称：</td>
			<td class="content">${signContractBasic.contractName }</td>
		</tr>
		<tr>
			<td class="label">合同开始日期：</td>
			<td class="content"><fmt:formatDate
					value='${signContractBasic.contractBegin }' pattern='yyyy-MM-dd' /></td>
			<td class="label">合同结束日期：</td>
			<td class="content"><fmt:formatDate
					value='${signContractBasic.contractEnd }' pattern='yyyy-MM-dd' /></td>
		</tr>
		<tr>
				<td colspan="4"><div class="divBgColor">放款信息</div></td>
			</tr>
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
			<td  class="content"> ${signContractBasic.lendMoney}</td>
				<td class="label"><fmt:message key="label.lend.lendingTime"
						bundle="${lang}" /></td>
				<td class="content"><fmt:formatDate value='${signContractBasic.lendDate}' pattern='yyyy-MM-dd' /></td>
					</tr>
	</table>
	<!-- 产品配置信息 -->
<div id="productConfigDetailDiv"></div>
<br/>
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
			<td class="label" >操作意见：</td>
				<td  colspan="3" style="font-size: 14px; width:80%;border: 1px solid #dcdcdc;padding-left:10px;" valign="top">${ucx:unCleanXSS(taskList.operReasonRemark) }</td>
				</tr>
		</table>
