<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>公共界面</title>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>"
	style="background-color: #ffffff">
	<!--表格 -->
	<div class="divBgColor">详细界面的表格</div>
	<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
		<tr>
			<td class="label BgColor">字段名称0：</td>
			<td class="content">字段值</td> 
			<td class="label BgColor">字段名称1：</td>
			<td class="content">字段值</td>
			<td class="label BgColor">字段名称2：</td>
			<td class="content tabBorderRight">字段值</td>
		</tr>
		<tr>
			<td class="label BgColor">备注：</td>
			<td class="content tabBorderRight" colspan="5">字段值</td>
		</tr>
	</table>
	<br />
	<div class="divBgColor">横向表格样式</div>
	<table class="textalignCenter tabcustom0" cellpadding="0"
		cellspacing="0" width="100%">
		<tr class="custr custrBag">
			<th>催收人</th>
			<th>催收方式</th>
			<th>催收状态</th>
			<th>催收日期</th>
			<th class="tabBorderRight0">文件</th>
		</tr>
		<tr class="custr">
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td class="tabBorderRight0"><label class="fileList">管理</label></td>
		</tr>
	</table>
	<br />
	<div class="divBgColor">无线条表格样式</div>
	<table class="textalignCenter tabcustomPeoNoborder" cellpadding="0"
		cellspacing="0">
		<tr>
			<td class="label">input(钱)：</td>
			<td class="content"><input id="loanHopeMoney" value="100"
				loxiaType="money" trim="true" mandatory="true" /></td>
			<td class="label ">select（下拉框）：</td>
			<td class="content"><select id="loanProduct"
				name="productConfig.productId"
				class="ui-loxia-default ui-corner-all" /></td>
		</tr>
		<tr>
			<td class="label">input(日期)：</td>
			<td class="content"><input id="date" value="1990-09-09"
				type="input" loxiaType="date" trim="true" /></td>
			<td class="label ">input（普通）：</td>
			<td class="content"><input id="pt" type="input"
				loxiaType="input" trim="true"></td>
		</tr>
		<tr>
			<td class="label" valign="bottom">checkbox：</td>
			<td class="content content_td" colspan="3" valign="top">
				<checkBox:checkBox biztypekey="1059"	id="guaranteeTypeGroup" name="guaranteeTypeGroup" />
			</td>
		</tr>
		<tr>
			<td class="label" valign="bottom">checkbox2：</td>
			<td class="content content_td" colspan="3" valign="top">
			<input id="" name="" type="checkbox" value="0">信用
			<input id="" name="" type="checkbox"  value="1">保证
			</td>
		</tr>
	</table>
	<br />
	<div class="divBgColor">input数值的验证</div>
	<table class="textalignCenter tabcustomPeoNoborder" cellpadding="0"
		cellspacing="0" width="100%">
		<tr>
			<td class="label">input(数值的验证)：</td>
			<td class="content"><input loxiaType="number" decimal="0"
				value="10000" /></td>
			<td class="label "></td>
			<td class="content "></td>
		</tr>
		<tr>
			<td colspan="4" class="content"><label class="remarkColor"><small>备注：
						[小数点后0位，数值14位，如果要修改decimal="0"设置此属性] </small></label></td>
		</tr>
	</table>
	<br />
	<div class="divBgColor">普通表格样式</div>
	<table class="textalignCenter tabcustom" cellpadding="0"
		cellspacing="0" id="tabProductCost">
		<thead>
			<tr class="tabcustomTr">
				<td class="widthPx60"></td>
				<td class="content">标题1</td>
				<td class="content">标题2</td>
				<td class="content contentfont">标题3</td>
				<td class="content contentfont">标题4</td>
				<td class="content contentfont tabBorderRight"
					style="padding-left: 20px;">操作</td>
			</tr>
		</thead>
		<tbody id="pCostBody">
			<td class="widthPx60"><input type="checkbox" /></td>
			<td class="content"><input id="pt" type="input"
				loxiaType="input" trim="true"></td>
			<td class="content"><input id="date" type="input"
				loxiaType="date" trim="true" /></td>
			<td class="content"><input id="pt" type="input"
				loxiaType="input" trim="true"></td>
			<td class="content"><input type="text" loxiaType="number"
				decimal="2" trim="true" /></td>
			<td class="content contentfont tabBorderRight"><input id="pt"
				type="input" loxiaType="input" trim="true"></td>
			</tr>
		</tbody>
	</table>
	<br />
</body>
</html>