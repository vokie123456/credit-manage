<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>企业客户基本资料--资产负债</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/enterprise_balance_sheet_detail.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div style="width: 100%;">
		<input type="hidden" name="clientId" value="${clientId }" /><br />
		<div style="width: 282px;">
			<span>年份：</span>${balanceSheet1.reportYear }&nbsp;&nbsp;<span>月份：</span>${balanceSheet1.reprotMonth }&nbsp;&nbsp;<span>金额单位：万元</span>
		</div><br/>
		<table style="float: left; width: 45%;" border="1" cellspacing="0"
			cellpadding="0" bordercolordark="#FFFFFF" bordercolorlight="#000000">
			<tr>
				<th>资产</th>
				<th>行次</th>
				<th>期初数</th>
				<th>期末数</th>
			</tr>
			<tr>
				<td width="150"><span class="label"><input type="text"
						value="流动资产：" class="input-border" /></span></td>
				<td width="50"></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><input name="balanceSheets[0].indexName"
					readonly="readonly" value="货币资金" class="input-border-title" /><input
					name="balanceSheets[0].indexId" value="1" type="hidden" /></td>
				<td><input name="balanceSheets[0].indexSort"
					readonly="readonly" value="1" class="input-border" /></td>
				<td>${balanceSheet1.termBegin }</td>
				<td>${balanceSheet1.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[1].indexName"
					readonly="readonly" value="交易性金融资产" class="input-border-title" /><input
					name="balanceSheets[1].indexId" value="2" type="hidden" /></td>
				<td><input name="balanceSheets[1].indexSort"
					readonly="readonly" value="2" class="input-border" /></td>
				<td>${balanceSheet2.termBegin }</td>
				<td>${balanceSheet2.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[2].indexName"
					readonly="readonly" value="应收票据" class="input-border-title" /><input
					name="balanceSheets[2].indexId" value="3" type="hidden" /></td>
				<td><input name="balanceSheets[2].indexSort"
					readonly="readonly" value="3" class="input-border" /></td>
				<td>${balanceSheet3.termBegin }</td>
				<td>${balanceSheet3.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[3].indexName"
					readonly="readonly" value="应收账款" class="input-border-title" /><input
					name="balanceSheets[3].indexId" value="4" type="hidden" /></td>
				<td><input name="balanceSheets[3].indexSort"
					readonly="readonly" value="4" class="input-border" /></td>
				<td>${balanceSheet4.termBegin }</td>
				<td>${balanceSheet4.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[4].indexName"
					readonly="readonly" value="预付款项" class="input-border-title" /><input
					name="balanceSheets[4].indexId" value="5" type="hidden" /></td>
				<td><input name="balanceSheets[4].indexSort"
					readonly="readonly" value="5" class="input-border" /></td>
				<td>${balanceSheet5.termBegin }</td>
				<td>${balanceSheet5.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[5].indexName"
					readonly="readonly" value="应收利息" class="input-border-title" /><input
					name="balanceSheets[5].indexId" value="6" type="hidden" /></td>
				<td><input name="balanceSheets[5].indexSort"
					readonly="readonly" value="6" class="input-border" /></td>
				<td>${balanceSheet6.termBegin }</td>
				<td>${balanceSheet6.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[6].indexName"
					readonly="readonly" value="应收股利" class="input-border-title" /><input
					name="balanceSheets[6].indexId" value="7" type="hidden" /></td>
				<td><input name="balanceSheets[6].indexSort"
					readonly="readonly" value="7" class="input-border" /></td>
				<td>${balanceSheet7.termBegin }</td>
				<td>${balanceSheet7.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[7].indexName"
					readonly="readonly" value="其他应收款" class="input-border-title" /><input
					name="balanceSheets[7].indexId" value="8" type="hidden" /></td>
				<td><input name="balanceSheets[7].indexSort"
					readonly="readonly" value="8" class="input-border" /></td>
				<td>${balanceSheet8.termBegin }</td>
				<td>${balanceSheet8.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[8].indexName"
					readonly="readonly" value="存货" class="input-border-title" /><input
					name="balanceSheets[8].indexId" value="9" type="hidden" /></td>
				<td><input name="balanceSheets[8].indexSort"
					readonly="readonly" value="9" class="input-border" /></td>
				<td>${balanceSheet9.termBegin }</td>
				<td>${balanceSheet9.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[9].indexName"
					readonly="readonly" value="一年内到期的非流动资产" class="input-border-title" /><input
					name="balanceSheets[9].indexId" value="10" type="hidden" /></td>
				<td><input name="balanceSheets[9].indexSort"
					readonly="readonly" value="10" class="input-border" /></td>
				<td>${balanceSheet10.termBegin }</td>
				<td>${balanceSheet10.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[10].indexName"
					readonly="readonly" value="其他流动资产" class="input-border-title" /><input
					name="balanceSheets[10].indexId" value="11" type="hidden" /></td>
				<td><input name="balanceSheets[10].indexSort"
					readonly="readonly" value="11" class="input-border" /></td>
				<td>${balanceSheet11.termBegin }</td>
				<td>${balanceSheet11.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[11].indexName"
					readonly="readonly" value="流动资产合计" class="input-border-title" /><input
					name="balanceSheets[11].indexId" value="12" type="hidden" /></td>
				<td><input name="balanceSheets[11].indexSort"
					readonly="readonly" value="12" class="input-border" /></td>
				<td>${balanceSheet12.termBegin }</td>
				<td>${balanceSheet12.termEnd }</td>
			</tr>
			<tr>
				<td colspan="4"><span><input type="text" value="非流动资产："
						class="input-border" /></span></td>
			</tr>
			<tr>
				<td><input name="balanceSheets[12].indexName"
					readonly="readonly" value="可供出售金融资产" class="input-border-title" /><input
					name="balanceSheets[12].indexId" value="13" type="hidden" /></td>
				<td><input name="balanceSheets[12].indexSort"
					readonly="readonly" value="13" class="input-border" /></td>
				<td>${balanceSheet13.termBegin }</td>
				<td>${balanceSheet13.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[13].indexName"
					readonly="readonly" value="持有至到期投资" class="input-border-title" /><input
					name="balanceSheets[13].indexId" value="14" type="hidden" /></td>
				<td><input name="balanceSheets[13].indexSort"
					readonly="readonly" value="14" class="input-border" /></td>
				<td>${balanceSheet14.termBegin }</td>
				<td>${balanceSheet14.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[14].indexName"
					readonly="readonly" value="长期应收款" class="input-border-title" /><input
					name="balanceSheets[14].indexId" value="15" type="hidden" /></td>
				<td><input name="balanceSheets[14].indexSort"
					readonly="readonly" value="15" class="input-border" /></td>
				<td>${balanceSheet15.termBegin }</td>
				<td>${balanceSheet15.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[15].indexName"
					readonly="readonly" value="长期股权投资" class="input-border-title" /><input
					name="balanceSheets[15].indexId" value="16" type="hidden" /></td>
				<td><input name="balanceSheets[15].indexSort"
					readonly="readonly" value="16" class="input-border" /></td>
				<td>${balanceSheet16.termBegin }</td>
				<td>${balanceSheet16.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[16].indexName"
					readonly="readonly" value="投资性房地产" class="input-border-title" /><input
					name="balanceSheets[16].indexId" value="17" type="hidden" /></td>
				<td><input name="balanceSheets[16].indexSort"
					readonly="readonly" value="17" class="input-border" /></td>
				<td>${balanceSheet17.termBegin }</td>
				<td>${balanceSheet17.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[17].indexName"
					readonly="readonly" value="固定资产" class="input-border-title" /><input
					name="balanceSheets[17].indexId" value="18" type="hidden" /></td>
				<td><input name="balanceSheets[17].indexSort"
					readonly="readonly" value="18" class="input-border" /></td>
				<td>${balanceSheet18.termBegin }</td>
				<td>${balanceSheet18.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[18].indexName"
					readonly="readonly" value="在建工程" class="input-border-title" /><input
					name="balanceSheets[18].indexId" value="19" type="hidden" /></td>
				<td><input name="balanceSheets[18].indexSort"
					readonly="readonly" value="19" class="input-border" /></td>
				<td>${balanceSheet19.termBegin }</td>
				<td>${balanceSheet19.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[19].indexName"
					readonly="readonly" value="工程物资" class="input-border-title" /><input
					name="balanceSheets[19].indexId" value="20" type="hidden" /></td>
				<td><input name="balanceSheets[19].indexSort"
					readonly="readonly" value="20" class="input-border" /></td>
				<td>${balanceSheet20.termBegin }</td>
				<td>${balanceSheet20.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[20].indexName"
					readonly="readonly" value="固定资产清理" class="input-border-title" /><input
					name="balanceSheets[20].indexId" value="21" type="hidden" /></td>
				<td><input name="balanceSheets[20].indexSort"
					readonly="readonly" value="21" class="input-border" /></td>
				<td>${balanceSheet21.termBegin }</td>
				<td>${balanceSheet21.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[21].indexName"
					readonly="readonly" value="无形资产" class="input-border-title" /><input
					name="balanceSheets[21].indexId" value="22" type="hidden" /></td>
				<td><input name="balanceSheets[21].indexSort"
					readonly="readonly" value="22" class="input-border" /></td>
				<td>${balanceSheet22.termBegin }</td>
				<td>${balanceSheet22.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[22].indexName"
					readonly="readonly" value="开发支出" class="input-border-title" /><input
					name="balanceSheets[22].indexId" value="23" type="hidden" /></td>
				<td><input name="balanceSheets[22].indexSort"
					readonly="readonly" value="23" class="input-border" /></td>
				<td>${balanceSheet23.termBegin }</td>
				<td>${balanceSheet23.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[23].indexName"
					readonly="readonly" value="商誉" class="input-border-title" /><input
					name="balanceSheets[23].indexId" value="24" type="hidden" /></td>
				<td><input name="balanceSheets[23].indexSort"
					readonly="readonly" value="24" class="input-border" /></td>
				<td>${balanceSheet24.termBegin }</td>
				<td>${balanceSheet24.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[24].indexName"
					readonly="readonly" value="长期待摊费用" class="input-border-title" /><input
					name="balanceSheets[24].indexId" value="25" type="hidden" /></td>
				<td><input name="balanceSheets[24].indexSort"
					readonly="readonly" value="25" class="input-border" /></td>
				<td>${balanceSheet25.termBegin }</td>
				<td>${balanceSheet25.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[25].indexName"
					readonly="readonly" value="递延所得税资产" class="input-border-title" /><input
					name="balanceSheets[25].indexId" value="26" type="hidden" /></td>
				<td><input name="balanceSheets[25].indexSort"
					readonly="readonly" value="26" class="input-border" /></td>
				<td>${balanceSheet26.termBegin }</td>
				<td>${balanceSheet26.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[26].indexName"
					readonly="readonly" value="其他非流动资产" class="input-border-title" /><input
					name="balanceSheets[26].indexId" value="27" type="hidden" /></td>
				<td><input name="balanceSheets[26].indexSort"
					readonly="readonly" value="27" class="input-border" /></td>
				<td>${balanceSheet27.termBegin }</td>
				<td>${balanceSheet27.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[27].indexName"
					readonly="readonly" value="非流动资产合计" class="input-border-title" /><input
					name="balanceSheets[27].indexId" value="28" type="hidden" /></td>
				<td><input name="balanceSheets[27].indexSort"
					readonly="readonly" value="28" class="input-border" /></td>
				<td>${balanceSheet28.termBegin }</td>
				<td>${balanceSheet28.termEnd }</td>
			</tr>
			<tr>
				<td><input type="text" class="input-border" /></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><span><input name="balanceSheets[28].indexName"
						readonly="readonly" value="资产总计" class="input-border-title" /><input
						name="balanceSheets[28].indexId" value="29" type="hidden" /></span></td>
				<td><input name="balanceSheets[28].indexSort"
					readonly="readonly" value="29" class="input-border" /></td>
				<td>${balanceSheet29.termBegin }</td>
				<td>${balanceSheet29.termEnd }</td>
			</tr>
		</table>

		<table style="width: 55%; margin-left: 10px;" border="1"
			cellspacing="0" cellpadding="0" bordercolordark="#FFFFFF"
			bordercolorlight="#000000">
			<tr>
				<th>负债和所有者(或股东)权益</th>
				<th>行次</th>
				<th>期初数</th>
				<th>期末数</th>
			</tr>
			<tr>
				<td width="230"><span class="label"><input type="text"
						value="流动负债：" class="input-border" /></span></td>
				<td width="50"></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><input name="balanceSheets[29].indexName"
					readonly="readonly" value="短期借款" class="input-border-title" /><input
					name="balanceSheets[29].indexId" value="30" type="hidden" /></td>
				<td><input name="balanceSheets[29].indexSort"
					readonly="readonly" value="30" class="input-border" /></td>
				<td>${balanceSheet30.termBegin }</td>
				<td>${balanceSheet30.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[30].indexName"
					readonly="readonly" value="交易性金融负债" class="input-border-title" /><input
					name="balanceSheets[30].indexId" value="31" type="hidden" /></td>
				<td><input name="balanceSheets[30].indexSort"
					readonly="readonly" value="31" class="input-border" /></td>
				<td>${balanceSheet31.termBegin }</td>
				<td>${balanceSheet31.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[31].indexName"
					readonly="readonly" value="应付票据" class="input-border-title" /><input
					name="balanceSheets[31].indexId" value="32" type="hidden" /></td>
				<td><input name="balanceSheets[31].indexSort"
					readonly="readonly" value="32" class="input-border" /></td>
				<td>${balanceSheet32.termBegin }</td>
				<td>${balanceSheet32.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[32].indexName"
					readonly="readonly" value="应付账款" class="input-border-title" /><input
					name="balanceSheets[32].indexId" value="33" type="hidden" /></td>
				<td><input name="balanceSheets[32].indexSort"
					readonly="readonly" value="33" class="input-border" /></td>
				<td>${balanceSheet33.termBegin }</td>
				<td>${balanceSheet33.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[33].indexName"
					readonly="readonly" value="预收款项" class="input-border-title" /><input
					name="balanceSheets[33].indexId" value="34" type="hidden" /></td>
				<td><input name="balanceSheets[33].indexSort"
					readonly="readonly" value="34" class="input-border" /></td>
				<td>${balanceSheet34.termBegin }</td>
				<td>${balanceSheet34.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[34].indexName"
					readonly="readonly" value="应付职工薪酬" class="input-border-title" /><input
					name="balanceSheets[34].indexId" value="35" type="hidden" /></td>
				<td><input name="balanceSheets[34].indexSort"
					readonly="readonly" value="35" class="input-border" /></td>
				<td>${balanceSheet35.termBegin }</td>
				<td>${balanceSheet35.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[35].indexName"
					readonly="readonly" value="应交税费" class="input-border-title" /><input
					name="balanceSheets[35].indexId" value="36" type="hidden" /></td>
				<td><input name="balanceSheets[35].indexSort"
					readonly="readonly" value="36" class="input-border" /></td>
				<td>${balanceSheet36.termBegin }</td>
				<td>${balanceSheet36.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[36].indexName"
					readonly="readonly" value="应付利息" class="input-border-title" /><input
					name="balanceSheets[36].indexId" value="37" type="hidden" /></td>
				<td><input name="balanceSheets[36].indexSort"
					readonly="readonly" value="37" class="input-border" /></td>
				<td>${balanceSheet37.termBegin }</td>
				<td>${balanceSheet37.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[37].indexName"
					readonly="readonly" value="应付股利" class="input-border-title" /><input
					name="balanceSheets[37].indexId" value="38" type="hidden" /></td>
				<td><input name="balanceSheets[37].indexSort"
					readonly="readonly" value="38" class="input-border" /></td>
				<td>${balanceSheet38.termBegin }</td>
				<td>${balanceSheet38.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[38].indexName"
					readonly="readonly" value="其他应付款" class="input-border-title" /><input
					name="balanceSheets[38].indexId" value="39" type="hidden" /></td>
				<td><input name="balanceSheets[38].indexSort"
					readonly="readonly" value="39" class="input-border" /></td>
				<td>${balanceSheet39.termBegin }</td>
				<td>${balanceSheet39.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[39].indexName"
					readonly="readonly" value="一年内到期的非流动负债" class="input-border-title" /><input
					name="balanceSheets[39].indexId" value="40" type="hidden" /></td>
				<td><input name="balanceSheets[39].indexSort"
					readonly="readonly" value="40" class="input-border" /></td>
				<td>${balanceSheet40.termBegin }</td>
				<td>${balanceSheet40.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[40].indexName"
					readonly="readonly" value="其他流动负债" class="input-border-title" /><input
					name="balanceSheets[40].indexId" value="41" type="hidden" /></td>
				<td><input name="balanceSheets[40].indexSort"
					readonly="readonly" value="41" class="input-border" /></td>
				<td>${balanceSheet41.termBegin }</td>
				<td>${balanceSheet41.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[41].indexName"
					readonly="readonly" value="流动负债合计" class="input-border-title" /><input
					name="balanceSheets[41].indexId" value="42" type="hidden" /></td>
				<td><input name="balanceSheets[41].indexSort"
					readonly="readonly" value="42" class="input-border" /></td>
				<td>${balanceSheet42.termBegin }</td>
				<td>${balanceSheet42.termEnd }</td>
			</tr>
			<tr>
				<td colspan="4"><span><input type="text" value="非流动负债："
						class="input-border" /></span></td>
			</tr>
			<tr>
				<td><input name="balanceSheets[42].indexName"
					readonly="readonly" value="长期借款" class="input-border-title" /><input
					name="balanceSheets[42].indexId" value="43" type="hidden" /></td>
				<td><input name="balanceSheets[42].indexSort"
					readonly="readonly" value="43" class="input-border" /></td>
				<td>${balanceSheet43.termBegin }</td>
				<td>${balanceSheet43.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[43].indexName"
					readonly="readonly" value="应付债券" class="input-border-title" /><input
					name="balanceSheets[43].indexId" value="44" type="hidden" /></td>
				<td><input name="balanceSheets[43].indexSort"
					readonly="readonly" value="44" class="input-border" /></td>
				<td>${balanceSheet44.termBegin }</td>
				<td>${balanceSheet44.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[44].indexName"
					readonly="readonly" value="长期应付款" class="input-border-title" /><input
					name="balanceSheets[44].indexId" value="45" type="hidden" /></td>
				<td><input name="balanceSheets[44].indexSort"
					readonly="readonly" value="45" class="input-border" /></td>
				<td>${balanceSheet45.termBegin }</td>
				<td>${balanceSheet45.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[45].indexName"
					readonly="readonly" value="专项应付款" class="input-border-title" /><input
					name="balanceSheets[45].indexId" value="46" type="hidden" /></td>
				<td><input name="balanceSheets[45].indexSort"
					readonly="readonly" value="46" class="input-border" /></td>
				<td>${balanceSheet46.termBegin }</td>
				<td>${balanceSheet46.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[46].indexName"
					readonly="readonly" value="预计负债" class="input-border-title" /><input
					name="balanceSheets[46].indexId" value="47" type="hidden" /></td>
				<td><input name="balanceSheets[46].indexSort"
					readonly="readonly" value="47" class="input-border" /></td>
				<td>${balanceSheet47.termBegin }</td>
				<td>${balanceSheet47.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[47].indexName"
					readonly="readonly" value="递延所得税负债" class="input-border-title" /><input
					name="balanceSheets[47].indexId" value="48" type="hidden" /></td>
				<td><input name="balanceSheets[47].indexSort"
					readonly="readonly" value="48" class="input-border" /></td>
				<td>${balanceSheet48.termBegin }</td>
				<td>${balanceSheet48.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[48].indexName"
					readonly="readonly" value="其他非流动负债" class="input-border-title" /><input
					name="balanceSheets[48].indexId" value="49" type="hidden" /></td>
				<td><input name="balanceSheets[48].indexSort"
					readonly="readonly" value="49" class="input-border" /></td>
				<td>${balanceSheet49.termBegin }</td>
				<td>${balanceSheet49.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[49].indexName"
					readonly="readonly" value="非流动负债合计" class="input-border-title" /><input
					name="balanceSheets[49].indexId" value="50" type="hidden" /></td>
				<td><input name="balanceSheets[49].indexSort"
					readonly="readonly" value="50" class="input-border" /></td>
				<td>${balanceSheet50.termBegin }</td>
				<td>${balanceSheet50.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[50].indexName"
					readonly="readonly" value="负债合计" class="input-border-title" /><input
					name="balanceSheets[50].indexId" value="51" type="hidden" /></td>
				<td><input name="balanceSheets[50].indexSort"
					readonly="readonly" value="51" class="input-border" /></td>
				<td>${balanceSheet51.termBegin }</td>
				<td>${balanceSheet51.termEnd }</td>
			</tr>
			<tr>
				<td colspan="4"><span><input type="text"
						value="所有者（或股东）权益：" class="input-border-title" /></span></td>
			</tr>
			<tr>
				<td><input name="balanceSheets[51].indexName"
					readonly="readonly" value="实收资本（或股东）" class="input-border-title" /><input
					name="balanceSheets[51].indexId" value="52" type="hidden" /></td>
				<td><input name="balanceSheets[51].indexSort"
					readonly="readonly" value="52" class="input-border" /></td>
				<td>${balanceSheet52.termBegin }</td>
				<td>${balanceSheet52.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[52].indexName"
					readonly="readonly" value="资本公积" class="input-border-title" /><input
					name="balanceSheets[52].indexId" value="53" type="hidden" /></td>
				<td><input name="balanceSheets[52].indexSort"
					readonly="readonly" value="53" class="input-border" /></td>
				<td>${balanceSheet53.termBegin }</td>
				<td>${balanceSheet53.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[53].indexName"
					readonly="readonly" value="减：库存股" class="input-border-title" /><input
					name="balanceSheets[53].indexId" value="54" type="hidden" /></td>
				<td><input name="balanceSheets[53].indexSort"
					readonly="readonly" value="54" class="input-border" /></td>
				<td>${balanceSheet54.termBegin }</td>
				<td>${balanceSheet54.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[54].indexName"
					readonly="readonly" value="盈余公积" class="input-border-title" /><input
					name="balanceSheets[54].indexId" value="55" type="hidden" /></td>
				<td><input name="balanceSheets[54].indexSort"
					readonly="readonly" value="55" class="input-border" /></td>
				<td>${balanceSheet55.termBegin }</td>
				<td>${balanceSheet55.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[55].indexName"
					readonly="readonly" value="未分配利润" class="input-border-title" /><input
					name="balanceSheets[55].indexId" value="56" type="hidden" /></td>
				<td><input name="balanceSheets[55].indexSort"
					readonly="readonly" value="56" class="input-border" /></td>
				<td>${balanceSheet56.termBegin }</td>
				<td>${balanceSheet56.termEnd }</td>
			</tr>
			<tr>
				<td><input name="balanceSheets[56].indexName"
					readonly="readonly" value="所有者（或股东）权益合计" class="input-border-title" /><input
					name="balanceSheets[56].indexId" value="57" type="hidden" /></td>
				<td><input name="balanceSheets[56].indexSort"
					readonly="readonly" value="57" class="input-border" /></td>
				<td>${balanceSheet57.termBegin }</td>
				<td>${balanceSheet57.termEnd }</td>
			</tr>
			<tr>
				<td><span><input name="balanceSheets[57].indexName"
						readonly="readonly" value="负债和所有者（或股东）权益总计"
						class="input-border-title" /><input
						name="balanceSheets[57].indexId" value="58" type="hidden" /></span></td>
				<td><input name="balanceSheets[57].indexSort"
					readonly="readonly" value="58" class="input-border" /></td>
				<td>${balanceSheet58.termBegin }</td>
				<td>${balanceSheet58.termEnd }</td>
			</tr>
		</table>
	</div>
</body>