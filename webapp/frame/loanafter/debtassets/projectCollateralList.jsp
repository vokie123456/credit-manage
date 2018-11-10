<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript" src="<c:url value='/scripts/frame/loanafter/debtassets/projectCollateralList.js'/>"></script>
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">抵债资产管理-引入押品</div>
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm" id="importCollateral">批量引入</button>
		&nbsp&nbsp&nbsp&nbsp
		<button type="button" loxiaType="button" class="confirm" id="reback">返回</button>		
	</div>
	<table class="textalignCenter tabcustom" cellpadding="0" cellspacing="0" width="100%">
		<tr class="tabcustomTr">
			<th><input type="checkbox" id="checkAll"/></th>
			<th>项目编号</th>
			<th>合同名称</th>
			<th>押品类型</th>
			<th>它证号</th>
			<th>公证号</th>
			<th>评估总价(万元)</th>
			<th>评估日期</th>
			<th>评估机构</th>
			<th>购买总价(万元)</th>
			<th>购买日期</th>
			<th>录入人员</th>
			<th>操作</th>
    	</tr>
		<c:forEach var="vo" items="${list}" varStatus="loop">
			<tr>
				<td><input type="checkbox" id="${vo.collateralId}" value="${vo.collateralId}" name="ids"/></td>
				<td>${vo.projectCode}</td>
				<td>${vo.contractName}</td>
				<td>${vo.collateralTypeStr}</td>
				<td>${vo.itCardNo}</td>
				<td>${vo.notaryNo}</td>
				<td>${vo.assessTotalprice}</td>
				<td><fmt:formatDate value="${vo.assessTime}" pattern="yyyy-MM-dd"/></td>
				<td>${vo.assessName}</td>
				<td>${vo.buyMoney}</td>
				<td><fmt:formatDate value="${vo.buyDate}" pattern="yyyy-MM-dd" /></td>
				<td>${vo.inputName}</td>
				<td><a href='javascript:;' onclick="importCollateral('${vo.collateralId}')">引入</a></td>
			</tr>
		</c:forEach>
	</table>
	<input id="projectId" value="${projectId}" type="hidden" />
</body>
</html>