
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
</head>

<table class="textalignCenter tabcustom tabBorderTop" cellpadding="0" cellspacing="0" width="100%" >
   <c:if test="${flag == '1'}">
   <c:forEach var="vo" items="${itlist}" varStatus="loop">
			 <tr  id="${loop.index + count}" >  
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].costCode" id="costCode${loop.index + count}" value="${vo.costCode}"/>
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].compCode" value="${compCode }" />
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].projectId" value="${projectId }" />
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].lendId" value="${lendApplyId }" />
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].compAccountInfoId" value="${vo.compAccountInfoId }" />
			    
			    <c:if test="${loop.count == 1 }">
			    <c:if test="${type == true }">
			       <td rowspan="${accCount }"  class="widthPx60"><input type="checkbox" name="selectCost" value="${loop.index + count}" /></td>
				  </c:if> 
				   <td rowspan="${accCount }" class="width150">
				   <c:if test="${type == true }"><bizselect:bizselect startSort="31" endSort="50" biztypekey="1090" name="costCode" checkmaster="setCostCode" isChoose="true" selected="${vo.costCode}"/></c:if>
				   <c:if test="${type == false }"><bizoptionname:showname biztypekey="1090" value="${vo.costCode}"></bizoptionname:showname></c:if></td>
			    </c:if>
			    
				<td class="width150">${vo.accountName }</td>
				<td class="tabBorderRight width150">
				<c:if test="${type == true }"><input loxiaType="number" decimal="2" name="compAccountDeductList[${loop.index + count}].deductMoney" value="${vo.deductMoney }"/></c:if>
				<c:if test="${type == false }">${vo.deductMoney }<input type="hidden" name="compAccountDeductList[${loop.index + count}].deductMoney" value="${vo.deductMoney }"/></c:if>
				</td>
			</tr>
	</c:forEach>
   </c:if>
   
   <c:if test="${flag == '0'}">
   <c:forEach var="vo" items="${itlist}" varStatus="loop">
			 
			 <tr id="${loop.index + count}">  
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].costCode" id="costCode${loop.index + count}" value=""/>
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].compCode" value="${compCode }" />
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].projectId" value="${projectId }" />
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].lendId" value="${lendApplyId }" />
			    <input type="hidden" name="compAccountDeductList[${loop.index + count}].compAccountInfoId" value="${vo.id }" />
			    
			    <c:if test="${loop.count == 1 }">
			       <td rowspan="${accCount }" class="widthPx60"><input type="checkbox" name="selectCost" value="${loop.index + count}" /></td>
				   <td rowspan="${accCount }" class="width150"><bizselect:bizselect startSort="31" endSort="50" biztypekey="1090" name="costCode" checkmaster="setCostCode" isChoose="true"/></td>
			    </c:if>
			    
				<td class="width150">${vo.accountName }</td>
				<td class="tabBorderRight width150"><input loxiaType="number" decimal="2" name="compAccountDeductList[${loop.index + count}].deductMoney" /></td>
			</tr>
	</c:forEach>
   </c:if>
	

</table>