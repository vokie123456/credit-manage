<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷后检查详情列表   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>贷后检查详情列表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/examine/to_examine_list.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="examineListDiv">
		<div class="divBgColor">贷后检查</div>

		<input type="hidden" id="projectId" value="${projectId }" />
		<div id="listDiv">
			<table cellpadding="0" cellspacing="0" width="100%" class="textalignCenter tabcustom">
			<tr class="tabcustomTr">
				<th>检查人</th>
				<th>检查方式</th>
				<th>贷款状态</th>
				<th>检查状态</th>
				<th>检查日期</th>
				<th class="tabBorderRight">操作</th>
				</tr>
				<c:forEach items="${list}" var="examine" varStatus="loop">
					<tr>
						<td>${examine.userName }</td>
						<td><bizoptionname:showname biztypekey="1147"
								value="${examine.examineMethod }" /></td>
						<td><bizoptionname:showname biztypekey="1038"
								value="${examine.loanStatus }" /></td>
						<td><bizoptionname:showname biztypekey="1158"
								value="${examine.examineStatus }" /></td>
						<td><fmt:formatDate value="${examine.examineDoneDate }"
								pattern="yyyy-MM-dd" /></td>
								<td class="tabBorderRight"><label  class="fileList"
									onclick="detail(${examine.examineBasicId },${projectId })">详情 </label></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div id="loadDiv"></div>
	<div id="examineDetailOption"></div>
</body>
</html>
