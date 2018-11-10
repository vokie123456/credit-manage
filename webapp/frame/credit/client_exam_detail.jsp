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
		<div class="divBgColor" style="text-align:center;">
			${vo.title }
		</div>

		<form id="examAddForm" method="post">
			<table class="col3" cellpadding="5px;">
			
			<input type="hidden" name="id" value="${vo.id }" id="paperId"/>
			<input type="hidden" id="questionNum" value="num" />
			<!-- 问卷的每道题目 -->
			<c:forEach items="${creditExamQuestionList}" var="gl" varStatus="loop">
			
			    <input type="hidden" id="id${loop.index }" value="${gl.id }" />
			    <input type="hidden" id="type${loop.index }" value="${gl.questionType }" />
			    <thead>
			    <!-- 题目描述  -->
			    <tr>
					<td><h3>${loop.count }. ${gl.questionInfo }</h3></td>
				</tr>
				</thead>
				<tbody id="answerBody${loop.index }">
				<!-- 题目的答案以及对应 的分数 -->
				<c:forEach items="${gl.creditAnswerVoList}" var="al" varStatus="lop">
				   <tr>
				    <td>
				    
				    <!-- 单选题 -->
				    <c:if test="${gl.questionType == 117012 }">
				   
									<input type="radio" id="${loop.index }${lop.index}"
										name="answer${loop.index }" value="${al.id }"
										<c:if test="${al.isChoosed == 1 }">checked="true"</c:if> />${al.answerInfo }
				       <input type="hidden" id="defaultValue${loop.index }${lop.index}" value="${al.defaultValue }" />
				    </c:if> 
				    
				     <!-- 多选题 -->
				    <c:if test="${gl.questionType == 117013 }">
					  <input type="checkbox" id="${loop.index }${lop.index}"
										name="answer${loop.index }${lop.index}" value="${al.id }"
										<c:if test="${al.isChoosed == 1 }">checked="true"</c:if> />${al.answerInfo }
				       <input type="hidden" id="defaultValue${loop.index }${lop.index}" value="${al.defaultValue }" />
				    </c:if>        
				    </td>
				   </tr>
				</c:forEach>
			    </tbody>
			</c:forEach>
				
			</table>
		</form>
	</div>
</body>
