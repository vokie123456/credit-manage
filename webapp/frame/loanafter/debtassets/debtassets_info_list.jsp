<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/debtassets/debtassets_info_list.js'/>"></script>
<title>抵债信息列表</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<table class="textalignCenter tabcustom" cellpadding="0"
		cellspacing="0" width="100%">
		<tr class="tabcustomTr">
			<th>字段1</th>
			<th>2</th>
			<th>3</th>
			<th>4</th>
			<th>5</th>
			<th>6</th>
			<th class="tabBorderRight">操作</th>
		</tr>
		<c:forEach  begin="1" end="5">
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td  class="tabBorderRight">
					<a href="javascript:showDetail('2','109711')">编辑</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<div class="tabbuttonlist buttonDivWidth"><
		<button type="button" loxiaType="button" class="confirm" title="新增"
			id="add_litigation">新增</button>
			<button type="button" loxiaType="button" class="confirm" title="新增"
			id="add_litigation">引入</button>
		<button type="button" loxiaType="button" class="confirm" title="返回"
			id="back_up">返回</button>
	</div>
</body>
</html>