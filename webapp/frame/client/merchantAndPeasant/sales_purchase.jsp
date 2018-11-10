<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<%@include file="/common/editor.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>贸易商户--销售与采购计划</title>
<script type="text/javascript" src="<c:url value='test.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/compute.js'/>"></script>
<style type="text/css">
.col3 tr td {
	border-left: 1px solid #aaaaaa;
	border-top: 1px solid #aaaaaa;
}

.col3 .titleleft {
	border-top-left-radius: 4px;
}

.col3 .titleright {
	border-top-right-radius: 4px;
}

.col3 .title {
	border-top-left-radius: 4px;
	border-top-right-radius: 4px;
	background-color: #f7f7f7
}

.col3 .right {
	border-right: 1px solid #aaaaaa;
}

.col3 .bottom {
	border-bottom: 1px solid #aaaaaa;
}

.col3 .bottomright {
	border-bottom-right-radius: 4px;
}

.col3 .bottomleft {
	border-bottom-left-radius: 4px;
}

.col3 .labelt {
	width: 12%;
	text-align: right;
	font-size: 14px;
	padding-left: 10px;
}

.col3 .labelMonth {
	width: 5%;
	text-align: right;
	font-size: 14px;
	padding-left: 5px;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<table class="col3" cellpadding="0" cellspacing="0"
		style="width: 100%;">
		<tr>
			<td colspan="6" class="content title right">销售分析</td>
		</tr>
		<tr>
			<td class="label">好的一天的销售额：</td>
			<td class="content"><input id="money" name="money"
				loxiaType="input" trim="true" /></td>
			<td class="label">好的一周的销售额：</td>
			<td class="content"><input id="money" name="money"
				loxiaType="input" trim="true" /></td>
			<td class="label">好的一月的销售额：</td>
			<td class="content right"><input id="money" name="money"
				loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="label">正常一天的销售额 ：</td>
			<td class="content"><input id="money" name="money"
				loxiaType="input" trim="true" /></td>
			<td class="label">正常一周的销售额 ：</td>
			<td class="content"><input id="money" name="money"
				loxiaType="input" trim="true" /></td>
			<td class="label">正常一月的销售额 ：</td>
			<td class="content right"><input id="money" name="money"
				loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="label  bottom bottomleft">坏的一天销售额度 ：</td>
			<td class="content bottom"><input id="money" name="money"
				loxiaType="input" trim="true" /></td>
			<td class="label bottom">坏的一周销售额度 ：</td>
			<td class="content bottom"><input id="money" name="money"
				loxiaType="input" trim="true" /></td>
			<td class="label bottom">坏的一月销售额度 ：</td>
			<td class="content bottomright bottom right"><input id="money"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
	</table>
	<br />
	<table class="col3" cellpadding="0" cellspacing="0">
		<tr>
			<td class="labelt titleleft"></td>
			<td class="labelt">周一</td>
			<td class="labelt">周二</td>
			<td class="labelt">周三</td>
			<td class="labelt">周四</td>
			<td class="labelt">周五</td>
			<td class="labelt">周六</td>
			<td class=" labelt titleright right">周日</td>
		</tr>
		<tr>
			<td class="labelt">旺季/正常/差</td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class=" labelt right"></td>
		</tr>
		<tr>
			<td class="labelt">金额</td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class="labelt"></td>
			<td class=" labelt right"></td>
		</tr>
		<tr>
			<td class="labelt">-</td>
			<td class="labelt">-</td>
			<td class="labelt">-</td>
			<td class="labelt">-</td>
			<td class="labelt">-</td>
			<td class="labelt">-</td>
			<td class="labelt">提议贷款金额</td>
			<td class=" labelt right"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="labelt bottomleft bottom">-</td>
			<td class="labelt bottom">-</td>
			<td class="labelt bottom">-</td>
			<td class="labelt bottom">-</td>
			<td class="labelt bottom">-</td>
			<td class="labelt bottom">-</td>
			<td class="labelt bottom">提议分期还款本金</td>
			<td class=" labelt bottom bottomright right"><input id="money"
				mandatory="true" name="money" loxiaType="input" trim="true" /></td>
		</tr>
	</table>
	<br />
	<table class="col3" cellpadding="0" cellspacing="0">
		<tr>
			<td class="label titleleft"></td>
			<td class="label">第一周</td>
			<td class="label">第二周</td>
			<td class="label">第三周</td>
			<td class="label">第四周</td>
			<td class=" label titleright right">月销售额</td>
		</tr>
		<tr>
			<td class="label">旺季/正常/差</td>
			<td class="label"></td>
			<td class="label"></td>
			<td class="label"></td>
			<td class="label"></td>
			<td class=" label right"></td>
		</tr>
		<tr>
			<td class="label bottomleft bottom">金额</td>
			<td class="label bottom"></td>
			<td class="label bottom"></td>
			<td class="label bottom"></td>
			<td class="label bottom"></td>
			<td class=" label bottom bottomright right "></td>
		</tr>
	</table>
	<br/>
	<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">各产品的销售额</td>
					</tr>
				</table>
	<div id="gradeDiv" loxiaType="edittable">
		<table operation="add,delete" append="1" width="100%" id="">
			<thead>
				<tr>
					<th><input type="checkbox" name="selectCostAll"
						id="selectCostAll" /></th>
					<th>产品</th>
					<th>频率描述</th>
					<th>月销售数量</th>
					<th>单价</th>
					<th>月销售额</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>-</td>
					<td>总计</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>￥0.00</td>
				</tr>
			</tfoot>
			<tbody id="gradeBody">

			</tbody>
			<tbody>
				<tr>
					<td><input type="checkbox" id="selectCost" name="selectCost" /></td>
					<td><input type="text" loxiaType="input" name="remark"
						value="" /></td>
					<td><input type="text" loxiaType="input" name="remark"
						value="" /></td>
					<td><input type="text" loxiaType="input" name="remark"
						value="" /></td>
					<td><input type="text" loxiaType="input" name="remark"
						value="" /></td>
					<td><input type="text" loxiaType="input" name="money" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<br />
	<table class="col3" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="13" class="content title right">年季</td>
		</tr>
		<tr>
			<td class="labelMonth"></td>
			<td class="labelMonth">1月</td>
			<td class="labelMonth">2月</td>
			<td class="labelMonth">3月</td>
			<td class="labelMonth">4月</td>
			<td class="labelMonth">5月</td>
			<td class="labelMonth">6月</td>
			<td class="labelMonth">7月</td>
			<td class="labelMonth">8月</td>
			<td class="labelMonth">9月</td>
			<td class="labelMonth">10月</td>
			<td class="labelMonth">11月</td>
			<td class=" labelMonth right">12月</td>
		</tr>
		<tr>
			<td class="labelMonth">旺季</td>
			<td class="labelMonth">*</td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class="labelMonth">*</td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class=" labelMonth right"></td>
		</tr>
		<tr>
			<td class="labelMonth">正常</td>
			<td class="labelMonth"></td>
			<td class="labelMonth">*</td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class="labelMonth">*</td>
			<td class="labelMonth"></td>
			<td class="labelMonth">*</td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class="labelMonth"></td>
			<td class="labelMonth">*</td>
			<td class=" labelMonth right"></td>
		</tr>
		<tr>
			<td class="labelMonth">淡季</td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class="labelMonth "></td>
			<td class=" labelMonth right "></td>
		</tr>
		<tr>
			<td class="labelMonth bottomleft bottom">-</td>
			<td class="labelMonth bottom" colspan="2">文件验证的销售额</td>
			<td class="content bottom" colspan="3">￥0.00</td>
			<td class="labelMonth bottom" colspan="2">一个月</td>
			<td class="labelMonth bottom" colspan="2">分析得出的销售额</td>
			<td class=" content bottom bottomright right " colspan="3">￥0.00</td>
		</tr>
	</table>
	<br />
	<table class="col3" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="4" class="content title right">采购分析</td>
		</tr>
		<tr>
			<td class="label" colspan="2">频率</td>
			<td class="label">数额</td>
			<td class="label right">月采购额</td>
		</tr>
		<tr>
			<td class="label">按日采购</td>
			<td class="content"></td>
			<td class="content"></td>
			<td class=" content right"></td>
		</tr>
		<tr>
			<td class="label">按周采购</td>
			<td class="label"></td>
			<td class="label"></td>
			<td class=" label right"></td>
		</tr>
		<tr>
			<td class="label">按月采购</td>
			<td class="label"></td>
			<td class="label"></td>
			<td class=" label right"></td>
		</tr>
		<tr>
			<td class="label">采购说明：</td>
			<td class="content right" colspan="3">
				据客户介绍，为保证菜品新鲜，每天都要到市场采购蔬菜和肉类，都是现金付款，所以进货单据极少，每天采购蔬菜1500元左右，每天采购肉类1200元左右。
			</td>
		</tr>
		<tr>
			<td class="label bottomleft bottom" colspan="3">总月采购额</td>
			<td class=" content bottom bottomright right ">￥0.00</td>
		</tr>
	</table>
		<br />
	<div id="gradeDiv" loxiaType="edittable">
		<table operation="add,delete" append="1" width="100%" id="allMoney">
			<thead>
				<tr>
					<th rowspan="2">产品</th>
					<th rowspan="2">编号</th>
					<th rowspan="2">单位</th>
					<th colspan="5">毛利率</th>
				</tr>
				<tr>
					<th>进货价格</th>
					<th>销售价格</th>
					<th>毛利率</th>
					<th>销售占比</th>
					<th>加权毛利率</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td id="income">￥0.00</td>
				</tr>
			</tfoot>
			<tbody id="gradeBody">

			</tbody>
			<tbody>
				<tr>
					<td><input type="checkbox" id="selectCost" name="selectCost" /></td>
					<td><input type="text" loxiaType="input" name="remark" /></td>
					<td><input type="text" loxiaType="input" name="money" /></td>
					<td><input type="text" loxiaType="input" name="money" /></td>
					<td><input type="text" loxiaType="input" name="money" /></td>
					<td><input type="text" loxiaType="input" name="money" /></td>
					<td><input type="text" loxiaType="input" name="money" /></td>
					<td><input type="text" loxiaType="input" name="incomeMoney"
									sumTextId="income" checkmaster="computeCommon" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<br />
	<table class="col3" cellpadding="0" cellspacing="0">
		<tr>
			<td class="label titleleft">毛利率</td>
			<td class="content">￥0.00</td>
			<td class="label">文件验证的采购额度</td>
			<td class=" content right titleright">￥0.00</td>
		</tr>
		<tr>
			<td class="label">估计的采购额=销售额*（1-毛利率）</td>
			<td class="content">￥0.00</td>
			<td class="label">（一个月）</td>
			<td class=" content right"></td>
		</tr>
			<tr>
			<td class="label bottomleft bottom">估计的销售额=采购额/（1-毛利率）								
</td>
			<td class="content bottom">￥0.00</td>
			<td class="label bottom">分析得出的采购额</td>
			<td class=" content bottom bottomright right">￥0.00</td>
		</tr>
	</table>

	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
	</div>
</body>
</html>
