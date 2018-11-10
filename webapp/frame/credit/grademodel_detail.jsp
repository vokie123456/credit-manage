<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/credit/grademodel_edit.js'/>"></script>

<style type="text/css">
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
    <div class="divBgColor">评级模板</div>
    	<table class="textalignCenter tabcustom0" cellpadding="0"
		           cellspacing="0" width="100%" id="">
				<thead>
					<tr class="custr custrBag">
						<th>最小值（包含）</th>
						<th>最大值（包含）</th>
						<th class="tabBorderRight0">评级</th>
					</tr>
				</thead>
				<tbody id="answerBody">
				   <c:forEach items="${creditGradeModels}" var="dis" varStatus="loop">
						<tr class="custr">
							<td>${dis.minNum }</td>
							<td>${dis.maxNum }</td>
							<td class="tabBorderRight0">${dis.gradeName }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	<%-- <form id="qryfrm">    
		<c:if test="${!empty examId}">
	<input type="hidden"  name="saveexamId"  id="saveexamId"  value="${examId }"/>  
	</c:if>       
		<div id="gradeDiv" loxiaType="edittable">
			<table operation="add,delete" append="1" width="100%" id="">
				<thead>
					<tr>
						<th><input type="checkbox"  name="selectCostAll" id="selectCostAll"/></th>
						<th>最小分值</th>
						<th>最大分值</th>
						<th>评级</th>
					</tr>
				</thead>
				<tbody id="gradeBody">
				   <c:forEach items="${creditGradeModels}" var="dis" varStatus="loop">
						<tr>
							<td><input type="checkbox"   id="selectCost"
						name="selectCost"/></td>
							<td><input type="text" loxiaType="input" name="minNum" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" value="${dis.minNum }" /></td>
							<td><input type="text" loxiaType="input" name="maxNum"  onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" value="${dis.maxNum }"/></td>
							<td><input type="text" loxiaType="input" name="gradeName"  value="${dis.gradeName }"/></td>
						</tr>
					</c:forEach>          
				</tbody>
				<tbody>
					<tr>
						<td><input type="checkbox"  id="selectCost"
						name="selectCost"/></td>
						<td><input type="text" loxiaType="input" name="minNum"   onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')"  mandatory="true" /></td>
						<td><input type="text" loxiaType="input" name="maxNum"   onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')"  mandatory="true"/></td>
						<td><input type="text" loxiaType="input" name="gradeName" mandatory="true"/></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="save">保存</button>
		</div>
	</form> --%>
</body>
</html>
