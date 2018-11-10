<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/bizoptionname.tld" prefix="bizoptionname"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<table class="textalignCenter tabcustom0 " cellpadding="0"
		cellspacing="0">
	<tr class="custr custrBag">
		<th width="80">审核人</th>     
		<th width="80">审核结果</th>
		<th width="160">提交时间</th>
		<th>审核备注</th>
	</tr>
	<c:forEach items="${taslListVos }" var="taslListVo" varStatus="i">
		<tr id="${taslListVo.ifOver }" class="custr">  
			<td align="center">${taslListVo.userName }</td>              
			<td align="center"><bizoptionname:showname biztypekey="1163"
					value="${taslListVo.ifPass }"></bizoptionname:showname></td>
			<td><fmt:formatDate value="${taslListVo.submitTime }"
					type="both" />                         
			<c:choose>
				<c:when test="${taslListVo.submitTime == null }">      
					<td>${ucx:unCleanXSS(taslListVo.opinionDetail) }</td>
					<td style="width:100px;" id="${taslListVo.taskId }" class="taskDel tabBorderRight0" align="center"  ><input
						type="button"
						class="confirm ui-button ui-widget ui-state-default ui-corner-all"    
						value="删除" loxiaType="button" /></td>
				</c:when>
				<c:otherwise>
				<td colspan="2" class="tabBorderRight0">${ucx:unCleanXSS(taslListVo.opinionDetail) }</td>
				</c:otherwise>
			</c:choose>
		</tr>
	</c:forEach>
</table>