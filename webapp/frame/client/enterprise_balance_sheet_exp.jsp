<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>企业客户基本资料--资产负债</title>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/enterprise_balance_sheet_exp.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">资产负债报表：</div>  
	<div>
		<input type="hidden" id="clientId" name="clientId"
			value="${clientId }" />
		<table class="textalignCenter tabcustom" width="100%"  cellpadding="0" cellspacing="0">
			<tr class="tabcustomTr">
				<th>序号</th>
				<th>报表年月</th>
				<th>录入人员</th>
				<th>录入时间</th>
				<th colspan="2">操作</th>
			</tr>
			<c:forEach items="${balanceSheetList }" var="item" varStatus="loop">
				<tr>
					<td>${loop.index+1 }</td>
					<td>${item.reportYear }-${item.reprotMonth }</td>
					<td>${item.userName }</td>
					<td><fmt:formatDate value="${item.submitTime }"
							pattern="yyyy-MM-dd" /></td>
					<td><label id="loadLink"
						class="fileList"
						onclick="edit(${item.reportYear},${item.reprotMonth})">编辑</label></td>
					<td><label id="loadLink"
						class="fileList"
						onclick="del(${item.reportYear},${item.reprotMonth})">删除</label></td>
				</tr>
			</c:forEach>
		</table>
		<div class="tabbuttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="add">
				添加报表</button>
		</div>
	</div>
	<div id="loadOther"></div>
</body>