<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%> 
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<table  style="width:100%">
<tr>
		<td  class="label"  ></td>
		<td class="content" ></td>
		<td  class="label"  ></td>
		<td class="content" ></td>
	</tr>
<c:forEach items="${colList }"  var="covo" varStatus="i">
<c:if test="${(i.index>1 and colList[i.index].uptypeCode!=colList[i.index-1].uptypeCode) || i.index eq 0}">
	<tr>
	<td class="content"  colspan="4"><div class="divBgColor">${covo.opinionTitleName}</div></td>
	</tr>
</c:if>
<!-- 	详情 -->
	<tr>
		<td class="label"  >${covo.opinionTypeName} ：</td>
			<c:if test="${covo.sort <31}">
				<td class="content"  >
				<bizoptionname:showname biztypekey="1001"  value="${covo.opinionValue}" ></bizoptionname:showname>
				</td>
		</c:if>
		<c:if test="${covo.sort >= 31}">
			<td  colspan="3" style="font-size: 14px; width:80%;border: 1px solid #dcdcdc;padding-left:10px;" valign="top">${ucx:unCleanXSS(covo.opinionValue) }</td>
		</c:if>
		</tr>
	</c:forEach>
</table>