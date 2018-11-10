<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang"/>
<script type="text/javascript"
          src="<c:url value='/scripts/frame/dataimport/account/import_compAccountRatio_edit.js'/>"></script>
  
<style type="text/css">
</style>
<linkage:define/>
</head>

<body contextpath="<%=request.getContextPath()%>">
<form id="compAccountRatioForm" method="post">
    <input type="hidden" id="hiddenLd" value="${lendMoney }" />
    <input type="hidden" id="hiddenTid" value="${taskId }" />
    
    <input type="hidden" id="hiddenPid" value="${projectId }" />
    <input type="hidden" id="hiddenLad" name="lendApplyId" value="${lendApplyId }" />
    

    <div class="divBgColor">公司账套-放款来源份额</div>
    <table class="textalignCenter tabcustom" cellpadding="0" cellspacing="0" width="100%" id="accountLendTab">
    	<tr class="tabcustomTr">
		    <th>费用名称</th>
		    <th>账套名称</th>
		    <th class="tabBorderRight">账套占额(万元)</th>
		    </tr>
		    <c:forEach var="lel" items="${lelist}" varStatus="loop">
			<tr>  
			    <input type="hidden" name="compAccountLendList[${loop.index }].id" value="${lel.id }" />
			    <input type="hidden" name="compAccountLendList[${loop.index }].compCode" value="${lel.compCode }" />
			    <input type="hidden" name="compAccountLendList[${loop.index }].projectId" value="${lel.projectId }" />
			    <input type="hidden" name="compAccountLendList[${loop.index }].lendId" value="${lel.lendId }" />
			    <input type="hidden" name="compAccountLendList[${loop.index }].compAccountInfoId" value="${lel.compAccountInfoId }" />
			    
			    <c:if test="${loop.count ==1 }">
			       <td rowspan="${count }">
				           本金
				   </td>
			    </c:if>
				
				<td>${lel.accountName }</td>
					<td  class="tabBorderRight"><c:choose>
							<c:when test="${ifUsed ne 100111}">
								<input loxiaType="money" id="lendMoney${loop.index }"
									name="compAccountLendList[${loop.index }].lendMoney"
									value="${lel.lendMoney }" />
							</c:when>
							<c:otherwise>
				                  ${lel.lendMoney }
				                   <input type="hidden"
									id="lendMoney${loop.index }"
									name="compAccountLendList[${loop.index }].lendMoney"
									value="${lel.lendMoney }" />
							</c:otherwise>
							</c:choose></td>
				</tr>
			
			</c:forEach>
		</table>
    <br />
	<div class="divBgColor">公司账套-还款分配占比</div>
     
		<table  class="textalignCenter tabcustom" cellpadding="0" cellspacing="0" width="100%">
		<tr  class="tabcustomTr">
		    <th>费用名称</th>
		    <th>账套名称</th>
		    <th class="tabBorderRight">账套占比%</th>
		    </tr>
		    <c:forEach var="vo" items="${volist}" varStatus="loop">
			<tr>  
			    <input type="hidden" name="compAccountRatioList[${loop.index }].id" value="${vo.id }" />
			    <input type="hidden" name="compAccountRatioList[${loop.index }].costCode" value="${vo.costCode }" />
			    <input type="hidden" name="compAccountRatioList[${loop.index }].compCode" value="${vo.compCode }" />
			    <input type="hidden" name="compAccountRatioList[${loop.index }].projectId" value="${vo.projectId }" />
			    <input type="hidden" name="compAccountRatioList[${loop.index }].lendId" value="${vo.lendId }" />
			    <input type="hidden" name="compAccountRatioList[${loop.index }].compAccountInfoId" value="${vo.compAccountInfoId }" />
			    
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
			    
				<td>${vo.accountName }</td>
				<td class="tabBorderRight"><input loxiaType="number" decimal="2" name="compAccountRatioList[${loop.index }].ratio" value="${vo.ratio }" /></td>
			</tr>
			</c:forEach>
		</table>
	    
	    
	    <!-- 随款扣费 模块 -->
	    <br />
		<div class="divBgColor">
			随款扣费
			<c:if test="${ifUsed ne 100111 }">
			<button id="addCostItem" icons="ui-icon-stop" title="添加费用项"
				aria-disabled="false" role="button"
				class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only"
				type="button" showtext="false" style="width: 16px; height: 16px;">
				<span class="ui-button-icon-primary ui-icon ui-icon-plus"></span><span
					class="ui-button-text">添加费用项</span>
			</button>
			<button id="removeCostItem" icons="ui-icon-stop" title="删除费用项"
				aria-disabled="false" role="button"
				class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only"
				type="button" showtext="false" style="width: 16px; height: 16px;">
				<span class="ui-button-icon-primary ui-icon ui-icon-minus"></span><span
					class="ui-button-text">删除费用项</span>
			</button>
			</c:if>
		</div>
		
		
		<input type="hidden" value="${resultSize }" id="resultSize" />
		<input type="hidden" value="${count }" id="accountInfoCount" />
		<input type="hidden" value="${strCode }" id="strCode" />
		
		<table  class="textalignCenter tabcustom"  cellpadding="0" cellspacing="0" width="100%"
			id="itemTable">
			<tr class="tabcustomTr">
			<c:if test="${ifUsed ne 100111}">
			<th class="widthPx60"><input type="checkbox"  onchange="setCheckBox();" id="titleCheckBox"/></th>
			</c:if>
			<th class="width150">费用名称</th>
			<th class="width150">账套名称</th>
			<th  class="tabBorderRight width150">金额</th>
			</tr>
	    </table>
		
		<div id="itemTableDiv"></div>
		
		
		<div class="buttonlist buttonDivWidth">
	    <button type="button" loxiaType="button" class="confirm" id="btnSave">保存</button>
	</div>
</form>
</body>
</html>
