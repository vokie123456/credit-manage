<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html  manifest="/scripts/common/clear.appcache">
	<head>
	<%@include file="/common/meta.jsp"%>
		<meta charset="utf-8" />
		<title></title>
		<script type="text/javascript" src="<c:url value='/scripts/frame/outb/gu_bill_list.js?v=1.2'/>"></script>
		<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
		<style>
			.dai-table{border-top: 1px solid #000000; border-left: 1px solid #000000; font-size: 14px; margin-bottom: 20px;}
			.dai-table td{height: 40px; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-align: center;}
		</style>
	</head>
	<body contextpath="<%=request.getContextPath()%>">
		<h3>可结算账单</h3>
		<table id="kejiesuan" class="dai-table"  cellpadding="0" cellspacing="0" style="width: 800px;">
			<thead style="background: rgb(221, 228, 234);">
				<tr>
					<td><input type="checkbox" name="allChecked"  id="allChecked" onclick="DoCheck()" /></td>
					<td>账单编号</td>
					<td>结清时间</td>
					<td>实收本金</td>
					<td>实收利息</td>
					<td>实收罚息</td>
					<td>实收合计</td>
				</tr>
			</thead>
			<tbody>
				<!-- <tr>
					<td><input type="checkbox" /></td>
					<td>43432432</td>
					<td>2016-08-08 10:30:00</td>
					<td>6,000.00</td>
					<td>6,000.00</td>
					<td>6,000.00</td>
					<td>6,000.00</td>
				</tr> -->
			</tbody>	
		</table>
		
		
		<div>
			<button type="button" loxiaType="button" class="confirm" title="tip" id="calculationAmount">计算结算金额</button> 
			<button type="button" loxiaType="button" class="confirm" title="tip" id="settlement">结算</button> 
			<button type="button" loxiaType="button" class="confirm" title="tip" id="fanhui">返回</button> 
		</div>
		
		<style>
			.countDv{height: 30px; margin-top: 20px;}
			#gjsjs,#yfjs{display: inline-block; border: 1px solid #ccc; padding: 5px 20px; margin-right: 20px;}
		</style>
		<div class="countDv">
			固金所结算金额 ：<span id="gjsjs">0.00</span>
			以房结算金额 ：<span id="yfjs">0.00</span> 
		</div>
		
		<h3>已结算账单</h3>
		<table  id="yijiesuan" class="dai-table"  cellpadding="0" cellspacing="0" style="min-width: 1000px;">
			<thead style="background: rgb(221, 228, 234);">
				<tr>
					<td>账单编号</td>
					<td>结清时间</td>
					<td>实收本金</td>
					<td>实收利息</td>
					<td>实收罚息</td>
					<td>结算金额</td>
					<td>固金所结算</td>
					<td>以房结算</td>
					<td>结算时间</td>
					<td>结算人员</td>
				</tr>
			</thead>
			<tbody>
				<!-- <tr>
					<td>32233</td>
					<td>2016-08-08 10:30:00</td>
					<td>6,000.00</td>
					<td>6,000.00</td>
					<td>6,000.00</td>
					<td>6,000.00</td>
					<td>6,000.00</td>
					<td>6,000.00</td>
					<td>2016-08-08 10:30:00</td>
					<td>任丽</td> 
				</tr>-->
			</tbody>
		</table>
	</body>
</html>
