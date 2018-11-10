<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<%@include file="/common/editor.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript" src="<c:url value='/scripts/common/compute.js'/>"></script>
<script type="text/javascript" 
        src="<c:url value='/scripts/frame/client/merchantAndPeasant/accountAndHomeMoney.js'/>"></script>

<style type="text/css">
.col3 tr td {
	border-left: 1px solid #aaaaaa;
	border-top: 1px solid #aaaaaa;
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
	<Table style="width: 100%" >
		<tr>
			<td style="width: 50%" valign="top">
				<table class="col3" cellpadding="0" cellspacing="0"
					style="width: 100%;" id="moneyAndBank">
					<tr>
						<td colspan="2" class="content title right">现金和银行存款</td>
					</tr>
					<tr>
						<td class="label">现金：</td>
						<td class="content right"><input  name="money" id="cash"
							trim="true" loxiaType="number" 
							checkmaster="countMoneyAndBankBalance"/></td>
					</tr>
					<tr>
						<td class="label">银行存款：</td>
						<td class="content right"><input name="money" id="bankBalance"
							trim="true" loxiaType="number" 
							checkmaster="countMoneyAndBankBalance"/></td>
					</tr>
					<tr>
						<td class="label bottom bottomleft">合计：</td>
						<td class="content bottomright bottom right" id="summoney">￥0.00</td>
					</tr>
				</table> <br />
				
				<table class="col3" cellpadding="0" cellspacing="0"
					style="width: 100%;">
					<tr>
						<td colspan="2" class="content title right">应收账款</td>
					</tr>
				</table>
				<div id="retrieveDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="retrieveTable">
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
								<td id="sumretrievemoney">￥0.00</td>
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
								<td><input type="text" loxiaType="number" name="retrievemoney" 
								    sumTextId="sumretrievemoney"
								    checkmaster="countAllAccountMoney"/></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				
				<div id="yfkDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="yfkTable">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>预付款</th>
								<th>描述</th>
								<th>金额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td id="sumyfk">￥0.00</td>
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
								<td><input type="text" loxiaType="number" name="yfkMoney" 
								    sumTextId="sumyfk"
								    checkmaster="countAllAccountMoney"/></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				
				<div id="bidMoneyDiv" loxiaType="edittable" >
					<table operation="add,delete" append="1" width="100%" id="bidMoneyTable">
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
								<td id="sumbadmoney">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"/></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="number" name="badmoney"
								    sumTextId="sumbadmoney"
								    checkmaster="countAllAccountMoney"/></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<div id="saveMoneyDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="saveMoneyTable">
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
								<td id="sumsavemoney">￥0.00</td>
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
								<td><input type="text" loxiaType="input" name="savemoney" 
								    sumTextId="sumsavemoney"
								    checkmaster="countAllAccountMoney"
								/></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<div id="fixAccountDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="fixAccountTable">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>固定资产</th>
								<th>描述</th>
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
								<td id="sumfixasset">￥0.00</td>
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
								<td><input type="text" loxiaType="input" name="fixAccountmoney" 
								    sumTextId="sumfixasset"
								    checkmaster="countAllAccountMoney"
								/></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				
				<table class="col3" cellpadding="0" cellspacing="0"
						style="width: 100%;">
						<tr>
						   <td colspan="2" class="content title right">资金合计</td>
					   </tr>
						<tr>
							<td class="label">总流动资产：</td>
							<td class="content right" id="flowMoney">￥0.00</td>
						</tr>
						<tr>
							<td class="label bottom bottomleft">总资产：</td>
							<td class="content bottomright bottom right" id="allasset">￥0.00</td>
						</tr>
					</table>
				<br/>
				
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="2" class="content title right">申请人个性印象评估</td>
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
				</table> <br />
				<div class="divBgColor">主要风险</div>
				<div class="content_middle">
					<table class="col3">
						<tr>
							<td>
							   <textarea class="cleditor" rows="4"></textarea>
							</td>
						</tr>
					</table>
				</div>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
				</div>
			</td>
			<td style="width: 50%" valign="top">
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">流动负债</td>  
					</tr>
				</table>
				<div id="flowdebtDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="flowdebtTable">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>应付账款</th>
								<th>原始金额</th>
								<th>分期付款金额</th>
								<th>期数</th>
								<th>余额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td id="sumflowdebt">￥0.00</td>
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
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="flowdebtmoney" 
									 sumTextId="sumflowdebt"
								     checkmaster="countAllDebt"
								/></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">金额负债</td>  
					</tr>
				</table>
				<div id="moneydebtDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="moneydebtTable">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>债权人</th>
								<th>原始金额</th>
								<th>分期付款金额</th>
								<th>期数</th>
								<th>余额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td id="summoneydebt">￥0.00</td>
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
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="moneydebtmoney"
								     sumTextId="summoneydebt"
								     checkmaster="computeCommon"
								 /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">长期负债</td>  
					</tr>
				</table>
				<div id="longdebtDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="longdebtTable">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>债权人</th>
								<th>原始金额</th>
								<th>分期付款金额</th>
								<th>期数</th>
								<th>余额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>合计</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td id="sumlongdebt">￥0.00</td>
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
								<td><input type="text" loxiaType="input" name="remark"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="longdebtmoney" 
								     sumTextId="sumlongdebt"
								     checkmaster="countAllDebt"
								/></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<table class="col3" cellpadding="0" cellspacing="0">
					<tr>
						<td class="content title right">家庭现金流</td>  
					</tr>
				</table>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="homeAccountTable">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>选择是收入还是支出</th>
								<th>家庭资产</th>
								<th>金额值</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>收入合计</td>
								<td>-</td>
								<td>-</td>
								<td>￥0.00</td>
							</tr>
							<tr>
								<td>支出合计</td>
								<td>-</td>
								<td>-</td>
								<td>￥0.00</td>
							</tr>
							<tr>
								<td>家庭剩余</td>
								<td>-</td>
								<td>-</td>
								<td>￥0.00</td>
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
								<td><input type="text" loxiaType="input" name="ctype"
									value="" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value=""
									sumTextId="homeAccount"
								    checkmaster="computeCommon"
									 /></td>
							</tr>
						</tbody>
					</table>
				</div>
                <br/>
                
                <table class="col3" cellpadding="0" cellspacing="0"
						style="width: 100%;">
						<tr>
						   <td colspan="2" class="content title right">负债权益合计</td>
					   </tr>
						<tr>
							<td class="label">总负债：</td>
							<td class="content right" id="allDebt">￥0.00</td>
						</tr>
						<tr>
							<td class="label">权益(资产-负债)：</td>
							<td class="content right" id="allqy">￥0.00</td>
						</tr>
						<tr>
							<td class="label bottom bottomleft">总负责+权益：</td>
							<td class="content bottomright bottom right" id="debtAndqy">￥0.00</td>
						</tr>
					</table>
				<br/>

				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
				</div>
			</td>
		</tr>
	</Table>
</body>
</html>
