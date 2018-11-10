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
	src="<c:url value='/scripts/frame/loanafter/preservation/litigation_list_info.js'/>"></script>
<title>法律诉讼列表（法律诉讼信息）</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<table class="textalignCenter tabcustom" cellpadding="0"
		cellspacing="0" width="100%">
		<tr class="tabcustomTr">
			<th>诉讼流水号</th>
			<th>案件名称</th>
			<th>诉讼标的总额(元)</th>
			<th>终结日期</th>
			<th>审核人</th>
			<th>审核时间</th>
			<th class="tabBorderRight">操作</th>
		</tr>
		<c:forEach items="${legalList}" var="legalList" varStatus="loop">
			<tr>
				<td>${legalList.litigationSerialNo }</td>
				<td>${legalList.caseName }</td>
				<td>${legalList.litigationMoney }</td>
				<td><fmt:formatDate value='${legalList.endTime }'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
				<td>${legalList.lpcheckName }</td>
				<td><fmt:formatDate value='${legalList.checkTime }'
									pattern='yyyy-MM-dd'  ></fmt:formatDate></td>
				<td  class="tabBorderRight">	<c:if test="${flag==true }"><a href="javascript:addDetail(${legalList.id},'edit')">编辑</a></c:if>
					<a href="javascript:showDetail(${legalList.id},'info')">查看</a>
				</td>
			</tr>
		</c:forEach>
			<tr style="display: none">
				<td><input type="text" name="projectId" id="projectId"
					value="${projectId }" /> <%-- <input type="text"
					name="contractId" id="contractId" value="${contractId }" /> --%></td>
			</tr>
	</table>
	<div class="tabbuttonlist buttonDivWidth"><c:if test="${flag==true }">
		<button type="button" loxiaType="button" class="confirm" title="新增"
			id="add_litigation">新增</button></c:if>
		<button type="button" loxiaType="button" class="confirm" title="返回"
			id="back_up">返回</button>
	</div>
</body>
</html>