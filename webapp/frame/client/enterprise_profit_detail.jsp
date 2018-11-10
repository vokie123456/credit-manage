<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>企业客户基本资料--利润表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/enterprise_profit_detail.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="clientId" value="${clientId }" /><br />
	<div style="width:282px;">
		<span>年份：</span>${profit1.reportYear }&nbsp;&nbsp;<span>月份：</span>${profit1.reprotMonth }&nbsp;&nbsp;<span>金额单位：万元</span>
	</div><br/>
	<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0"
		bordercolordark="#FFFFFF" bordercolorlight="#000000">
		<tr>
			<th>项目</th>
			<th>行次</th>
			<th>本期累计数</th>
		</tr>
		<tr>
			<td><span><input name="enterpriseProfits[0].indexName"
					class="input-border-title" value="一、营业收入" /></span> <input value="1"
				type="hidden" name="enterpriseProfits[0].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[0].indexSort" value="1" class="input-border" /></td>
			<td>${profit1.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[1].indexName"
				class="input-border-title" value="减：营业成本" /> <input value="2"
				type="hidden" name="enterpriseProfits[1].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[1].indexSort" value="2" class="input-border" /></td>
			<td>${profit2.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[2].indexName"
				class="input-border-title" value="营业税金及附加" /> <input value="3"
				type="hidden" name="enterpriseProfits[2].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[2].indexSort" value="3" class="input-border" /></td>
			<td>${profit3.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[3].indexName"
				class="input-border-title" value="销售费用" /> <input value="4"
				type="hidden" name="enterpriseProfits[3].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[3].indexSort" value="4" class="input-border" /></td>
			<td>${profit4.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[4].indexName"
				class="input-border-title" value="管理费用" /> <input value="5"
				type="hidden" name="enterpriseProfits[4].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[4].indexSort" value="5" class="input-border" /></td>
			<td>${profit5.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[5].indexName"
				class="input-border-title" value="财务费用" /> <input value="6"
				type="hidden" name="enterpriseProfits[5].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[5].indexSort" value="6" class="input-border" /></td>
			<td>${profit6.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[6].indexName"
				class="input-border-title" value="资产减值损失" /> <input value="7"
				type="hidden" name="enterpriseProfits[6].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[6].indexSort" value="7" class="input-border" /></td>
			<td>${profit7.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[7].indexName"
				class="input-border-title" value="加：投资收益（损失以“-”号填列）" /> <input
				value="8" type="hidden" name="enterpriseProfits[7].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[7].indexSort" value="8" class="input-border" /></td>
			<td>${profit8.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[8].indexName"
				class="input-border-title" value="公允价值变动收益（损失以“-”号填列）" /> <input
				value="9" type="hidden" name="enterpriseProfits[8].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[8].indexSort" value="9" class="input-border" /></td>
			<td>${profit9.termEnd }</td>
		</tr>
		<tr>
			<td><span><input name="enterpriseProfits[9].indexName"
					class="input-border-title" value="二、营业利润（亏损以“-”号填列）" /></span> <input
				value="10" type="hidden" name="enterpriseProfits[9].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[9].indexSort" value="10"
				class="input-border" /></td>
			<td>${profit10.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[10].indexName"
				class="input-border-title" value="加：营业外收入" /> <input value="11"
				type="hidden" name="enterpriseProfits[10].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[10].indexSort" value="11"
				class="input-border" /></td>
			<td>${profit11.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[11].indexName"
				class="input-border-title" value="减：营业外支出" /> <input value="12"
				type="hidden" name="enterpriseProfits[11].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[11].indexSort" value="12"
				class="input-border" /></td>
			<td>${profit12.termEnd }</td>
		</tr>
		<tr>
			<td><span><input name="enterpriseProfits[12].indexName"
					class="input-border-title" value="三、利润总额（亏损以“-”号填列）" /></span> <input
				value="13" type="hidden" name="enterpriseProfits[12].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[12].indexSort" value="13"
				class="input-border" /></td>
			<td>${profit13.termEnd }</td>
		</tr>
		<tr>
			<td><input name="enterpriseProfits[13].indexName"
				class="input-border-title" value="减：所得税" /> <input value="14"
				type="hidden" name="enterpriseProfits[13].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[13].indexSort" value="14"
				class="input-border" /></td>
			<td>${profit14.termEnd }</td>
		</tr>
		<tr>
			<td><span><input name="enterpriseProfits[14].indexName"
					class="input-border-title" value="四、净利润（亏损以“-”号填列）" /></span> <input
				value="15" type="hidden" name="enterpriseProfits[14].indexId" /></td>
			<td width="50"><input
				name="enterpriseProfits[14].indexSort" value="15"
				class="input-border" /></td>
			<td>${profit15.termEnd }</td>
		</tr>
	</table>
</body>