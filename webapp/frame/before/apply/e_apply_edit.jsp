<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_common.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/before/apply/e_apply_edit.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>

<form id="eApplyForm" method="post"   enctype="multipart/form-data"  target="temp" >
<input type="hidden" id="projectStauts" name="clientProject.projectStauts" />
<input type="hidden" id="clientType" name="clientBasic.clientType" value="100312" />
		<input type="hidden" id="applyId" 	name="applyId" value="${applyBasic.applyId}" />
<div class="divBgColor">流程选择</div>
	<table class="textalignCenter tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0" >
		<tr>
			<td class="label">流程选择：</td>
			<td class="content"><c:if test="${not  empty   projectId }"><input type="hidden"  name="wfCode"  value="${applyBasic.wfCode}"/></c:if>
			<select id="wfCode" name="wfCode"  <c:if test="${not  empty   projectId }">disabled="disabled"</c:if>>
					<c:forEach items="${compWorkflowVos }"  var="compWorkflowVo"  >
					<option value="${compWorkflowVo.wfCode }"   <c:if test="${applyBasic.wfCode==compWorkflowVo.wfCode}"> selected="true"</c:if>  >${compWorkflowVo.wfName }</option>
					</c:forEach>
			</select></td>
		<td class="label tabBorderRight"></td>
				<td class="content"></td>  
		</tr>
	</table>
	<br/>
	<div class="divBgColor">贷款信息</div>
	<table class="textalignCenter tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0">
		<tr>
			<td class="label">申请金额(万元)：</td>
			<td class="content "><input id="loanHopeMoney"
				value="${applyBasic.loanHopeMoney}" loxiaType="money"
				trim="true" mandatory="true" 
				name="loanHopeMoney" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
		
		    <!-- 贷款产品 -->
			<td class="label">贷款产品：</td>
			<td class="content"><select id="loanProduct"  name="productConfig.productId" 
				class="ui-loxia-default ui-corner-all" /></td>
			<input type="hidden"  id="edit_productid" value="${pc.productId }" />
		</tr>
		
		<tr>
			<!-- 贷款用途  键值对数据 -->
			<td class="label">贷款用途：</td>
			<td class="content" colspan="3"><input id="loanPurpose"
				name="loanPurpose" value="${applyBasic.loanPurpose}"
				loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<td class="label">还款来源：</td>
			<td class="content" colspan="3"><input id="repaySourse"
				value=" ${applyBasic.repaySourse }" loxiaType="input" trim="true"
				name="repaySourse" /></td>
		</tr>
		<tr>
			<td class="label">客户来源：</td>
			<td class="content"><bizselect:bizselect biztypekey="1004"
					id="clientFrom" name="clientFrom"  
					selected="${applyBasic.clientFrom}" /></td>
			<td class="label"><span id="clientFromAgencyTip"  class="disNone">中介信息：</span></td>
			<td class="content" colspan="3"><span id="clientFromAgencyContent" class="disNone">
			<agencyInfo:agencyInfo name="clientFromAgency"  id="clientFromAgency"  selected=" ${applyBasic.clientFromAgency}"   compCode="${compCode}"></agencyInfo:agencyInfo></span></td>
		</tr>
		<tr>
			<!-- 信息来源  personBasic.infoFrom -->
			<td class="label">贷款引进人：</td>
			<td class="content" ><introduceUser:introduceUser id="infoFrom"  name="infoFrom"  compCode="${compCode }"  selected="${applyBasic.infoFrom}" ></introduceUser:introduceUser></td>
		</tr>
	</table>
	<br/>
<!-- 	产品配置 -->
	<div id="productConfigDiv" ></div>
	
	<div class="divBgColor">企业资料</div>
			<table class="textalignCenter tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0" >
				<tr>
					<td class="label">营业执照：</td>
					<td class="content">
					<input type="hidden"  name="clientBasic.cardType"  value="110211"/> 
					<input type="hidden"  name="clientBasic.clientId"  value="${applyBasic.clientId}"/> 
					<input type="hidden"  name="clientBasic.cardNo"  value="${applyBasic.cardNo } "/>${applyBasic.cardNo }</td>
			<td class="label">企业名称：</td>
				<td class="content">
				<input type="hidden"   name="clientBasic.clientName"  value="${applyBasic.clientName}" />${applyBasic.clientName}</td>
		</tr>
	</table>
		<br/>
		 <div class="divBgColor">业务人员信息</div>
		<table class="textalignCenter tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0" >
			<tr>
				<td class="label">协办客户经理：</td>
				<td class="content" ><introduceUser:introduceUser id="salerbCode"  name="clientProject.salerbCode"  compCode="${compCode }"  selected="${applyBasic.salerbCode}" ></introduceUser:introduceUser></td>
				<td class="label"></td>
				<td class="content"></td>     
			</tr>
		</table>
		<br/>
	<!--  
	<div class="divBgColor">客户文档</div>
		<table class="col3">
		<tr>
			<td class="label">添加文件：</td>
			<td class="content"><input type="file" name="myfiles"
				id="myfiles" /></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
	</table>
	-->
		<!-- 	上一节点操作意见 -->
	<div id="prevOpinionDiv"></div>
	<br/>
	  <div class="divBgColor">操作信息</div>
		<table class="col3">
			<tr>
				<td class="label"></td>
				<td class="content"></td>
				<td class="label"></td>
				<td class="content"></td>
		</tr>
			<tr>
		<td  colspan="4"  style="padding-left: 10%">
		<textarea class="cleditor" id="operRemark" name="operRemark" rows="4" >${ucx:unCleanXSS(taskList.operReasonRemark) }</textarea></td>
			</tr>
		</table>
	<div id ="operateOrder" class="buttonlist buttonDivWidth">
	<input type="button" class="confirm" id="tempSave"  value="暂存"  loxiaType="button" />
	<input type="button" class="confirm" id="next"  value="提交"   loxiaType="button" />
	</div>
</form>
<!--IE8文件上传使用 -->
<iframe id="temp"  name="temp"  class="disNone"></iframe>
