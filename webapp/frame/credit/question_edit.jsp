<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/credit/question_edit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
    <div class="divBgColor">题目编辑</div>
	<form id="qryfrm">
		<table class="col3">
		    <input type="hidden" name="id" value="${question.id }" />
			<tr>
				<td class="label">题干：</td>
				<td class="content"><input mandatory="true" loxiaType="input" value="${question.questionInfo }"
					name="questionInfo" trim="true" /><label class="del_mandatory">&nbsp;*</label></td>
				<td class="label">是否有效：</td>
				<td class="content"><bizoption:bizoption name="ifValid" mandatory="true" selected="${question.ifValid }"
						biztypekey="1001" /><label class="del_mandatory">&nbsp;*</label></td>
			</tr>
			<tr>
				<!-- 题目分类-->
				<td class="label">题目分类：</td>
				<td width="150"><bizoption:bizoption name="businessType" mandatory="true"
						biztypekey="1169" selected="${question.businessType }" /><label class="del_mandatory">&nbsp;*</label></td>

				<!-- 题目类型-->
				<td class="label">题目类型：</td>
				<td width="150"><bizoption:bizoption name="questionType" mandatory="true"
						biztypekey="1170" selected="${question.questionType }"/><label class="del_mandatory">&nbsp;*</label></td>
			</tr>
			<!--  
			<tr>
				<td class="label">默认分值：</td>
				<td class="content"><input loxiaType="number" mandatory="true" value="${question.defaultValue }"
					name="defaultValue" trim="true" /><label class="del_mandatory">&nbsp;*</label></td>
			</tr>
			-->
		</table>
        <br/>
		<div id="questionDiv" loxiaType="edittable">
			<table operation="add,delete" append="1" width="100%" id="">
				<thead>
					<tr>
						<th><input type="checkbox" /></th>
						<th>答案</th>
						<th>分值</th>
						<th>是否有效</th>
					</tr>
				</thead>
				<tbody id="answerBody">
				   <c:forEach items="${question.creditAnswerlist}" var="dis" varStatus="loop">
						<tr>
							<td><input type="checkbox" /></td>
							<td><input type="text" loxiaType="input" name="answerInfo" mandatory="true" value="${dis.answerInfo }" /></td>
							<td><input type="text" loxiaType="number" name="defaultValueA" mandatory="true" value="${dis.defaultValue }"/></td>
							<td><bizoption:bizoption name="ifValidA" biztypekey="1001" mandatory="true" selected="${dis.ifValid }"/></td>
						</tr>
					</c:forEach>
				</tbody>
				<tbody>
					<tr>
						<td><input type="checkbox" /></td>
						<td><input type="text" loxiaType="input" name="answerInfo" mandatory="true" /></td>
						<td><input type="text" loxiaType="number" name="defaultValueA" mandatory="true"/></td>
						<td><bizoption:bizoption name="ifValidA" biztypekey="1001" mandatory="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="save">保存</button>
			<button type="button" loxiaType="button" class="confirm"
				id="backoff">返回</button>
				
		</div>
	</form>
</body>
</html>
