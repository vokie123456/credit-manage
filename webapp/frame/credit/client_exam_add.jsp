<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/credit/client_exam_add.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div>
	    <!-- 问卷名称 -->
		<div class="divBgColor">
			问卷题目&nbsp;>>&nbsp;${vo.title }
		</div>
		<form id="examAddForm" method="post">
			<table class="col3" cellpadding="5px;">
			
			<input type="hidden" name="id" value="${vo.id }" id="paperId"/>
			<input type="hidden" id="questionNum" value="${num }" />
			<!-- 问卷的每道题目 -->
			<c:forEach items="${creditExamQuestionList}" var="gl" varStatus="loop">
			
			    <input type="hidden" id="id${loop.index }" value="${gl.id }" />
			    <input type="hidden" id="type${loop.index }" value="${gl.questionType }" />
			    <thead>
			    <!-- 题目描述  -->
			    <tr>
					<td><font class="contentfont contentBold fontSize14">${loop.count }. ${gl.questionInfo }</font></td>
				</tr>
				</thead>
				<tbody id="answerBody${loop.index }" class="contentfont fontSize13">
				<!-- 题目的答案以及对应 的分数 -->
				<c:forEach items="${gl.creditAnswerVoList}" var="al" varStatus="lop">
				   <tr>
				    <td>
				    <!-- 单选题 -->
				    <c:if test="${gl.questionType == 117012 }">
				       &nbsp;&nbsp;&nbsp;<input type="radio" id="${loop.index }${lop.index}" name="answer${loop.index }" value="${al.id }" />${al.answerInfo }
				       <input type="hidden" id="defaultValue${loop.index }${lop.index}" value="${al.defaultValue }" />
				    </c:if> 
				    
				     <!-- 多选题 -->
				    <c:if test="${gl.questionType == 117013 }">
				       &nbsp;&nbsp;&nbsp;<input type="checkbox" id="${loop.index }${lop.index}" name="answer${loop.index }${lop.index}" value="${al.id }" />${al.answerInfo }
				       <input type="hidden" id="defaultValue${loop.index }${lop.index}" value="${al.defaultValue }" />
				    </c:if>        
				    </td>
				   </tr>
				</c:forEach>
			    </tbody>
			</c:forEach>
				
			</table>
            <c:if test="${flag == 1 }">
			<div class="buttonlist buttonDivWidth" id="carAssessBut">
				<button id="saveExam" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.edit.save" bundle="${lang}" />
				</button>
			</div>
			</c:if>
		</form>
	</div>
</body>
