<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>企业客户基本资料--资产负债</title>
<style>
.tabCenter {
	text-align: center;
}
</style>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/enterprise_balance_sheet_detail_exp.js'/>"></script>
<linkage:define />
</head>  
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">资产负债报表：</div>
	<div class="divSty">
		<input type="hidden" id="clientId" name="clientId"
			value="${clientId }" />
		<table  class="textalignCenter tabcustom"  width="100%" cellpadding="0" cellspacing="0">
			<tr class="tabcustomTr">
				<th>序号</th>
				<th>报表年月</th>
				<th>录入人员</th>
				<th>录入时间</th>
				<th class="tabBorderRight">操作</th>
			</tr>
			<c:forEach items="${balanceSheetList }" var="item" varStatus="loop">
				<tr>
					<td>${loop.index+1 }</td>
					<td>${item.reportYear }-${item.reprotMonth }</td>
					<td>${item.userName }</td>
					<td><fmt:formatDate value="${item.submitTime }"
							pattern="yyyy-MM-dd" /></td>
					<td class="tabBorderRight"><label id="loadLink"
						style="color: blue; text-decoration: underline;"
						onclick="detail(${item.reportYear},${item.reprotMonth})">详情</label></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div id="loadOther"></div>
</body>