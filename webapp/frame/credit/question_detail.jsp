<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/credit/question_detail.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
    <div class="divBgColor">题目详细</div>
	<form id="qryfrm">
		<table class="textalignCenter tabcustomPeo" cellpadding="0"
		                  cellspacing="0">
		    <input type="hidden" name="id" value="${question.id }" />
			<tr>
				<td class="label BgColor">题干：</td>
				<td class="content">${question.questionInfo }</td>
				<td class="label BgColor">是否有效：</td>
				<td class="content">
				<bizoptionname:showname biztypekey="1001" value="${question.ifValid }" />
				</td>
			</tr>
			<tr>
				<!-- 题目分类-->
				<td class="label BgColor">题目分类：</td>
				<td class="content">
				<bizoptionname:showname biztypekey="1169" value="${question.businessType }" />
				</td>

				<!-- 题目类型-->
				<td class="label BgColor">题目类型：</td>
				<td class="content">
				<bizoptionname:showname biztypekey="1170" value="${question.questionType }" />
				</td>
			</tr>
			<!--  
			<tr>
				<td class="label BgColor">默认分值：</td>
				<td class="content">${question.defaultValue }</td>
			</tr>
			-->
		</table>
            <br/>
			<table class="textalignCenter tabcustom0" cellpadding="0"
		           cellspacing="0" width="100%" id="">
				<thead>
					<tr class="custr custrBag">
						<th>答案</th>
						<th>分值</th>
						<th class="tabBorderRight0">是否有效</th>
					</tr>
				</thead>
				<tbody id="answerBody">
				   <c:forEach items="${question.creditAnswerlist}" var="dis" varStatus="loop">
						<tr class="custr">
							<td>${dis.answerInfo }</td>
							<td>${dis.defaultValue }</td>
							<td class="tabBorderRight0"><bizoptionname:showname biztypekey="1001" value="${dis.ifValid }" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		<div class="tabbuttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="backoff">返回</button>
		</div>
	</form>
</body>
</html>
