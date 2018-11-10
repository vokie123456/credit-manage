<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<%@include file="/common/editor.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>贸易商户--经营和家庭现金流</title>
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
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<Table style="width: 100%">
		<tr>
			<td style="width: 50%" valign="top">
				<div class="divBgColor">月经营现金流</div>
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">经营收入</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>经营收入</th>
								<th>金额</th>
							</tr>
						</thead>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">运营成本</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>运营成本</th>
								<th>金额</th>
							</tr>
						</thead>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money"
									onkeyup="this.value=this.value.replace(/\D/g,'')"
									onafterpaste="this.value=this.value.replace(/\D/g,'')" /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<table class="col3" cellpadding="0" cellspacing="0"
					style="width: 100%;">
					<tr>
						<td class="label">总运营成本：</td>
						<td class="content title right"><input id="money"
							name="money" loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label">净经营收入：</td>
						<td class="content right "><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label bottom bottomleft">经营外的其他收入：</td>
						<td class="content bottomright bottom right"><input
							id="money" name="money" loxiaType="input" trim="true" /></td>
					</tr>
				</table> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="2" class="content title right">申请人个性印象评估</td>
					</tr>
					<tr>
						<td class="label ">最好=4，好=3，一般=2，差=1，最高分：28：</td>
						<td class="content right" style="text-align: center;">得分</td>
					</tr>
					<tr>
						<td class="label ">提供信息时的合作态度：</td>
						<td class="content right"><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label ">所提供的信息的准确性：</td>
						<td class="content right"><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label ">经营知识：</td>
						<td class="content right"><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label ">管理技术：</td>
						<td class="content right"><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label ">经营场所大体外貌 ：</td>
						<td class="content right"><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label ">住所外貌 ：</td>
						<td class="content right"><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label ">诚实，可信 ：</td>
						<td class="content right"><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label ">还款历史 ：</td>
						<td class="content right"><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label ">得分 ：</td>
						<td class="content right"><input id="money" name="money"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label bottom bottomleft">得分比率：</td>
						<td class="content bottomright bottom right"><input
							id="money" name="money" loxiaType="input" trim="true" /></td>
					</tr>
				</table>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
				</div>
			</td>
			<td style="width: 50%" valign="top">
				<div class="divBgColor">月家庭现金流</div>
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">家庭收入</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="homeIncome">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>家庭收入</th>
								<th>金额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>-</td>
								<td>总家庭收入</td>
								<td id="income">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="incomeMoney"
									sumTextId="income" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">家庭支出</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="expend">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>家庭支出</th>
								<th>金额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>-</td>
								<td>总家庭支出</td>
								<td id="expendMoney">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="exmoney"
									sumTextId="expendMoney" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">家庭净收入计算</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>家庭净收入计算</th>
								<th>金额</th>
							</tr>
						</thead>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">财务指数</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>财务指数</th>
								<th>金额</th>
							</tr>
						</thead>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money" /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
				</div>
			</td>
		</tr>
	</Table>
	<table class="col3" cellpadding="0" cellspacing="0"
		style="width: 100%;">
		<tr>
			<td class="label titleleft">客户要求贷款额金额</td>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
			<td class="label">客户提出的分期付款</td>
			<td class="content titleright right"><input id="money"
				mandatory="true" name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="label bottomleft bottom">提议贷款金额</td>
			<td class="content bottom"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
			<td class="label bottom">提议分期还款本金</td>
			<td class="content right bottom bottomright"><input id="money"
				mandatory="true" name="money" loxiaType="input" trim="true" /></td>
		</tr>
	</table>
	<div class="divBgColor">还款计划</div>
	<div class="divBgColor">备注</div>
	<textarea class="cleditor" rows="4"></textarea>
	</div>
	<div class="divBgColor">收入状况</div>
	<textarea class="cleditor" rows="4"></textarea>
	<div class="divBgColor">还贷能力测算</div>
	<textarea class="cleditor" rows="4"></textarea>
	<div class="divBgColor">授信风险分析</div>
	<textarea class="cleditor" rows="4"></textarea>
	</td>
	</tr>
</body>
</html>
