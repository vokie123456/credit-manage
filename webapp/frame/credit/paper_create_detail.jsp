<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript" src="<c:url value='/scripts/frame/credit/paper_add_detail.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<table class="tabpaper" cellpadding="0" cellspacing="0" width="50%">
		<thead>
			<tr class="custr custrBag">
				<th class="textalign" width="4%">
					<input type="checkbox" id="checkAll"/>
				</th>
				<th class="textalign" width="7%">题目顺序</th>
				<th class="textalign" width="45%">题干</th>
				<th class="textalign">题目类型</th>
				<th class="textalign">题目分类</th>
				<th class="tabBorderRight0 textalign" width="15%">创建时间</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="question" items="${qList}" varStatus="loop">
			<tr class="custr">
				<td class="widthPx60 textalign">
					<input type="checkbox" id="${question.id}" name="examQuestionVos[${loop.index}].questionId" value="${question.id}" onclick="selectAll(this);" 
						<c:if test="${question.flag==true}">checked="checked"
			    		</c:if>
			    	>
				</td>
				<td class="textalign">
					<input loxiaType="number" id="${question.id}Sort" style="width: 40px;"
						<c:if test="${!empty question.sort}">
							value="${question.sort}"
						</c:if>
						<c:if test="${empty question.sort}">
							value="99"
						</c:if>
					/>
				</td>
				<td class="textalignLeft">
					<table id="table${question.id}" class="textalignLeft paperstable" cellpadding="0" cellspacing="0" >
						<tr>
							<td colspan="2" class="tabBorderRight0 textalignLeft paddingwidthLeft10" style="border-bottom:0px;">
								<font class="contentBold contentfont">${question.questionInfo}</font>
							</td>
						</tr>
						<tbody>
							<c:forEach items="${qaMap}" var="entry">
								<c:if test="${entry.key==question.id}">
									<c:forEach var="answer" items="${entry.value}">
										<tr>
											<td width="80%" style="border-bottom:0px;border-top: 1px solid #cccccc;" class="paddingwidthLeft10">
									    		<input type="checkbox" id="${question.id}_${answer.id}" name="answerId" value="${answer.id}" onclick="selectOne(this);"
												<c:if test="${answer.flag==true}">
									    			checked="checked"
									    		</c:if>
												>${answer.answerInfo}
												<input type="hidden" name="questionId" value="${question.id}"/>
											</td>
											<td width="20%" align="center" style="border-bottom:0px;border-right: 0px;border-top: 1px solid #cccccc;">
												<input loxiaType="number" id="${answer.id}_value" name="answerValue" value="${answer.defaultValue}" style="width: 40px;"/>分
											</td>
										</tr>
									</c:forEach>
								</c:if> 
							</c:forEach>
						</tbody>
					</table>
				</td>
				<td class="textalign">${question.questionTypeStr}</td>
				<td class="textalign">${question.businessTypeStr}</td>
				<td class="tabBorderRight0 textalign">
					<fmt:formatDate value="${question.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>