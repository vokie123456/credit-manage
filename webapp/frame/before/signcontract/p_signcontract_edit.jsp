<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/signcontract/p_signcontract_edit.js'/>"></script>
		<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_common.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>
<form id="pSigncontractForm" method="post">
	<input type="hidden" id="signId" name="signId"
		value="${signContractBasic.taskId == param.taskId ? signContractBasic.signId : ''}" />
	<input type="hidden" id="projectStauts" name="projectStatus" />
	<input id="compCode" type="hidden" value="${compCode}" />
		<table class="col3">
			<tr>
				<td colspan="4"><div class="divBgColor">合同信息</div></td>
			</tr>
			<tr>
			<td class="label">合同类型：</td>
				<td class="content">
					<contracttype:contracttype name="contractType" compCode="${compCode }"  selected="${signContractBasic.contractType }"  ifMaster="100111" ></contracttype:contracttype>
					<label class="del_mandatory">&nbsp;&nbsp;*</label>
				</td>
					<td class="label"><span style="color: red; font-weight: normal;">线上扣款渠道：</span></td>
					<td>
					<select name="channelRepay" class="ui-loxia-default ui-corner-all" id="code">
						<option value="-1">请选择</option>
					</select>
					<input type="hidden" id="hiddenCode" value="${clientBasic.channelRepay}">
					</td>
			</tr>
			<tr>
				<td class="label">合同号：</td>
				<td class="content"><input id="contractId" name="contractId"
					value="${signContractBasic.contractId }" loxiaType="input"
					trim="true" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				<td class="label">合同名称：</td>
				<td class="content"><input id="contractName"
					name="contractName" value="${signContractBasic.contractName }"
					loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<td class="label">合同开始日期：</td>
				<td class="content"><input id="contractBegin"
					name="contractBegin" loxiaType="date"
					trim="true" mandatory="true" checkmaster="setMinDate"
					value="<fmt:formatDate value='${signContractBasic.contractBegin }' pattern='yyyy-MM-dd' />" />
					<label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				<td class="label">合同结束日期：</td>
				<td class="content"><input id="contractEnd" name="contractEnd"
					loxiaType="date" trim="true" mandatory="true" checkmaster="setMaxDate"
					value="<fmt:formatDate value='${signContractBasic.contractEnd }' pattern='yyyy-MM-dd' />" />
					<label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			</tr>
						<tr>
				<td colspan="4"><div class="divBgColor">放款信息</div></td>
			</tr>
			<tr>
				<!-- 开户行（放款） -->
				<td class="label"><fmt:message key="label.lend.bank.bankName"
						bundle="${lang}" /></td>
				<td class="content">
				<input id="openBank" name="openBank"
					loxiaType="input" trim="true"  value="${clientBasic.openBank }" />
				</td>

				<!-- 开户行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.bankNameRepay" bundle="${lang}" /></td>
				<td class="content">
					<input id="openBankRepay" value="${clientBasic.openBankRepay}"
						name="openBankRepay" loxiaType="input" trim="true" />
				</td>
			</tr>
			<tr>
				<!-- 支行（放款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankName" bundle="${lang}" /></td>
				<td class="content"><input id="subOpenBank" loxiaType="input"
					name="subOpenBank" value="${clientBasic.openBankSub}" />
				</td>

				<!-- 支行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankNameRepay" bundle="${lang}" /></td>
				<td class="content"><input id="subOpenBankRepay"
					loxiaType="input" name="subOpenBankRepay" value="${clientBasic.openBankSubRepay}" /></td>
			</tr>
			<tr>
				<!-- 银行账号（放款） -->
				<td class="label"><fmt:message key="label.lend.bank.bankNo"
						bundle="${lang}" /></td>
				<td class="content">
				<input id="bankCard" loxiaType="input"
					name="bankCard"  value="${clientBasic.openCardNo}" />
				</td>

				<!-- 银行账号（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.bankNoRepay" bundle="${lang}" /></td>
				<td class="content">
				<input id="bankCardRepay" loxiaType="input"
					name="bankCardRepay" value="${clientBasic.openCardNoRepay}" />
				</td>
			</tr>
			<tr>
			<td class="label"><fmt:message key="label.lend.lendMoney"
						bundle="${lang}" /></td>
			<td>
			<input id="lendMoney"
					name="lendMoney" loxiaType="money" trim="true" 
					value="${signContractBasic.lendMoney}" />
			<input id="moneyBalance" type="hidden" value="${moneyBalance}" />
					</td>
				<td class="label"><fmt:message key="label.lend.lendingTime"
						bundle="${lang}" /></td>
				<td class="content"><input id="lendDate" loxiaType="date"
					name="lendDate"  value="<fmt:formatDate value='${signContractBasic.lendDate}' pattern='yyyy-MM-dd' />"  readonly="readonly" /></td>
					</tr>
		</table>
	<!-- 	产品配置 -->
	<div id="productConfigDiv" ></div>
		<!-- 	上一节点操作意见 -->
	<div id="prevOpinionDiv"></div>
		 <div class="divBgColor">操作信息</div>
		<table class="col3">
			<tr>
				<td class="label"></td>
				<td class="content"></td>
				<td class="label"></td>
				<td class="content"></td>
		</tr>
		<tr>
		     <td  colspan="4"  class="content" style="padding-left: 10%">
		<textarea class="cleditor" id="operRemark" name="operRemark" rows="4" >${ucx:unCleanXSS(taskList.operReasonRemark) }</textarea></td>
		     </td>
			</tr>
		</table>
</form>
		<div id="operateOrder" class="buttonlist buttonDivWidth">
			<input type="button" class="confirm" id="tempSave"  value="暂存"  loxiaType="button" />
		</div>
