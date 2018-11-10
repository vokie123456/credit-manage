<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>扣款顺序管理</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/sortEdit.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="sorteditForm" method="post">
		<table class="textalignCenter tabcustom"  style="width:50%;min-width:300px;"  cellpadding="0" cellspacing="0">
		<thead>
			<tr  class="tabcustomTr">
				<th>扣款项目</th>
				<th class="tabBorderRight">排序</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="systemDictionary" items="${systemDictionary}"
				varStatus="status">
				<tr>
					<td >
					<input loxiaType="input" type="hidden" name="costCode<c:out value='${status.index}'/>"
						id="costCode<c:out value='${status.index}'/>" readonly="readonly"
						value="${systemDictionary.subtypeCode}" />
					<input loxiaType="input"
						value="${systemDictionary.subtypeName }" readonly="readonly"></td>
					<td class="tabBorderRight"><input max="9999999999999.99" loxiaType="number"  id="costSort<c:out value='${status.index}'/> "
						onkeyup="this.value=this.value.replace(/\D/g,'')"
						onafterpaste="this.value=this.value.replace(/\D/g,'')"
						<c:if test="${empty systemDictionary.costSort}">value='${systemDictionary.sortNo }'</c:if>
						<c:if test="${not empty  systemDictionary.costSort}">value='${systemDictionary.costSort }'</c:if>
						name="costSort<c:out value='${status.index}'/>"></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
			<div class="tabbuttonlist buttonDivWidth" >
		<input name="sysSize" loxiaType="input" type="hidden"
					id="sysSize" value="${systemDictionarySize}"> 
					<button loxiaType="button" class="confirm"
						id="save">保存</button>
						</div>
	</form>
</body>
</html>