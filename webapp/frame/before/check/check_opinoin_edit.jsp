<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/meta.jsp"%>
<script type="text/javascript" src="<c:url value='/scripts/rich/js/jquery.cleditor.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/rich/js/charisma.js'/>"></script>
<fmt:setBundle basename="messages" var="lang" />
<div id="checkOpinoinList">

<c:forEach items="${colList }"  var="covo" varStatus="i">
<table class="col6">
			<tr>
				<td class="label"></td>
				<td class="content"></td>
			</tr>
<c:if test="${(i.index>1 and colList[i.index].uptypeCode!=colList[i.index-1].uptypeCode) || i.index eq 0}">
	<tr>
		<td class="content"  colspan="2"><div class="divBgColor">${covo.opinionTitleName}</div></td>
	</tr>
</c:if>
<!-- 编辑 -->
<c:if test="${(userInfo.userId==covo.userId && covo.checkType==checkType) || empty covo.checkId}">
	<tr>
		<td class="label"  >
		<input name="opinionId" type="hidden" value="${covo.opinionId}" />
		 <input name="taskId" type="hidden" value="${covo.taskId}" /> 
		 <input name="checkId" type="hidden" value="${covo.checkId}" /> 
		 <input type="hidden" name="opinionType"  value="${covo.opinionType }" /> 
		${covo.opinionTypeName} ：</td>
		<c:if test="${covo.sort <31}">
				<td class="content"  >
				<table>
								<tr>
									<td style="width: 200px;">
				<bizselect:bizselect name="opinionValue"   biztypekey="1001"  selected="${covo.opinionValue}"></bizselect:bizselect></td></tr>
							</table></td>
		</c:if>
		<c:if test="${covo.sort >= 31}">
				<td class="content" >
					<textarea rows="4"  style="width:100%"  class="cleditor"  name="opinionValue" >${ucx:unCleanXSS(covo.opinionValue) }</textarea>
				</td>
		</c:if>
	</tr>
	</c:if>
<!-- 	详情 -->
	<c:if test="${!(userInfo.userId==covo.userId &&covo.checkType==checkType) && not empty covo.checkId}">
	<tr>
		<td class="label"  >${covo.opinionTypeName} ：</td>
			<c:if test="${covo.sort <31}">
				<td class="content"  >
				<bizoptionname:showname biztypekey="1001"  value="${covo.opinionValue}" ></bizoptionname:showname>
				</td>
		</c:if>
		<c:if test="${covo.sort >= 31}">
					<td  style="font-size: 14px; width:80%;border: 1px solid #dcdcdc;padding-left:10px;" valign="top">${ucx:unCleanXSS(covo.opinionValue) }</td>
		</c:if>
		</tr>
	</c:if>
	</table>
	</c:forEach>
</div>