<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>贸易商户</title>
<script type="text/javascript" src="<c:url value='test.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/compute.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/merchantAndPeasant/processing_assets_liability.js'/>"></script>
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
	<div class="divBgColor">资产</div>
				<table class="col3" cellpadding="0" cellspacing="0"
					id="moneyAndBank">
					<tr>
						<td colspan="2" class="content title right">现金和银行存款</td>
					</tr>
					<tr>
						<td class="label">现金：</td>
						<td class="content right"><input name="money1"
							loxiaType="input" trim="true" sumTextId="summoney"
							checkmaster="computeCommon" /></td>
					</tr>
					<tr>
						<td class="label">银行存款：</td>
						<td class="content right"><input name="money"
							sumTextId="summoney" checkmaster="computeCommon"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label bottom bottomleft">总计：</td>
						<td class="content bottomright bottom right" id="summoney"></td>
					</tr>
				</table> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">应收账款</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="pay">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>应收账款</th>
								<th>描述</th>
								<th>金额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td id="loanMoney"></td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money3"
									sumTextId="loanMoney" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">预付账款</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="pay1">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>预付账款</th>
								<th>描述</th>
								<th>金额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td id="loanMoney1"></td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money3"
									sumTextId="loanMoney1" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">坏账</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="huaizhang">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>坏账</th>
								<th>描述</th>
								<th>金额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td id="loanMoney2">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money2"
									sumTextId="loanMoney2" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">存货</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="save">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>存货</th>
								<th>数量</th>
								<th>单价</th>
								<th>价值</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td id="MoneySave">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money0" sumTextId="MoneySave" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0"
					style="width: 100%;">
					<tr>
						<td class="label bottom bottomleft titleleft">总流动资产：</td>
						<td class="content bottomright bottom right titleright"><input
							id="money" name="money" loxiaType="input" trim="true" /></td>
					</tr>
				</table> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">固定资产</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="noMove">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>固定资产</th>
								<th>描述</th>
								<th>价值</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td id="lmove">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money4" sumTextId="lmove" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="label bottom bottomleft titleleft">总经营资产：</td>
						<td class="content bottomright bottom right titleright"><input
							id="money" name="money" loxiaType="input" trim="true" /></td>
					</tr>
				</table>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
				</div>
			</td>
			<td style="width: 50%" valign="top">
				<div class="divBgColor">负债</div>
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">应付账款</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="fpay">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>供应商</th>
								<th>分期付款金额</th>
								<th>余额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td id="fpayMoney">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="moneyPay"  sumTextId="fpayMoney" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">其他经营负债</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="otherpay">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>对象</th>
								<th>分期付款金额</th>
								<th>余额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td id="otherMoney">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="othmoney"  sumTextId="otherMoney" checkmaster="computeCommon"  /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">预收账款</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="advance">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th></th>
								<th>金额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td id="advanceMoney">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="advmoney"  sumTextId="advanceMoney" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">月分期付款总额</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="monthPay">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th></th>
								<th></th>
								<th>金额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td id="paytotal">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money" /></td>
								<td><input type="text" loxiaType="input" name="moneytatal"  sumTextId="paytotal" checkmaster="computeCommon"/></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="label titleleft">权益：</td>
						<td class="content titleright right"><input id="money"
							name="money" loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label bottom bottomleft">总负债+权益：</td>
						<td class="content bottomright bottom right"><input
							id="money" name="money" loxiaType="input" trim="true" /></td>
					</tr>
				</table>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
				</div>
			</td>
		</tr>
	</Table>
	<div class="divBgColor">家庭资产负债表</div>
	<Table style="width: 100%">
		<tr>
			<td style="width: 50%" valign="top">
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="homeMoney">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>资产</th>
								<th>金额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>总家庭资产</td>
								<td>-</td>
								<td id="homeloanMoney">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="money" /></td>
								<td><input type="text" loxiaType="input" name="hommoney"  sumTextId="homeloanMoney" checkmaster="computeCommon"/></td>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
			<td style="width: 50%" valign="top">
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">家庭负债</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="homepay">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>债权人</th>
								<th>分期付款</th>
								<th>余额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td></td>
								<td>-</td>
								<td>-</td>
								<td id="homepayMoney">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money" /></td>
								<td><input type="text" loxiaType="input" name="hompaymoney" sumTextId="homepayMoney" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<table class="col3" cellpadding="0" cellspacing="0"
					style="width: 100%;">
					<tr>
						<td class="label">权益=总资产-总负债：</td>
						<td class="content title right"><input id="money"
							name="money" loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<td class="label bottom bottomleft">总负债+权益：</td>
						<td class="content bottomright bottom right"><input
							id="money" name="money" loxiaType="input" trim="true" /></td>
					</tr>
				</table>
			</td>
		</tr>
</body>
</html>
