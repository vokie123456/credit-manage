<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<%@include file="/common/editor.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>加工型商户--生产型企业存货</title>
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
	
	<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">原材料</td>
					</tr>
				</table>
	<div id="gradeDiv" loxiaType="edittable">
		<table operation="add,delete" append="1" width="100%" id="yuancailiao">
			<thead>
				<tr>
					<th><input type="checkbox" name="selectCostAll"
						id="selectCostAll" /></th>
					<th>名称</th>
					<th>数量</th>
					<th>单位</th>
					<th>单位采购价格</th>
					<th>总值</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>-</td>
					<td>总计</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td id="loanMoney">￥0.00</td>
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
					<td><input type="text" loxiaType="input" name="money"  sumTextId="loanMoney" checkmaster="computeCommon" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<br />
	<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">半成品</td>
					</tr>
				</table>
	<div id="gradeDiv" loxiaType="edittable">
		<table operation="add,delete" append="1" width="100%" id="banchengpin">
			<thead>
				<tr>
					<th><input type="checkbox" name="selectCostAll"
						id="selectCostAll" /></th>
					<th>名称</th>
					<th>数量</th>
					<th>单位生产成本</th>
					<th>完成程度%	</th>
					<th>总值</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>-</td>
					<td>总计</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td id="loaMon">￥0.00</td>
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
					<td><input type="text" loxiaType="input" name="lmoney"    sumTextId="loaMon" checkmaster="computeCommon" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<br />
	<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">产成品</td>
					</tr>
				</table>
	<div id="gradeDiv" loxiaType="edittable">
		<table operation="add,delete" append="1" width="100%" id="chanchengpin">
			<thead>
				<tr>
					<th><input type="checkbox" name="selectCostAll"
						id="selectCostAll" /></th>
					<th>名称</th>
					<th>数量</th>
					<th>单位</th>
					<th>生产成本</th>
					<th>总值</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>-</td>
					<td>总计</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td id="chanMoney">￥0.00</td>
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
					<td><input type="text" loxiaType="input" name="cmoney"   sumTextId="chanMoney" checkmaster="computeCommon" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<table class="col3" cellpadding="0" cellspacing="0">
		<tr>
			<td class="label titleleft bottom bottomleft">总存货</td>
			<td class="content titleright bottom right bottomright">￥0.00</td>
		</tr>
	</table>

	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
	</div>
</body>
</html>
