<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>企业客户基本资料--利润表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/enterprise_profit_entry.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="profitForm" method="post">
		<input type="hidden" name="clientId" value="${clientId }" />
		<input type="hidden" id="year" value="${profit1.reportYear }" /> <br/>
		<input type="hidden" id="month" value="${profit1.reprotMonth }" />
			<div style="width:282px;">
				<span>年份：</span><select id="reportYear" name="reportYear"></select>&nbsp;&nbsp;<span>月份：</span><select id="reportMonth" name="reportMonth"></select>&nbsp;&nbsp;<span>金额单位：万元</span>
			</div><br />
		<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0"
			bordercolordark="#FFFFFF" bordercolorlight="#000000">
			<tr>
				<th>项目</th>
				<th>行次</th>
				<th>本期累计数</th>
			</tr>
			<tr>
				<td><span><input name="enterpriseProfits[0].indexName" readonly="readonly"
						class="input-border-title" value="一、营业收入" /></span> <input value="1"
					type="hidden" name="enterpriseProfits[0].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[0].indexSort" readonly="readonly" value="1"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="01"
					name="enterpriseProfits[0].termEnd" value="${profit1.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[1].indexName" readonly="readonly"
					class="input-border-title" value="减：营业成本" /> <input value="2"
					type="hidden" name="enterpriseProfits[1].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[1].indexSort" readonly="readonly" value="2"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="02"
					name="enterpriseProfits[1].termEnd" value="${profit2.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[2].indexName" readonly="readonly"
					class="input-border-title" value="营业税金及附加" /> <input value="3"
					type="hidden" name="enterpriseProfits[2].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[2].indexSort" readonly="readonly" value="3"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="03"
					name="enterpriseProfits[2].termEnd" value="${profit3.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[3].indexName" readonly="readonly"
					class="input-border-title" value="销售费用" /> <input value="4"
					type="hidden" name="enterpriseProfits[3].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[3].indexSort" readonly="readonly" value="4"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="04"
					name="enterpriseProfits[3].termEnd" value="${profit4.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[4].indexName" readonly="readonly"
					class="input-border-title" value="管理费用" /> <input value="5"
					type="hidden" name="enterpriseProfits[4].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[4].indexSort" readonly="readonly" value="5"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="05"
					name="enterpriseProfits[4].termEnd" value="${profit5.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[5].indexName" readonly="readonly"
					class="input-border-title" value="财务费用" /> <input value="6"
					type="hidden" name="enterpriseProfits[5].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[5].indexSort" readonly="readonly" value="6"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="06"
					name="enterpriseProfits[5].termEnd" value="${profit6.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[6].indexName" readonly="readonly"
					class="input-border-title" value="资产减值损失" /> <input value="7"
					type="hidden" name="enterpriseProfits[6].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[6].indexSort" readonly="readonly" value="7"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="07"
					name="enterpriseProfits[6].termEnd" value="${profit7.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[7].indexName" readonly="readonly"
					class="input-border-title" value="加：投资收益（损失以“-”号填列）" /> <input
					value="8" type="hidden" name="enterpriseProfits[7].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[7].indexSort" readonly="readonly" value="8"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="08"
					name="enterpriseProfits[7].termEnd" value="${profit8.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[8].indexName" readonly="readonly"
					class="input-border-title" value="公允价值变动收益（损失以“-”号填列）" /> <input
					value="9" type="hidden" name="enterpriseProfits[8].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[8].indexSort" readonly="readonly" value="9"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="09"
					name="enterpriseProfits[8].termEnd" value="${profit9.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><span><input name="enterpriseProfits[9].indexName" readonly="readonly"
						class="input-border-title" value="二、营业利润（亏损以“-”号填列）" /></span> <input
					value="10" type="hidden" name="enterpriseProfits[9].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[9].indexSort" readonly="readonly" value="10"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="txtDoProfit" readonly="readonly"
					name="enterpriseProfits[9].termEnd" value="${profit10.termEnd }" /></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[10].indexName" readonly="readonly"
					class="input-border-title" value="加：营业外收入" /> <input value="11"
					type="hidden" name="enterpriseProfits[10].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[10].indexSort" readonly="readonly" value="11"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="11"
					name="enterpriseProfits[10].termEnd" value="${profit11.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[11].indexName" readonly="readonly"
					class="input-border-title" value="减：营业外支出" /> <input value="12"
					type="hidden" name="enterpriseProfits[11].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[11].indexSort" readonly="readonly" value="12"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="12"
					name="enterpriseProfits[11].termEnd" value="${profit12.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><span><input name="enterpriseProfits[12].indexName" readonly="readonly"
						class="input-border-title" value="三、利润总额（亏损以“-”号填列）" /></span> <input
					value="13" type="hidden" name="enterpriseProfits[12].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[12].indexSort" readonly="readonly" value="13"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="txtTotalProfit" readonly="readonly"
					name="enterpriseProfits[12].termEnd" value="${profit13.termEnd }" /></td>
			</tr>
			<tr>
				<td><input name="enterpriseProfits[13].indexName" readonly="readonly"
					class="input-border-title" value="减：所得税" /> <input value="14"
					type="hidden" name="enterpriseProfits[13].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[13].indexSort" readonly="readonly" value="14"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="14"
					name="enterpriseProfits[13].termEnd" value="${profit14.termEnd }" checkmaster="calAmt"/></td>
			</tr>
			<tr>
				<td><span><input name="enterpriseProfits[14].indexName" readonly="readonly"
						class="input-border-title" value="四、净利润（亏损以“-”号填列）" /></span> <input
					value="15" type="hidden" name="enterpriseProfits[14].indexId" /></td>
				<td width="50"><input
					name="enterpriseProfits[14].indexSort" readonly="readonly" value="15"
					class="input-border" /></td>
				<td><input type="text" loxiaType="number" decimal="2" id="txtRetainedProfit" readonly="readonly"
					name="enterpriseProfits[14].termEnd" value="${profit15.termEnd }" /></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitProfit">保存</button>
		</div>
	</form>
</body>