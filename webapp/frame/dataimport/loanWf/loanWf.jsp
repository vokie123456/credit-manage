<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/dataimport/loanWf/loanWf.js'/>"></script>
<body contextpath="<%=request.getContextPath()%>" >
<form id="importForm" method="post">
	<input type="hidden" id="compCode" name="compCode" value="${compCode }" />
	<input type="hidden" id="id" name="id" value="${ild.id }" />
	<input type="hidden" id="ifWorkFlow" value="${ild.ifWorkFlow }" />
	
	
	<div class="divBgColor">流程选择</div>
	<table class="textalignCenter tabcustomPeoNoborder">
		<tr>
			<td class="label">流程选择：</td>
			<td class="content"><c:if test="${not  empty   projectId }">
					<input type="hidden" name="wfCode" value="${applyBasic.wfCode}" />
				</c:if> <select id="wfCode" name="wfCode">
					<c:forEach items="${compWorkflowVos }" var="compWorkflowVo">
						<option value="${compWorkflowVo.wfCode }"
							<c:if test="${ild.wfCode==compWorkflowVo.wfCode}"> selected="true"</c:if>>${compWorkflowVo.wfName }</option>
					</c:forEach>
			</select></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
	</table>
	
<div class="divBgColor">个人资料</div>
		<div class="content_middle">
			<table class="col3">
				<tr>
					<!-- 证件类型 cardType-->
					<td class="label">证件类型：</td>
					<td class="content" ><bizoption:bizoption biztypekey="1007"
							id="cardType"  name="cardType" isChoose="false" mandatory="true" selected="${ild.cardType }"
							checkmaster="validateCardType" /> <label class="del_mandatory">&nbsp;*</label></td>
					<!-- 证件号码  cardNo-->
					<td class="label">证件号码：</td>
					<td class="content"><input id="cardNo" class="cardnum"
						name="cardNo" value="${ild.cardNo }"
						loxiaType="input" trim="true" mandatory="true"
						checkmaster="validateIdentify" /> <label class="del_mandatory">&nbsp;*</label></td>
				</tr>
				<tr>
							<td class="label">姓名：</td>
							<td class="content"><input type="hidden"  name="clientType" value="100311">
							<input id="clientName" mandatory="true"
								name="clientName"  value="${ ild.clientName}"
								loxiaType="input" trim="true" /><label class="del_mandatory">&nbsp;*</label></td>
					</tr>
			</table>
		</div>
	<div class="divBgColor">贷款信息</div>
	<table class="textalignCenter tabcustomPeoNoborder">
		<tr>
			<td class="label">放款金额(万元)：</td>
			<td class="content"><input id="loanHopeMoney"
				loxiaType="money"
				trim="true" mandatory="true" name="loanHopeMoney"  value="${ild.loanHopeMoney }"/><label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
			<!-- 贷款产品 -->
			<td class="label">贷款产品：</td>
			<td class="content"><select id="loanProduct"  name="loanProductId" 
				class="ui-loxia-default ui-corner-all" /></td>
			<input type="hidden" id="edit_productid" value="${ild.loanProductId }"/>
		</tr>
		<tr>
			<!-- 贷款用途  键值对数据 -->
			<td class="label">贷款用途：</td>
			<td class="content" colspan="3"><input id="loanPurpose"
				name="loanPurpose"  value="${ild.loanPurpose }"
				loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="label">还款来源：</td>
			<td class="content" colspan="3"><input id="repaySourse"
				loxiaType="input" trim="true" value="${ild.repaySourse}"
				name="repaySourse" /></td>
				
		</tr>
		<tr>
			<td class="label">客户来源：</td>
			<td class="content"><bizselect:bizselect biztypekey="1004"   
					id="clientFrom" name="clientFrom"   selected="${ild.clientFrom}" /></td>
			<td class="content"><span id="clientFromAgencyContent"  class="disNone" >
				<agencyInfo:agencyInfo name="clientFromAgency"   id="clientFromAgency"   selected=" ${ild.clientFromAgency}"  compCode="${compCode}" ></agencyInfo:agencyInfo></span></td>
			</tr>
			<tr>
			<!-- 信息来源  personBasic.infoFrom -->
			<td class="label">贷款引进人：</td>
			<td class="content"><introduceUser:introduceUser  id="infoFrom"  name="infoFrom"  compCode="${compCode }"  selected="${ild.infoFrom }"/></td>
		</tr>
	</table>
	<!-- 	产品配置 -->
	<div id="productConfigDiv" ></div>
	 <div class="divBgColor">业务人员信息</div>
		<table  class="textalignCenter tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0" >
			<tr>
				<td class="label">客户经理：</td>
				<td class="content"><introduceUser:introduceUser id="saleraCode"  name="saleraCode"  compCode="${compCode }"  selected="${ild.saleraCode}"/> </td>
				
				<td class="label">协办客户经理：</td>
				<td class="content"><introduceUser:introduceUser id="salerbCode"  name="salerbCode"  compCode="${compCode }"  selected="${ild.salerbCode}" /></td>
			</tr>
		</table>
		<table class="col3">
			<tr>
				<td colspan="4"><div class="divBgColor">合同信息</div></td>
			</tr>
			<tr>
			<td class="label">合同类型：</td>
				<td class="content">
					<contracttype:contracttype name="contractType" compCode="${compCode }"  selected="${ild.contractType }"   ifMaster="100111" />
					<label class="del_mandatory">&nbsp;&nbsp;*</label>
				</td>
					<td class="label"><span style="color: red; font-weight: normal;">线上扣款渠道：</span></td>
					<td>
					<select name="channelRepay" class="ui-loxia-default ui-corner-all"  id="channelRepay" >
						<option value="-1">请选择</option>
					</select>
					<input type="hidden" id="hiddenCode" value="${ild.channelRepay }"/>
					</td>
			</tr>
			<tr>
				<td class="label">合同号：</td>
				<td class="content"><input id="contractId" name="contractCode"  value="${ild.contractCode }"
				loxiaType="input"
					trim="true" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				<td class="label">合同名称：</td>
				<td class="content"><input id="contractName" value="${ild.contractName }"
					name="contractName" 
					loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<td class="label">合同开始日期：</td>
				<td class="content"><input id="contractBeginTime" value="${ild.contractBeginTime }"
					name="contractBeginTime" loxiaType="date"
					trim="true" mandatory="true" readonly="readonly"/>
					<label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				<td class="label">合同结束日期：</td>
				<td class="content"><input id="contractEndTime" name="contractEndTime"   value="${ild.contractEndTime }"
					loxiaType="date" trim="true" mandatory="true" readonly="readonly"/>	
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
				<td class="content"><input id="openBank" name="openBank"  value="${ild.openBank }"
					loxiaType="input" trim="true"  /></td>
				<!-- 开户行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.bankNameRepay" bundle="${lang}" /></td>
				<td class="content"><input id="openBankRepay"  value="${ild.openBankRepay }"
					name="openBankRepay" loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<!-- 支行（放款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankName" bundle="${lang}" /></td>
				<td class="content"><input id=openBankSub loxiaType="input"  value="${ild.openBankSub }"
					name="openBankSub" /></td>

				<!-- 支行（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.subBankNameRepay" bundle="${lang}" /></td>
				<td class="content"><input id="openBankSubRepay" value="${ild.openBankSubRepay }"
					loxiaType="input" name="openBankSubRepay" /></td>
			</tr>
			<tr>
				<!-- 银行账号（放款） -->
				<td class="label"><fmt:message key="label.lend.bank.bankNo"
						bundle="${lang}" /></td>
				<td class="content"><input id="openCardNo" loxiaType="input"   value="${ild.openCardNo}"
					name="openCardNo" /></td>

				<!-- 银行账号（还款） -->
				<td class="label"><fmt:message
						key="label.lend.bank.bankNoRepay" bundle="${lang}" /></td>
				<td class="content"><input id="openCardNoRepay" loxiaType="input"  value="${ild.openCardNoRepay }"
					name="openCardNoRepay" /></td>
			</tr>
			<tr>
				<td class="label"><fmt:message key="label.lend.lendingTime"
						bundle="${lang}" /></td>
				<td class="content"><input id="lendDate" loxiaType="date" value="<fmt:formatDate value='${ild.lendDate}' pattern='yyyy-MM-dd' />"
					name="lendDate" mandatory="true" readonly="readonly"/><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
		</table>
		<div class="divBgColor">任务节点经办人</div>
					<table class="col3">
				<tr>
					<td class="label">申请任务</td>
					<td class="content" > <introduceUser:introduceUser id="applyAgent"  name="applyAgent"   selected="${ild.applyAgent }" compCode="${compCode }" /><label class="del_mandatory">&nbsp;*</label></td>
					<td class="label">业务主管审批任务</td>
					<td class="content"><introduceUser:introduceUser id="bussinessAgent"  name="bussinessAgent"  selected="${ild.bussinessAgent }"   compCode="${compCode }" /><label class="del_mandatory">&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label">运营初审</td>
					<td class="content"><introduceUser:introduceUser id="operationCheckAgent"  name="operationCheckAgent"  selected="${ild.operationCheckAgent }"    compCode="${compCode }" /><label class="del_mandatory">&nbsp;*</label></td>
					<td class="label">初审</td>
					<td class="content"><introduceUser:introduceUser id="checkAgent"  name="checkAgent"  selected="${ild.checkAgent }"   compCode="${compCode }" /><label class="del_mandatory">&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label">复审</td>
					<td class="content"><introduceUser:introduceUser id="recheckAgent"  name="recheckAgent"    selected="${ild.recheckAgent }"   compCode="${compCode }" /><label class="del_mandatory">&nbsp;*</label></td>
					<td class="label">终审</td>
					<td class="content"><introduceUser:introduceUser id="endcheckAgent"  name="endcheckAgent"    selected="${ild.endcheckAgent }"  compCode="${compCode }" /><label class="del_mandatory">&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label">存档</td>
					<td class="content"><introduceUser:introduceUser id="onfileAgent"  name="onfileAgent"  selected="${ild.onfileAgent }"    compCode="${compCode }" /><label class="del_mandatory">&nbsp;*</label></td>
					<td class="label">签约</td>
					<td class="content"><introduceUser:introduceUser id="signcontractAgent"  name="signcontractAgent"  selected="${ild.signcontractAgent }"    compCode="${compCode }" /><label class="del_mandatory">&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label">放款</td>
					<td class="content"><introduceUser:introduceUser id="lendAgent"  name="lendAgent"  selected="${ild.lendAgent }"   compCode="${compCode }" /><label class="del_mandatory">&nbsp;*</label></td>
				</tr>
			</table>
	<div id="operateOrder" class="buttonlist buttonDivWidth">
		<input type="button" class="confirm" id="next"  value="保存"   loxiaType="button" />
		<input type="button" class="confirm" id="backoff"  value="返回"   loxiaType="button" />
	</div>
</form>
</body>