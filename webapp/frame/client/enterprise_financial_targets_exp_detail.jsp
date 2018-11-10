<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>企业主要财务指标</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/enterprise_financial_targets_exp.js'/>"></script>
<style>
.divSty {
	text-align: center;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">企业主要财务指标报表：</div>
	<div class="textalignCenter">
		<input type="hidden" id="clientId" name="clientId"
			value="${clientId }" />
		<table width="100%" class="textalignCenter tabcustom"  cellpadding="0" cellspacing="0">
			<tr class="tabcustomTr">
				<th>序号</th>
				<th>报表年份</th>
				<th>录入人员</th>
				<th>录入时间</th>
				<th colspan="2" class="tabBorderRight">操作</th>
			</tr>
			<c:forEach items="${targetList }" var="item" varStatus="loop">
				<tr>
					<td>${loop.index+1 }</td>
					<td>${item.reportYear }</td>
					<td>${item.userName }</td>
					<td><fmt:formatDate value="${item.submitTime }"
							pattern="yyyy-MM-dd" /></td>
					<td class="tabBorderRight"><label id="loadLink"
						class="fileList"
						onclick="detail(${item.reportYear})">详情</label></td>
					<!--  
					<td><label id="loadLink"
						style="color: blue; text-decoration: underline;"
						onclick="del(${item.reportYear},${item.clientId })">删除 </label></td>
					-->
				</tr>
			</c:forEach>
		</table>
	</div>
	<div id="loadOther"></div>
</body>