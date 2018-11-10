<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 申请贷款新增页面   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>负债信息</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/asset_detail.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">资产信息</div>
	<div id="editTabPersonDebtLoan" loxiaType="edittable">
		<table append="1" width="100%" style="text-align: center;">
			<thead>
				<tr>
					<th>资产类型</th>
					<th>购买时间</th>
					<th>购买金额(万元)</th>
					<th>贷款额(万元)</th>
					<th>贷款余额(万元)</th>
					<th>经办人</th>
					<th>更新时间</th>
					<th>编辑</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${assetBasicList}" var="assetBasic"
					varStatus="loop">
					<tr>
						<td><bizoptionname:showname biztypekey="1097"
								value="${assetBasic.assetType }" /></td>
						<td><fmt:formatDate value="${assetBasic.buyDate }"
									pattern="yyyy-MM-dd"></fmt:formatDate></td>
						<td>${assetBasic.buyMoney }</td>
						<td>${assetBasic.loanMoney }</td>
						<td>${assetBasic.loanBalance }</td>
						<td>${assetBasic.clientName }</td>
						<td>${assetBasic.submitTime }</td>
						<td><a
							onclick="toDetail(${assetBasic.clientId },${assetBasic.assetId });return false;"
							href="#">查看</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<tbody></tbody>
		</table>
	</div>
	<input id="clientId" value="${clientId }" type="hidden" />
	<div id="asset-dialog"
		style="margin-top: 10px; border: 1px solid #eeeeee;"></div>
</body>
</html>
