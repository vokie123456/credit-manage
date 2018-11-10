<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
<form>

	<div class="divBgColor">公司账套-放款来源份额</div>
	<table class="textalignCenter tabcustom"  cellpadding="0" cellspacing="0" width="100%">
	<tr class="tabcustomTr">
		<th class="width30">费用名称</th>
		<th class="width30">账套名称</th>
		<th class="tabBorderRight width30">账套占额(万元)</th>
        </tr>
		<c:forEach var="lel" items="${lelist}" varStatus="loop">
			<tr>
				<c:if test="${loop.count ==1 }">   
			       <td rowspan="${count }">
				           本金
				   </td>
			    </c:if>
				<td >${lel.accountName }</td>
				<td class="tabBorderRight">${lel.lendMoney }</td>
			</tr>

		</c:forEach>
	</table>
    <br />
   
	<div class="divBgColor">公司账套-还款分配占比</div>

	<table  class="textalignCenter tabcustom" cellpadding="0" cellspacing="0" width="100%">
	<tr class="tabcustomTr">
		<th class="width30">费用名称</th>
		<th class="width30">账套名称</th>
		<th class="tabBorderRight width30">账套占比%</th>
</tr>
		<c:forEach var="vo" items="${volist}" varStatus="loop">
			<tr>
			    
			      <!-- 根据条件，每个不同的费用项名称，要合并组 -->
			    <c:if test="${loop.count ==1 }">
			        <c:set var="tempCode" value="${vo.costCode }"></c:set>
			        <c:set var="tempLa" value="${loop.index }"></c:set>
			    </c:if>
			    
			    <c:set var="tempEve" value="${loop.index }"></c:set>
			    
			    <c:if test="${tempCode != vo.costCode }">
			        <c:set var="tempCode" value="${vo.costCode }"></c:set>
			        <c:set var="tempLa" value="${loop.index }"></c:set>
			    </c:if>
			    
			    <c:if test="${tempLa == tempEve }">
			       <td rowspan="${count }">
				          <bizoptionname:showname biztypekey="1090" value="${vo.costCode }" />
				   </td>
			    </c:if>

				<td >${vo.accountName }</td>
				<td  class="tabBorderRight">${vo.ratio }</td>
			</tr>

		</c:forEach>
	</table>
	
	 <!-- 随款扣费 模块 -->
	    <br />
		<div class="divBgColor">
			随款扣费
		</div>
		
		<table class="textalignCenter tabcustom" cellpadding="0" cellspacing="0" width="100%"
			id="itemTable">
			<tr class="tabcustomTr">
			<th class="width30">费用名称</th>
			<th class="width30">账套名称</th>
			<th class="tabBorderRight width30">金额</th>
			</tr>
			<c:forEach var="vo" items="${itlist}" varStatus="loop">
			<tr>
                <c:if test="${loop.count ==1 }">
			        <c:set var="tempCode" value="${vo.costCode }"></c:set>
			        <c:set var="tempLa" value="${loop.index }"></c:set>
			    </c:if>
			    
			    <c:set var="tempEve" value="${loop.index }"></c:set>
			    
			    <c:if test="${tempCode != vo.costCode }">
			        <c:set var="tempCode" value="${vo.costCode }"></c:set>
			        <c:set var="tempLa" value="${loop.index }"></c:set>
			    </c:if>
			    
			    <c:if test="${tempLa == tempEve }">
			       <td rowspan="${count }">
				          <bizoptionname:showname biztypekey="1090" value="${vo.costCode }" />
				   </td>
			    </c:if>
				<td >${vo.accountName }</td>
				<td class="tabBorderRight">${vo.deductMoney }</td>
			</tr>

		</c:forEach>
			
	    </table>
		
	</div>

</form>
</body>
</html>
