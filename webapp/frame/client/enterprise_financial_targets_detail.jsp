<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>企业主要财务指标</title>
<style>
.col1 {
	padding-left: 22px;
	width: 40%;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<br/>
	<div style="width: 282px;">
		<span>年份：</span align="center">${target1.reportYear }&nbsp;&nbsp;<span>金额单位：万元</span>
	</div>
	<br />
	<table style="float: left; width: 50%;" border="1" cellspacing="0"
			cellpadding="0" bordercolordark="#FFFFFF" bordercolorlight="#000000">
		<tr>
			<th>指标</th>
			<th>行次</th>
			<th></th>
		</tr>
		<tr>
			<td><span>一、偿债能力指标：</span></td>
			<td width="100" align="center"></td>
			<td></td>
		</tr>
		<tr>
			<td class="col1">流动比率</td>
			<td width="100" align="center">1</td>
			<td align="center">${target1.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">速动比率</td>
			<td width="100" align="center">2</td>
			<td align="center">${target2.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">现金比率</td>
			<td width="100" align="center">3</td>
			<td align="center">${target3.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">营运资本</td>
			<td width="100" align="center">4</td>
			<td align="center">${target4.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">流动负债经营活动净现金流比</td>
			<td width="100" align="center">5</td>
			<td align="center">${target5.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">资产负债比率</td>
			<td width="100" align="center">6</td>
			<td align="center">${target6.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">负债权益比率</td>
			<td width="100" align="center">7</td>
			<td align="center">${target7.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">股东权益比率</td>
			<td width="100" align="center">8</td>
			<td align="center">${target8.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">有形资产债务率</td>
			<td width="100" align="center">9</td>
			<td align="center">${target9.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">债务与有形净值比率</td>
			<td width="100" align="center">10</td>
			<td align="center">${target10.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">利息保障倍数</td>
			<td width="100" align="center">11</td>
			<td align="center">${target11.termEnd}</td>
		</tr>
		<tr>
			<td><span>二、资产负债管理能力指标：</span></td>
			<td width="100" align="center"></td>
			<td></td>
		</tr>
		<tr>
			<td class="col1">应收账款周转率</td>
			<td width="100" align="center">12</td>
			<td align="center">${target12.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">应收账款周转天数</td>
			<td width="100" align="center">13</td>
			<td align="center">${target13.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">应付账款周转率</td>
			<td width="100" align="center">14</td>
			<td align="center">${target14.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">应付账款周转天数</td>
			<td width="100" align="center">15</td>
			<td align="center">${target15.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">存货周转率</td>
			<td width="100" align="center">16</td>
			<td align="center">${target16.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">存货周转天数</td>
			<td width="100" align="center">17</td>
			<td align="center">${target17.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">不良资产比率</td>
			<td width="100" align="center">18</td>
			<td align="center">${target18.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">营业周期</td>
			<td width="100" align="center">19</td>
			<td align="center">${target19.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">流动资产周转率</td>
			<td width="100" align="center">20</td>
			<td align="center">${target20.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">总资产周转率</td>
			<td width="100" align="center">21</td>
			<td align="center">${target21.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">固定资产周转率</td>
			<td width="100" align="center">22</td>
			<td align="center">${target22.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">长期资产适合率</td>
			<td width="100" align="center">23</td>
			<td align="center">${target23.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">负债结构比率</td>
			<td width="100" align="center">24</td>
			<td align="center">${target24.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">长期负债权益比率</td>
			<td width="100" align="center">25</td>
			<td align="center">${target25.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">&nbsp;</td>
			<td width="100" align="center">&nbsp;</td>
			<td align="center">&nbsp;</td>
		</tr>
		<tr>
			<td class="col1">&nbsp;</td>
			<td width="100" align="center">&nbsp;</td>
			<td align="center">&nbsp;</td>
		</tr>
	</table>
	<table style="float: left; width: 50%;" border="1" cellspacing="0"
			cellpadding="0" bordercolordark="#FFFFFF" bordercolorlight="#000000">
		<tr>
			<th>指标</th>
			<th>行次</th>
			<th></th>
		</tr>
		<tr>
			<td><span>三、盈利能力指标：</span></td>
			<td width="100" align="center"></td>
			<td></td>
		</tr>
		<tr>
			<td class="col1">主营业务毛利率</td>
			<td width="100" align="center">26</td>
			<td align="center">${target26.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">主营业务利润率</td>
			<td width="100" align="center">27</td>
			<td align="center">${target27.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">成本费用利润率</td>
			<td width="100" align="center">28</td>
			<td align="center">${target28.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">净资产收益率</td>
			<td width="100" align="center">29</td>
			<td align="center">${target29.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">每股收益</td>
			<td width="100" align="center">30</td>
			<td align="center">${target30.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">股票获利率</td>
			<td width="100" align="center">31</td>
			<td align="center">${target31.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">总资产利润率</td>
			<td width="100" align="center">32</td>
			<td align="center">${target32.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">主营业务比率</td>
			<td width="100" align="center">33</td>
			<td align="center">${target33.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">非经常性损益比率</td>
			<td width="100" align="center">34</td>
			<td align="center">${target34.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">关联交易比率</td>
			<td width="100" align="center">35</td>
			<td align="center">${target35.termEnd}</td>
		</tr>
		<tr>
			<td><span>四、成长能力指标：</span></td>
			<td width="100" align="center"></td>
			<td></td>
		</tr>
		<tr>
			<td class="col1">主营业务收入增长率</td>
			<td width="100" align="center">36</td>
			<td align="center">${target36.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">应收款项增长率</td>
			<td width="100" align="center">37</td>
			<td align="center">${target37.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">净利润增长率</td>
			<td width="100" align="center">38</td>
			<td align="center">${target38.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">固定资产投资扩张率</td>
			<td width="100" align="center">39</td>
			<td align="center">${target39.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">资本项目规模维持率</td>
			<td width="100" align="center">40</td>
			<td align="center">${target40.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">总资产扩张率</td>
			<td width="100" align="center">41</td>
			<td align="center">${target41.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">每股收益增长率</td>
			<td width="100" align="center">42</td>
			<td align="center">${target42.termEnd}</td>
		</tr>
		<tr>
			<td><span>五、现金流量指标：</span></td>
			<td width="100" align="center"></td>
			<td></td>
		</tr>
		<tr>
			<td class="col1">每股营业现金流量</td>
			<td width="100" align="center">43</td>
			<td align="center">${target43.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">现金股利支付率</td>
			<td width="100" align="center">44</td>
			<td align="center">${target44.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">主营业务现金比率</td>
			<td width="100" align="center">45</td>
			<td align="center">${target45.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">现金自给率</td>
			<td width="100" align="center">46</td>
			<td align="center">${target46.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">经营现金资本性支出比率</td>
			<td width="100" align="center">47</td>
			<td align="center">${target47.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">经营现金折旧费用比率</td>
			<td width="100" align="center">48</td>
			<td align="center">${target48.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">结构分析</td>
			<td width="100" align="center">49</td>
			<td align="center">${target49.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">营业活动收益质量</td>
			<td width="100" align="center">50</td>
			<td align="center">${target50.termEnd}</td>
		</tr>
		<tr>
			<td class="col1">经营活动产生的现金净流量增长率</td>
			<td width="100" align="center">51</td>
			<td align="center">${target51.termEnd}</td>
		</tr>
	</table>
</body>