<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>企业客户基本资料--现金流量表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/enterprise_cash_flow_entry.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div style="width: 100%;">
		<form id="cashFlowForm" method="post">
			<input type="hidden" name="clientId" value="${clientId }" />
			<input type="hidden" id="year" value="${cashFlow2.reportYear }" />
			<input type="hidden" id="month" value="${cashFlow2.reprotMonth }" />
			<div style="width:282px;">
				<span>年份：</span><select id="reportYear" name="reportYear"></select>&nbsp;&nbsp;<span>月份：</span><select id="reportMonth" name="reportMonth"></select>&nbsp;&nbsp;<span>金额单位：万元</span>
			</div><br />
			<table style="float: left; width: 50%;" border="1" cellspacing="0"
				cellpadding="0" bordercolordark="#FFFFFF" bordercolorlight="#000000">
				<tr>
					<th>项目</th>
					<th>行次</th>
					<th>本期数</th>
				</tr>
				<tr>
					<td width="360"><span><input
							name="enterpriseCashFlows[0].indexName" readonly="readonly"
							class="input-border-title" value="一、经营活动产生的现金流量：" /></span> <input
						value="1" type="hidden" name="enterpriseCashFlows[0].indexId" /></td>
					<td width="30"><input
						name="enterpriseCashFlows[0].indexSort" readonly="readonly" value="1"
						class="input-border" /></td>
					<td ></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[1].indexName" readonly="readonly"
						class="input-border-title" value="销售商品、提供劳务收到的现金" /> <input
						value="2" type="hidden" name="enterpriseCashFlows[1].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[1].indexSort" readonly="readonly" value="2"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="02" checkmaster="calAmt"
						name="enterpriseCashFlows[1].termEnd"
						value="${cashFlow2.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[2].indexName" readonly="readonly"
						class="input-border-title" value="收到的税费返还" /> <input value="3"
						type="hidden" name="enterpriseCashFlows[2].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[2].indexSort" readonly="readonly" value="3"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="03" checkmaster="calAmt"
						name="enterpriseCashFlows[2].termEnd"
						value="${cashFlow3.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[3].indexName" readonly="readonly"
						class="input-border-title" value="收到的其他与经营活动有关的现金" /> <input
						value="4" type="hidden" name="enterpriseCashFlows[3].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[3].indexSort" readonly="readonly" value="4"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="04" checkmaster="calAmt"
						name="enterpriseCashFlows[3].termEnd"
						value="${cashFlow4.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[4].indexName" readonly="readonly"
						class="input-border-title" value="现金流入小计" /> <input value="5"
						type="hidden" name="enterpriseCashFlows[4].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[4].indexSort" readonly="readonly" value="5"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtRunInAMT" readonly="readonly"
						name="enterpriseCashFlows[4].termEnd"
						value="${cashFlow5.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[5].indexName" readonly="readonly"
						class="input-border-title" value="购买商品、接受劳务支付的现金" /> <input
						value="6" type="hidden" name="enterpriseCashFlows[5].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[5].indexSort" readonly="readonly" value="6"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2"  id="06" checkmaster="calAmt"
						name="enterpriseCashFlows[5].termEnd"
						value="${cashFlow6.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[6].indexName" readonly="readonly"
						class="input-border-title" value="支付给职工以及为职工支付的现金" /> <input
						value="7" type="hidden" name="enterpriseCashFlows[6].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[6].indexSort" readonly="readonly" value="7"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2"  id="07" checkmaster="calAmt"
						name="enterpriseCashFlows[6].termEnd"
						value="${cashFlow7.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[7].indexName" readonly="readonly"
						class="input-border-title" value="支付的各项税费" /> <input value="8"
						type="hidden" name="enterpriseCashFlows[7].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[7].indexSort" readonly="readonly" value="8"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2"  id="08" checkmaster="calAmt"
						name="enterpriseCashFlows[7].termEnd"
						value="${cashFlow8.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[8].indexName" readonly="readonly"
						class="input-border-title" value="支付的其他与经营活动有关的现金" /> <input
						value="9" type="hidden" name="enterpriseCashFlows[8].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[8].indexSort" readonly="readonly" value="9"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2"  id="09" checkmaster="calAmt"
						name="enterpriseCashFlows[8].termEnd"
						value="${cashFlow9.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[9].indexName" readonly="readonly"
						class="input-border-title" value="现金流出小计" /> <input value="10"
						type="hidden" name="enterpriseCashFlows[9].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[9].indexSort" readonly="readonly" value="10"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtRunOutAMT" readonly="readonly"
						name="enterpriseCashFlows[9].termEnd"
						value="${cashFlow10.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[10].indexName" readonly="readonly"
						class="input-border-title" value="经营活动产生的现金流量净额" /> <input
						value="11" type="hidden" name="enterpriseCashFlows[10].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[10].indexSort" readonly="readonly" value="11"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtRunNetAMT" readonly="readonly"
						name="enterpriseCashFlows[10].termEnd"
						value="${cashFlow11.termEnd }" /></td>
				</tr>
				<tr>
					<td><span><input
							name="enterpriseCashFlows[11].indexName" readonly="readonly"
							class="input-border-title" value="二、投资活动产生的现金流量：" /></span> <input
						value="12" type="hidden" name="enterpriseCashFlows[11].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[11].indexSort" readonly="readonly" value="12"
						class="input-border" /></td>
					<td></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[12].indexName" readonly="readonly"
						class="input-border-title" value="收回投资所收到的现金" /> <input
						value="13" type="hidden" name="enterpriseCashFlows[12].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[12].indexSort" readonly="readonly" value="13"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="13" checkmaster="calAmt"
						name="enterpriseCashFlows[12].termEnd"
						value="${cashFlow13termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[13].indexName" readonly="readonly"
						class="input-border-title" value="取得投资收益所收到的现金" /> <input
						value="14" type="hidden" name="enterpriseCashFlows[13].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[13].indexSort" readonly="readonly" value="14"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="14" checkmaster="calAmt"
						name="enterpriseCashFlows[13].termEnd"
						value="${cashFlow14.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[14].indexName" readonly="readonly"
						class="input-border-title" value="处置固定资产、无形资产和其他长期资产所收回的现金净额" /> <input
						value="15" type="hidden" name="enterpriseCashFlows[14].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[14].indexSort" readonly="readonly" value="15"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="15" checkmaster="calAmt"
						name="enterpriseCashFlows[14].termEnd"
						value="${cashFlow15.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[15].indexName" readonly="readonly"
						class="input-border-title" value="收到的其他与投资活动有关的现金" /> <input
						value="16" type="hidden" name="enterpriseCashFlows[15].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[15].indexSort" readonly="readonly" value="16"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="16" checkmaster="calAmt"
						name="enterpriseCashFlows[15].termEnd"
						value="${cashFlow16.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[16].indexName" readonly="readonly"
						class="input-border-title" value="现金流入小计" /> <input value="17"
						type="hidden" name="enterpriseCashFlows[16].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[16].indexSort" readonly="readonly" value="17"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtInvestInAMT" readonly="readonly"
						name="enterpriseCashFlows[16].termEnd"
						value="${cashFlow17.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[17].indexName" readonly="readonly"
						class="input-border-title" value="购建固定资产、无形资产和其他长期资产所支付的现金" /> <input
						value="18" type="hidden" name="enterpriseCashFlows[17].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[17].indexSort" readonly="readonly" value="18"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="18" checkmaster="calAmt"
						name="enterpriseCashFlows[17].termEnd"
						value="${cashFlow18.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[18].indexName" readonly="readonly"
						class="input-border-title" value="投资所支付的现金" /> <input value="19"
						type="hidden" name="enterpriseCashFlows[18].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[18].indexSort" readonly="readonly" value="19"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="19" checkmaster="calAmt"
						name="enterpriseCashFlows[18].termEnd"
						value="${cashFlow19.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[19].indexName" readonly="readonly"
						class="input-border-title" value="支付的其他与投资活动有关的现金" /> <input
						value="20" type="hidden" name="enterpriseCashFlows[19].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[19].indexSort" readonly="readonly" value="20"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="20" checkmaster="calAmt"
						name="enterpriseCashFlows[19].termEnd"
						value="${cashFlow20.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[20].indexName" readonly="readonly"
						class="input-border-title" value="现金流出小计" /> <input value="21"
						type="hidden" name="enterpriseCashFlows[20].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[20].indexSort" readonly="readonly" value="21"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtInvestOutAMT" readonly="readonly"
						name="enterpriseCashFlows[20].termEnd"
						value="${cashFlow21.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[21].indexName" readonly="readonly"
						class="input-border-title" value="投资活动产生的现金流量净额" /> <input
						value="22" type="hidden" name="enterpriseCashFlows[21].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[21].indexSort" readonly="readonly" value="22"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtInvestNetAMT" readonly="readonly"
						name="enterpriseCashFlows[21].termEnd"
						value="${cashFlow22.termEnd }" /></td>
				</tr>
				<tr>
					<td><span><input
							name="enterpriseCashFlows[22].indexName" readonly="readonly"
							class="input-border-title" value="三、筹资活动产生的现金流量：" /></span> <input
						value="23" type="hidden" name="enterpriseCashFlows[22].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[22].indexSort" readonly="readonly" value="23"
						class="input-border" /></td>
					<td></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[23].indexName" readonly="readonly"
						class="input-border-title" value="吸收投资所收到的现金" /> <input
						value="24" type="hidden" name="enterpriseCashFlows[23].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[23].indexSort" readonly="readonly" value="24"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="24" checkmaster="calAmt"
						name="enterpriseCashFlows[23].termEnd"
						value="${cashFlow24.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[24].indexName" readonly="readonly"
						class="input-border-title" value="借款所收到的现金" /> <input value="25"
						type="hidden" name="enterpriseCashFlows[24].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[24].indexSort" readonly="readonly" value="25"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="25" checkmaster="calAmt"
						name="enterpriseCashFlows[24].termEnd"
						value="${cashFlow25.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[25].indexName" readonly="readonly"
						class="input-border-title" value="收到的其他与筹资活动有关的现金" /> <input
						value="26" type="hidden" name="enterpriseCashFlows[25].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[25].indexSort" readonly="readonly" value="26"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="26" checkmaster="calAmt"
						name="enterpriseCashFlows[25].termEnd"
						value="${cashFlow26.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[26.indexName" readonly="readonly"
						class="input-border-title" value="现金流入小计" /> <input value="27"
						type="hidden" name="enterpriseCashFlows[26].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[26].indexSort" readonly="readonly" value="27"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtReadyInAMT" readonly="readonly"
						name="enterpriseCashFlows[26].termEnd"
						value="${cashFlow27.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[27].indexName" readonly="readonly"
						class="input-border-title" value="偿还债务所支付的现金" /> <input
						value="28" type="hidden" name="enterpriseCashFlows[27].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[27].indexSort" readonly="readonly" value="28"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="28" checkmaster="calAmt"
						name="enterpriseCashFlows[27].termEnd"
						value="${cashFlow28.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[28].indexName" readonly="readonly"
						class="input-border-title" value="分配股利、利润或偿付利息所支付的现金" /> <input
						value="29" type="hidden" name="enterpriseCashFlows[28].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[28].indexSort" readonly="readonly" value="29"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="29" checkmaster="calAmt"
						name="enterpriseCashFlows[28].termEnd"
						value="${cashFlow29.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[29].indexName" readonly="readonly"
						class="input-border-title" value="资付的其他与筹资活动有关的现金" /> <input
						value="30" type="hidden" name="enterpriseCashFlows[29].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[29].indexSort" readonly="readonly" value="30"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="30" checkmaster="calAmt"
						name="enterpriseCashFlows[29].termEnd"
						value="${cashFlow30.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[30].indexName" readonly="readonly"
						class="input-border-title" value="现金流出小计" /> <input value="31"
						type="hidden" name="enterpriseCashFlows[30].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[30].indexSort" readonly="readonly" value="31"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtReadyOutAMT" readonly="readonly"
						name="enterpriseCashFlows[30].termEnd"
						value="${cashFlow31.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[31].indexName" readonly="readonly"
						class="input-border-title" value="筹资活动产生的现金流量净额" /> <input
						value="32" type="hidden" name="enterpriseCashFlows[31].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[31].indexSort" readonly="readonly" value="32"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtReadyNetAMT" readonly="readonly"
						name="enterpriseCashFlows[31].termEnd"
						value="${cashFlow32.termEnd }" /></td>
				</tr>
				<tr>
					<td><span><input
							name="enterpriseCashFlows[32].indexName" readonly="readonly"
							class="input-border-title" value="四、汇率变动对现金的影响" /></span> <input
						value="33" type="hidden" name="enterpriseCashFlows[32].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[32].indexSort" readonly="readonly" value="33"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="33" checkmaster="calAmt"
						name="enterpriseCashFlows[32].termEnd"
						value="${cashFlow33.termEnd }" /></td>
				</tr>
				<tr>
					<td><span><input
							name="enterpriseCashFlows[33].indexName" readonly="readonly"
							class="input-border-title" value="五、现金及现金等价物净增加额" /></span> <input
						value="34" type="hidden" name="enterpriseCashFlows[33].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[33].indexSort" readonly="readonly" value="34"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtCashNetAMT" readonly="readonly"
						name="enterpriseCashFlows[33].termEnd"
						value="${cashFlow34.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[34].indexName" readonly="readonly"
						class="input-border-title" value="加：期初现金及现金等价物余额" /> <input
						value="35" type="hidden" name="enterpriseCashFlows[34].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[34].indexSort" readonly="readonly" value="35"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtCashNetFirstAMT" readonly="readonly"
						name="enterpriseCashFlows[34].termEnd"
						value="${cashFlow35.termEnd }" /></td>
				</tr>
				<tr>
					<td><span><input
							name="enterpriseCashFlows[35].indexName" readonly="readonly"
							class="input-border-title" value="六、期末现金及现金等价物余额" /></span> <input
						value="36" type="hidden" name="enterpriseCashFlows[35].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[35].indexSort" readonly="readonly" value="36"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtCashEndAMT" readonly="readonly"
						name="enterpriseCashFlows[35].termEnd"
						value="${cashFlow36.termEnd }" /></td>
				</tr>
			</table>

			<table style="width: 50%; margin-left: 10px;" border="1"
				cellspacing="0" cellpadding="0" bordercolordark="#FFFFFF"
				bordercolorlight="#000000">
				<tr>
					<th>项目</th>
					<th>行次</th>
					<th>本期数</th>
				</tr>
				<tr>
					<td width="360"><span><input
							name="enterpriseCashFlows[36].indexName" readonly="readonly"
							class="input-border-title" value="补充资料" /></span> <input value="37"
						type="hidden" name="enterpriseCashFlows[36].indexId" /></td>
					<td width="30"><input
						name="enterpriseCashFlows[36].indexSort" readonly="readonly" value="37"
						class="input-border" /></td>
					<td ></td>
				</tr>
				<tr>
					<td><span><input
							name="enterpriseCashFlows[37].indexName" readonly="readonly"
							class="input-border-title" value="1、将净利润调节为经营活动现金流量：" /></span> <input
						value="38" type="hidden" name="enterpriseCashFlows[37].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[37].indexSort" readonly="readonly" value="38"
						class="input-border" /></td>
					<td></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[38].indexName" readonly="readonly"
						class="input-border-title" value="净利润" /> <input
						value="39" type="hidden" name="enterpriseCashFlows[38].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[38].indexSort" readonly="readonly" value="39"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="39" checkmaster="calAmt"
						name="enterpriseCashFlows[38].termEnd"
						value="${cashFlow39.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[39].indexName" readonly="readonly"
						class="input-border-title" value="加：计提的资产减值准备" /> <input
						value="40" type="hidden" name="enterpriseCashFlows[39].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[39].indexSort" readonly="readonly" value="40"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="40" checkmaster="calAmt"
						name="enterpriseCashFlows[39].termEnd"
						value="${cashFlow40.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[40].indexName" readonly="readonly"
						class="input-border-title" value="固定资产折旧" /> <input value="41"
						type="hidden" name="enterpriseCashFlows[40].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[40].indexSort" readonly="readonly" value="41"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="41" checkmaster="calAmt"
						name="enterpriseCashFlows[40].termEnd"
						value="${cashFlow41.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[41].indexName" readonly="readonly"
						class="input-border-title" value="无形资产摊销" /> <input value="42"
						type="hidden" name="enterpriseCashFlows[41].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[41].indexSort" readonly="readonly" value="42"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="42" checkmaster="calAmt"
						name="enterpriseCashFlows[41].termEnd"
						value="${cashFlow42.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[42].indexName" readonly="readonly"
						class="input-border-title" value="长期待摊费用摊销" /> <input value="43"
						type="hidden" name="enterpriseCashFlows[42].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[42].indexSort" readonly="readonly" value="43"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="43" checkmaster="calAmt"
						name="enterpriseCashFlows[42].termEnd"
						value="${cashFlow43.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[43].indexName" readonly="readonly"
						class="input-border-title" value="处置固定资产、无形资产和其他长期资产的损失(减：收益)" /> <input
						value="44" type="hidden" name="enterpriseCashFlows[43].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[43].indexSort" readonly="readonly" value="44"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="44" checkmaster="calAmt"
						name="enterpriseCashFlows[43].termEnd"
						value="${cashFlow44.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[44].indexName" readonly="readonly"
						class="input-border-title" value="固定资产报废损失" /> <input value="45"
						type="hidden" name="enterpriseCashFlows[44].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[44].indexSort" readonly="readonly" value="45"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="45" checkmaster="calAmt"
						name="enterpriseCashFlows[44].termEnd"
						value="${cashFlow45.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[45].indexName" readonly="readonly"
						class="input-border-title" value="公允价值变动损失（收益以“-”号填列）" /> <input
						value="46" type="hidden" name="enterpriseCashFlows[45].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[45].indexSort" readonly="readonly" value="46"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="46" checkmaster="calAmt"
						name="enterpriseCashFlows[45].termEnd"
						value="${cashFlow46.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[46].indexName" readonly="readonly"
						class="input-border-title" value="财务费用（减：收入）" /> <input
						value="47" type="hidden" name="enterpriseCashFlows[46].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[46].indexSort" readonly="readonly" value="47"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="47" checkmaster="calAmt"
						name="enterpriseCashFlows[46].termEnd"
						value="${cashFlow47.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[47].indexName" readonly="readonly"
						class="input-border-title" value="投资损失（减：收益）" /> <input
						value="48" type="hidden" name="enterpriseCashFlows[47].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[47].indexSort" readonly="readonly" value="48"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="48" checkmaster="calAmt"
						name="enterpriseCashFlows[47].termEnd"
						value="${cashFlow48.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[48].indexName" readonly="readonly"
						class="input-border-title" value="递延所得税资产减少（增加以“-”号填列）" /> <input
						value="49" type="hidden" name="enterpriseCashFlows[48].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[48].indexSort" readonly="readonly" value="49"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="49" checkmaster="calAmt"
						name="enterpriseCashFlows[48].termEnd"
						value="${cashFlow49.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[49].indexName" readonly="readonly"
						class="input-border-title" value="递延所得税负债增加（减少以“-”号填列）" /> <input
						value="50" type="hidden" name="enterpriseCashFlows[49].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[49].indexSort" readonly="readonly" value="50"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="50" checkmaster="calAmt"
						name="enterpriseCashFlows[49].termEnd"
						value="${cashFlow50.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[50].indexName" readonly="readonly"
						class="input-border-title" value="存货的减少（减：增加）" /> <input
						value="51" type="hidden" name="enterpriseCashFlows[50].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[50].indexSort" readonly="readonly" value="51"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="51" checkmaster="calAmt"
						name="enterpriseCashFlows[50].termEnd"
						value="${cashFlow51.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[51].indexName" readonly="readonly"
						class="input-border-title" value="经营性应收项目的减少（减：增加）" /> <input
						value="52" type="hidden" name="enterpriseCashFlows[51].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[51].indexSort" readonly="readonly" value="52"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="52" checkmaster="calAmt"
						name="enterpriseCashFlows[51].termEnd"
						value="${cashFlow52.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[52].indexName" readonly="readonly"
						class="input-border-title" value="经营性应付项目的增加（减：减少）" /> <input
						value="53" type="hidden" name="enterpriseCashFlows[52].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[52].indexSort" readonly="readonly" value="53"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="53" checkmaster="calAmt"
						name="enterpriseCashFlows[52].termEnd"
						value="${cashFlow53.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[53].indexName" readonly="readonly"
						class="input-border-title" value="其他" /> <input value="54"
						type="hidden" name="enterpriseCashFlows[53].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[53].indexSort" readonly="readonly" value="54"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="54" checkmaster="calAmt"
						name="enterpriseCashFlows[53].termEnd"
						value="${cashFlow54.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[54].indexName" readonly="readonly"
						class="input-border-title" value="经营活动产生的现金流量净额" /> <input
						value="55" type="hidden" name="enterpriseCashFlows[54].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[54].indexSort" readonly="readonly" value="55"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtAdditionalRunNetAMT" readonly="readonly"
						name="enterpriseCashFlows[54].termEnd"
						value="${cashFlow55.termEnd }" /></td>
				</tr>
				<tr>
					<td><input type="text" class="input-border" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><input type="text" class="input-border" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><input type="text" class="input-border" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><span><input
							name="enterpriseCashFlows[55].indexName" readonly="readonly"
							class="input-border-title" value="2、不涉及现金收支的投资和筹资活动：" /></span> <input
						value="56" type="hidden" name="enterpriseCashFlows[55].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[55].indexSort" readonly="readonly" value="56"
						class="input-border" /></td>
					<td></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[56].indexName" readonly="readonly"
						class="input-border-title" value="债务转为资本" /> <input value="57"
						type="hidden" name="enterpriseCashFlows[56].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[56].indexSort" readonly="readonly" value="57"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="57" checkmaster="calAmt"
						name="enterpriseCashFlows[56].termEnd"
						value="${cashFlow57.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[57].indexName" readonly="readonly"
						class="input-border-title" value="一年内到期的可转换公司债券" /> <input
						value="58" type="hidden" name="enterpriseCashFlows[57].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[57].indexSort" readonly="readonly" value="58"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="58" checkmaster="calAmt"
						name="enterpriseCashFlows[57].termEnd"
						value="${cashFlow58.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[58].indexName" readonly="readonly"
						class="input-border-title" value="融资租入固定资产" /> <input value="59"
						type="hidden" name="enterpriseCashFlows[58].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[58].indexSort" readonly="readonly" value="59"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="59" checkmaster="calAmt"
						name="enterpriseCashFlows[58].termEnd"
						value="${cashFlow59.termEnd }" /></td>
				</tr>
				<tr>
					<td><input type="text" class="input-border" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><input type="text" class="input-border" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><input type="text" class="input-border" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><input type="text" class="input-border" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><span><input
							name="enterpriseCashFlows[59].indexName" readonly="readonly"
							class="input-border-title" value="3、现金及现金等价物净增加情况：" /></span> <input
						value="60" type="hidden" name="enterpriseCashFlows[59].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[59].indexSort" readonly="readonly" value="60"
						class="input-border" /></td>
					<td></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[60].indexName" readonly="readonly"
						class="input-border-title" value="现金的期末余额" /> <input value="61"
						type="hidden" name="enterpriseCashFlows[60].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[60].indexSort" readonly="readonly" value="61"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="61" checkmaster="calAmt"
						name="enterpriseCashFlows[60].termEnd"
						value="${cashFlow61.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[61].indexName" readonly="readonly"
						class="input-border-title" value="减：现金的期初余额" /> <input value="62"
						type="hidden" name="enterpriseCashFlows[61].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[61].indexSort" readonly="readonly" value="62"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="62" checkmaster="calAmt"
						name="enterpriseCashFlows[61].termEnd"
						value="${cashFlow62.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[62].indexName" readonly="readonly"
						class="input-border-title" value="加：现金等价物的期末余额" /> <input
						value="63" type="hidden" name="enterpriseCashFlows[62].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[62].indexSort" readonly="readonly" value="63"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="63" checkmaster="calAmt"
						name="enterpriseCashFlows[62].termEnd"
						value="${cashFlow63.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[63].indexName" readonly="readonly"
						class="input-border-title" value="减：现金等价物的期初余额" /> <input
						value="64" type="hidden" name="enterpriseCashFlows[63].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[63].indexSort" readonly="readonly" value="64"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="64" checkmaster="calAmt"
						name="enterpriseCashFlows[63].termEnd"
						value="${cashFlow64.termEnd }" /></td>
				</tr>
				<tr>
					<td><input name="enterpriseCashFlows[64].indexName" readonly="readonly"
						class="input-border-title" value="现金及现金等价物净增加额" /> <input
						value="65" type="hidden" name="enterpriseCashFlows[64].indexId" /></td>
					<td ><input
						name="enterpriseCashFlows[64].indexSort" readonly="readonly" value="65"
						class="input-border" /></td>
					<td><input type="text" loxiaType="number" decimal="2" id="txtAdditionalCashNetAMT" readonly="readonly"
						name="enterpriseCashFlows[64].termEnd"
						value="${cashFlow65.termEnd }" /></td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="submitCashFlow">保存</button>
			</div>
		</form>
	</div>
</body>