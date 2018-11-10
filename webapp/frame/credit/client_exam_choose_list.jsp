<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/credit/client_exam_choose_list.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<table class="textalignCenter tabcustom" cellpadding="0" cellspacing="0"
		width="100%">
		<tr class="tabcustomTr">
		<th>问卷类型</th>

		<th>问卷名称</th>
		<th>问卷总分</th>
		<th>创建时间</th>
		<!-- <th>操作员</th>  -->
		<th><fmt:message key="label.assessCar.edit.collateral.operate"
				bundle="${lang}" /></th>
		
	</tr>
		<c:forEach items="${celist}" var="gl" varStatus="loop">
			<tr>
				<td><bizoptionname:showname biztypekey="1168"
						value="${gl.examType }" /></td>
				<td>${gl.title }</td>
				<td>${gl.totalValue }</td>
				<td><fmt:formatDate value="${gl.createTime }" pattern="yyyy-MM-dd"/></td>
				<!--  
				<td>${gl.creator }</td>
				-->
				<td  class="tabBorderRight"><label id="gloadLink"
					style="color: blue; text-decoration: underline;"
					onclick="startExam(${gl.id})">开始
				</label></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
