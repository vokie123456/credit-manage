<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>法律诉讼查看</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/preservation/litigation_detail.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>" >   
<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">法律诉讼信息维护管理</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">风险代理机构</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">诉讼登记</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">诉讼执行登记</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">执行收回及费用登记</a></li>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
				<form id="save_litigation" name="save_litigation" >	
				<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
			<input type="hidden"  readonly="readonly" value="${legalProceeding.id }" name="id" id="id"/>   
			<c:if test="${legalProceeding.id ne null}">
		<input type="hidden"  readonly="readonly" value="${legalProceeding.createId }" name="createId" id="createId"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${legalProceeding.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${legalProceeding.compCode }" name="compCode" id="compCode"/><!--公司id  -->
		<input type="hidden"  readonly="readonly" value="${legalProceeding.projectId }" name="projectId" id="projectId"/><!--项目id  -->
		<input type="hidden"  readonly="readonly" value="${legalProceeding.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
		</c:if>       
		<tr>
			<td class="label BgColor">被起诉客户户名称：</td>
			<td class="content tabBorderRight" colspan="3">${legalProceeding.prosecutionClientName }</td>
		</tr>
		<tr>
			<td class="label BgColor">案件名称：</td>
			<td class="content">${legalProceeding. caseName}</td>
			<td class="label BgColor">诉讼流水号：</td>
			<td class="content tabBorderRight">${legalProceeding.litigationSerialNo}</td>
		</tr>
			<tr>
			<td class="label BgColor">重点案件进展情况：</td>
			<td class="content tabBorderRight" colspan="3">${legalProceeding.caseProgress}</td>
		</tr>
		<tr>
				<td class="label BgColor">被起诉原因：</td>
				<td class="content tabBorderRight" colspan="3">${legalProceeding.prosecutionReason}</td>
			</tr>
			<tr>
				<td class="label BgColor">诉讼类型：</td>
				<td class="content"><bizoptionname:showname biztypekey="1172" value="${legalProceeding.litigationType}" /></td>
				<td class="label BgColor">币种：</td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1103" value="${legalProceeding.currency}" /></td>
			</tr>
			<tr>    
				<td class="label BgColor">诉讼标的额(总额)：</td>
				<td class="content">${legalProceeding.litigationMoney}</td>
				<td class="label BgColor">其中本金：</td>
				<td class="content tabBorderRight">${legalProceeding.principal}</td>
			</tr>
	<%-- 		<tr>
				<td class="label BgColor">起诉机构：</td>
				<td class="content">${legalProceeding.prosecutionMechanism}</td>
				<td class="label BgColor">案件统计机构：</td>
				<td class="content tabBorderRight">${legalProceeding.caseStatisticalMechanism}</td>
			</tr> --%>
				<tr>
				<td class="label BgColor">代理方式：</td>
				<td class="content"><bizoptionname:showname biztypekey="1173" value="${legalProceeding.proxyMode}" /></td>  
				<td class="label BgColor">起诉时间：</td>
				<td class="content tabBorderRight"><fmt:formatDate value='${legalProceeding.prosecutionTime }' pattern='yyyy-MM-dd'/></td>
			</tr>
			<tr>
				<td class="label BgColor">借款人状况：</td>
				<td class="content">${legalProceeding.borrowerStatus}</td>
				<td class="label BgColor">是否刑事侦查：</td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1001" value="${legalProceeding.criminalReconnaissance}" /></td>
			</tr>
		<%-- 	<tr>
				<td class="label BgColor">是否保全：</td>
				<td class="content"><bizoption:bizoption biztypekey="1001"  isChoose="true"  selected="${legalProceeding.preservation}"
								id="preservation" name="preservation"  /></td>
				<td class="label BgColor">保全方式：</td>
				<td class="content"><input loxiaType="input"  readonly="readonly" value="${legalProceeding.preservationWay}"  name="preservationWay"/></td>
			</tr> --%>
			<tr>
				<td class="label BgColor">能执行财产类别：</td>
				<td class="content"><bizoptionname:showname biztypekey="1174" value="${legalProceeding.propertyCategory}" />
				</td>
				<td class="label BgColor">是否查封：</td>
				<td class="content tabBorderRight">
				<bizoptionname:showname biztypekey="1001" value="${legalProceeding.attachment}" />
			</td>
			</tr>
			<tr>
				<td class="label BgColor">能执行财产其他说明：</td>
				<td class="content">${legalProceeding.propertyDescription}</td>
				<td class="label BgColor">受理法院：</td>
				<td class="content tabBorderRight">${legalProceeding.acceptanceCourt}</td>
			</tr>
			<tr>
				<td class="label BgColor">当前阶段：</td>
				<td class="content">${legalProceeding.presentStage}</td>
				<td class="label BgColor">终结日期：</td>
				<td class="content tabBorderRight">
				<fmt:formatDate value='${legalProceeding.endTime }' pattern='yyyy-MM-dd'/>
			</td>
			</tr>
			<tr>    
				<td class="label BgColor">庭审结果：</td>
				<td class="content tabBorderRight" colspan="3">${legalProceeding.trialResult}</td>
			</tr>
				<tr>
				<td class="label BgColor">法律文书生效日期：</td>
				<td class="content"><fmt:formatDate value='${legalProceeding.effectTime }' pattern='yyyy-MM-dd'/>
				</td>
				<td class="label BgColor">申请执行日期：</td>
				<td class="content tabBorderRight"><fmt:formatDate value='${legalProceeding.executionTime }' pattern='yyyy-MM-dd'/>
				</td>
			</tr>
				<tr>
				<td class="label BgColor">审核人：</td>
				<td class="content">${legalProceeding.lpcheckName}</td>  
				<td class="label BgColor">审核时间：</td>
				<td class="content"><fmt:formatDate value='${legalProceeding.checkTime }' pattern='yyyy-MM-dd'/>
				</td>
			</tr>  
		</table>
			<div  class="tabbuttonlist buttonDivWidth">
		<input type="button" class="confirm" id="cancel"  value="返回"   loxiaType="button" />
	</div>
	</form>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>          
</body>
</html>