
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>法律诉讼编辑</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/preservation/litigation_edit.js'/>"></script>
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
		<table class="textalignCenter tabcustomPeoNoborder">
		<input type="hidden"  readonly="readonly" value="${legalProceeding.id }" name="id" id="id"/>   
			<c:if test="${legalProceeding.id ne null}">
		<input type="hidden"  readonly="readonly" value="${legalProceeding.createId }" name="createId" id="createId"/><!--创建人  -->
		<input type="hidden"  readonly="readonly" value="${legalProceeding.createTime }" name="createTime" id="createTime"/><!--创建时间  -->
		<input type="hidden"  readonly="readonly" value="${legalProceeding.compCode }" name="compCode" id="compCode"/><!--公司id  -->
		<input type="hidden"  readonly="readonly" value="${legalProceeding.projectId }" name="projectId" id="projectId"/><!--项目id  -->
		<input type="hidden"  readonly="readonly" value="${legalProceeding.ifValid }" name="ifValid" id="ifValid"/><!--条目状态  -->
		</c:if>
		<c:if test="${projectId ne null}">
		<input type="hidden"  readonly="readonly" value="${projectId }" name="projectId" id="projectId"/>
		</c:if>
			<tr>   
				<td class="label">被起诉客户户名称：</td>
				<td class="content"><input loxiaType="input"  name="prosecutionClientName" trim="true" value="${legalProceeding.prosecutionClientName }"/></td>
				<%-- <td class="label">合同号：</td>
					
				<td class="content"><input loxiaType="input"  readonly="readonly"  <c:if test="${contractId ne null}">value="${contractId }"
					</c:if> <c:if test="${contractId eq null}"> value="${legalProceeding.collateralId }"</c:if> name="collateralId"  id="collateralId"/></td> --%>
			</tr>
			<tr>
				<td class="label">案件名称：</td>
				<td class="content"><input loxiaType="input" name="caseName"  value="${legalProceeding. caseName}"/></td>
				<td class="label">诉讼流水号：</td>
				<td class="content"><input loxiaType="input" name="litigationSerialNo"  trim="true" value="${legalProceeding.litigationSerialNo}"
					/></td>
			</tr>
			<tr>
				<td class="label">重点案件进展情况：</td>
				<td class="content" colspan="3"><input loxiaType="input" name="caseProgress" value="${legalProceeding.caseProgress}" /></td>
			</tr>
			<tr>
				<td class="label">被起诉原因：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="prosecutionReason"  value="${legalProceeding.prosecutionReason}" trim="true"
				/></td>
			</tr>
			<tr>
				<td class="label">诉讼类型：</td>
				<td class="content"><bizoption:bizoption biztypekey="1172"  isChoose="true"  selected="${legalProceeding.litigationType}"
								id="litigationType" name="litigationType"  /></td>
				<td class="label">币种：</td>
				<td class="content"><bizoption:bizoption biztypekey="1103"  selected="${legalProceeding.currency}"
								id="currency" name="currency"   isChoose="true"  /></td>
			</tr>
			<tr>
				<td class="label">诉讼标的额(总额)：</td>
				<td class="content"><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  value="${legalProceeding.litigationMoney}" name="litigationMoney"/></td>
				<td class="label">其中本金：</td>
				<td class="content"><input loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  value="${legalProceeding.principal}" name="principal"/></td>
			</tr>
		<%-- 	<tr>
				<td class="label">起诉机构：</td>
				<td class="content"><input  loxiaType="number"  max="9999999999999.99"  trim="true" decimal="2"  value="${legalProceeding.prosecutionMechanism}" name="prosecutionMechanism"  /></td>
				<td class="label">案件统计机构：</td>
				<td class="content"><input loxiaType="input"  value="${legalProceeding.caseStatisticalMechanism}"   name="caseStatisticalMechanism"/></td>
			</tr> --%>
				<tr>
				<td class="label">代理方式：</td>
				<td class="content"><bizoption:bizoption biztypekey="1173"  isChoose="true"   selected="${legalProceeding.proxyMode}"
								id="proxyMode" name="proxyMode"  /></td>  
				<td class="label">起诉时间：</td>
				<td class="content"><input loxiaType="date"  value="<fmt:formatDate value='${legalProceeding.prosecutionTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"  name="prosecutionTime"/></td>
			</tr>
			<tr>
				<td class="label">借款人状况：</td>
				<td class="content"><input loxiaType="input" value="${legalProceeding.borrowerStatus}"  name="borrowerStatus"  /></td>
				<td class="label">是否刑事侦查：</td>
				<td class="content"><bizoption:bizoption biztypekey="1001"  isChoose="true"  selected="${legalProceeding.criminalReconnaissance}"
								id="criminalReconnaissance" name="criminalReconnaissance"  /></td>
			</tr>
		<%-- 	<tr>
				<td class="label">是否保全：</td>
				<td class="content"><bizoption:bizoption biztypekey="1001"  isChoose="true"  selected="${legalProceeding.preservation}"
								id="preservation" name="preservation"  /></td>
				<td class="label">保全方式：</td>
				<td class="content"><input loxiaType="input" value="${legalProceeding.preservationWay}"  name="preservationWay"/></td>
			</tr> --%>
			<tr>
				<td class="label">能执行财产类别：</td>
				<td class="content"><bizoption:bizoption biztypekey="1174"  isChoose="true"  selected="${legalProceeding.propertyCategory}"
								id="propertyCategory" name="propertyCategory"  /></td>
				<td class="label">是否查封：</td>
				<td class="content"><bizoption:bizoption biztypekey="1001"  isChoose="true"  selected="${legalProceeding.attachment}"
								id="attachment" name="attachment"  /></td>
			</tr>
			<tr>
				<td class="label">能执行财产其他说明：</td>
				<td class="content"><input loxiaType="input" name="propertyDescription" value="${legalProceeding.propertyDescription}" /></td>
				<td class="label">受理法院：</td>
				<td class="content"><input loxiaType="input"   name="acceptanceCourt" value="${legalProceeding.acceptanceCourt}"/></td>
			</tr>
			<tr>
				<td class="label">当前阶段：</td>
				<td class="content"><input loxiaType="input" name="presentStage"  value="${legalProceeding.presentStage}"/></td>
				<td class="label">终结日期：</td>
				<td class="content"><input loxiaType="date"   name="endTime" value="<fmt:formatDate value='${legalProceeding.endTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
			</tr>
			<tr>    
				<td class="label">庭审结果：</td>
				<td class="content" colspan="3"><input loxiaType="input"   name="trialResult" value="${legalProceeding.trialResult}"/></td>
			</tr>
				<tr>
				<td class="label">法律文书生效日期：</td>
				<td class="content"><input loxiaType="date" name="effectTime"  value="<fmt:formatDate value='${legalProceeding.effectTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
				<td class="label">申请执行日期：</td>
				<td class="content"><input loxiaType="date"    name="executionTime" value="<fmt:formatDate value='${legalProceeding.executionTime}'
									pattern='yyyy-MM-dd'  ></fmt:formatDate>"/></td>
			</tr>
				<tr>
				<td class="label">审核人：</td>
				<td class="content">           
					<introduceUser:introduceUser id="checkId" name="checkId" compCode="${compCode}" selected="${legalProceeding.checkId}"  isChoose="true"  ></introduceUser:introduceUser>
				</td>  
				<td class="label">审核时间：</td>
				<td class="content"><input loxiaType="date"   name="checkTime" value="<fmt:formatDate value="${legalProceeding.checkTime}" pattern="yyyy-MM-dd" />"/></td>
			</tr>
		</table>
			<div  class="buttonlist buttonDivWidth">
		<input type="button" class="confirm" id="save"  value="保存"  loxiaType="button" />
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