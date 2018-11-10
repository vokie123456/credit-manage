<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/merchantAndPeasant/peasant_list.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
		<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">总体情况</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">地图</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">资产负债，家庭现金流</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">家畜或农产品加工贩运</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">贷审会</a></li>
		</ul>
	<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<div class="divBgColor">机构的价值观</div>
	<table class="col3" style="width: 100%">
		<tr>
			<td class="content">简单的产品：</td>
		</tr>
		<tr>
			<td class="content">村镇银行非常高兴和荣幸能够为当地的客户提供这项产品。该产品的设计旨在为客户提供最为优质的服务并具有以下特点：<br />
				-      程序简便 <br />-      要求简单 <br />-      从申请到放款的时间短，我们预计在5天以内
			</td>
		</tr>
		<tr>
			<td class="content">我们承诺为客户提供优质的服务并对所有客户给予最高级别的尊重。机构的目标是与我们的客户建立长期的关系，而非只是一次性的借贷关系。
			</td>
		</tr>
		<tr>
			<td class="content">需要什么样的信息</td>
		</tr>
		<tr>
			<td class="content">了作出是否发放贷款的决策我们需要搜集关于您生产经营和家庭的详细信息，我们将会询问关于您销售、采购、运营成本、家庭收入和支出的相关信息。该访谈将持续45分钟到1个小时，我们需要您的诚实与合作。
			</td>
		</tr>
		<tr>
			<td class="content">我们向您保证所有信息都将保密</td>
		</tr>
		<tr>
			<td class="content">您提供的信息我们是保密的，村镇银行不会向其他任何机构、个人或政府泄露您的信息。我们希望您能合作并提供准确的信息给我们。
			</td>
		</tr>
	</table>
	<br />
	<div class="divBgColor">热身性问题</div>
	<table class="col3">
		<tr>
			<td class="content">您什么时候开始从事现在的生产经营活动的？</td></tr><tr>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="content">在从事现在的生产经营活动前您是做什么的呢？</td></tr><tr>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="content">您当初为何转行从事现在这项生产经营活动？</td></tr><tr>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="content">当初开始现在的生产经营时您投入了多少资本（本钱）呢？</td></tr><tr>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="content">这笔钱是从哪里获得的呢？</td></tr><tr>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="content">您对未来5年生产经营的规划是什么呢？</td></tr><tr>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="content">目前经营的从业经验</td></tr><tr>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="content">在目前经营场所的时间</td></tr><tr>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="content">投资计划</td></tr><tr>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
	</table>
	<div id="gradeDiv" loxiaType="edittable">
		<table operation="add,delete" append="1" width="100%" id="">
			<thead>
				<tr>
					<th><input type="checkbox" name="selectCostAll"
						id="selectCostAll" /></th>
					<th>具体项目描述</th>
					<th>需要资金</th>
				</tr>
			</thead>
			<tbody id="gradeBody">

			</tbody>
			<tbody>
				<tr>
					<td><input type="checkbox" id="selectCost" name="selectCost" /></td>
					<td><input type="text" loxiaType="input" name="remark"
						value="" mandatory="true" /></td>
					<td><input type="text" loxiaType="input" name="money"
						onkeyup="this.value=this.value.replace(/\D/g,'')"
						onafterpaste="this.value=this.value.replace(/\D/g,'')"
						mandatory="true" /></td>
				</tr>
			</tbody>
		</table>
	</div>

	<div id="gradeDiv" loxiaType="edittable">
		<table operation="add,delete" append="1" width="100%" id="">
			<thead>
				<tr>
					<th><input type="checkbox" name="selectCostAll"
						id="selectCostAll" /></th>
					<th>其他的经济活动和收入</th>
					<th>金额</th>
				</tr>
			</thead>
			<tbody id="gradeBody">

			</tbody>
			<tbody>
				<tr>
					<td><input type="checkbox" id="selectCost" name="selectCost" /></td>
					<td><input type="text" loxiaType="input" name="remark"
						value="" mandatory="true" /></td>
					<td><input type="text" loxiaType="input" name="money"
						onkeyup="this.value=this.value.replace(/\D/g,'')"
						onafterpaste="this.value=this.value.replace(/\D/g,'')"
						mandatory="true" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<table class="col3">
		<tr>
			<td class="label">贷款拨付日期偏好</td>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
			<td class="label">还款日期的偏好</td>
			<td class="content"><input id="money" mandatory="true"
				name="money" loxiaType="input" trim="true" /></td>
		</tr>
	</table>
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
	</div>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>  
</body>