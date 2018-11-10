<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<%@include file="/common/editor.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>加工型商户--生产成本和毛利率核算</title>
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
	<c:forEach begin="0" end="3">
		<div
			style="width: 49.5%; float: left; margin: auto ; padding:auto;margin-left:5px;">
			<table class="col3" cellpadding="0" cellspacing="0">
				<tr>
					<td class="content title right">产品</td>  
				</tr>
			</table>
			<div id="gradeDiv" loxiaType="edittable">
				<table operation="add,delete" append="1" width="100%" id="pay">
					<thead>
						<tr>
							<th><input type="checkbox" name="selectCostAll"
								id="selectCostAll" /></th>
							<th>材料</th>
							<th>数量</th>
							<th>单位</th>
							<th>单位成本</th>
							<th>总成本</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="5">成本小计</td>
							<td id="loanMoney"></td>
						</tr>
						<tr>
							<td colspan="5">劳动力成本（如果按产量付款）</td>
							<td id="loanMoney"></td>
						</tr>
						<tr>
							<td colspan="5">总成本</td>
							<td id="loanMoney"></td>
						</tr>
						<tr>
							<td colspan="5">单价</td>
							<td id="loanMoney"></td>
						</tr>
						<tr>
							<td colspan="5">毛利率=（售价-总成本）/售价</td>
							<td id="loanMoney"></td>
						</tr>
						<tr>
							<td colspan="5">毛利率（不含劳动力成本）=（售价-成本小计）/售价</td>
							<td id="loanMoney"></td>
						</tr>
					</tfoot>
					<tbody id="gradeBody">

					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="selectCost" name="selectCost" /></td>
							<td><input type="text" loxiaType="input" name="ctype"
								value="" /></td>
							<td><input type="text" loxiaType="input" name="remark"
								value="" /></td>
							<td><input type="text" loxiaType="input" name="remark"
								value="" /></td>
							<td><input type="text" loxiaType="input" name="remark"
								value="" /></td>
							<td><input type="text" loxiaType="input" name="money3"
								sumTextId="loanMoney" checkmaster="computeCommon" /></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</c:forEach>
	<br />
	<Table style="width: 100%">
		<tr>
			<td style="width: 50%" valign="top">
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">加权利率计算</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="jiaquan">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>产品</th>
								<th>毛利率</th>
								<th>销售比重</th>
								<th>加权利率</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td id="loanMoney3">￥0.00</td>
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
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money1"
									sumTextId="loanMoney3" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
			<td style="width: 50%" valign="top">
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">加权利率（不含劳动力成本）计算</td>
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="lilv">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>产品</th>
								<th>毛利率</th>
								<th>销售比重</th>
								<th>加权利率</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
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
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="money2"
									sumTextId="loanMoney2" checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
		</tr>
	</Table>
</body>
</html>
