<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/checkcomm/checkcomm_task_edit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_detail.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/check/check_opinion_detail.js'/>"></script>
<!-- 	父任务taskId，提供给前面节点审核信息列表使用-->
<input type="hidden" id="taskId" value="${taskId}" />
<input type="hidden" id="projectId" value="${projectId}" />
<form id="checkItemCommForm">
	<div class="divBgColor">贷审会信息</div>
	<table class="col3">
		<tr>
			<td class="label">审核类型：</td>
			<td class="content"><bizoptionname:showname biztypekey="1002"
					value="${checkBasic.checkType }" /></td>
			<td class="label"><fmt:message
					key="label.audit.taskdetail.money_check" bundle="${lang}" /></td>
			<td class="content">${checkBasic.checkMoney }</td>
		</tr>
		<tr>
			<td class="label">贷审会编号：</td>
			<td class="content">${checkBasic.checkNo }</td>
			<td class="label">贷审会日期：</td>
			<td class="content"><fmt:formatDate
					value='${checkBasic.checkDate }' pattern='yyyy-MM-dd' /></td>
		</tr>
		<tr>
			<td class="label">客户名称：</td>
			<td class="content">${clientBasic.clientName}</td>
			<td class="label">客户经理：</td>
			<td class="content"><showusername:showusername
					value="${clientProject.saleraCode}"></showusername:showusername></td>
		</tr>
		<tr>
			<!-- 贷款用途 applyBasic.loanPurpose 键值对数据 -->
			<td class="label"><fmt:message
					key="label.applyDetail.loanPurpose" bundle="${lang}" /></td>
			<td class="content">${applyBasic.loanPurpose }</td>
		</tr>
		<tr>
			<td class="label">还款来源：</td>
			<td class="content" colspan="3">${applyBasic.repaySourse }</td>
		</tr>
	</table>
	<!-- 产品配置信息 -->
	<div id="productConfigDetailDiv"></div>
	<!-- 	审核意见列表 -->
<div id="checkOpinionTypeDivDetail" ></div>
	<div class="divBgColor">贷款意见</div>
	<table class="col3">
		<tr>
			<td class="label"></td>
			<td class="content"></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
		<c:forEach items="${coList}" var="co" varStatus="i">
			<tr>
				<td colspan="4" style="text-align: left">
						<table style="width:100%;border:1px solid #dcdcdc; ">
								<tr>
							<td align="center" style="width:14%;font-size: 14px;"  >${co.checkUser}</td>
									<td style="font-size: 14px; width:80%;border-left: 1px solid #dcdcdc;padding-left:10px;">${ucx:unCleanXSS(co.opinionDetail) }</td>
								</tr>
						</table>
				</td>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${not empty checkBasic.chairmanOpinion }">
		<div class="divBgColor">董事长意见</div>
		<table class="col3">
			<tr>
				<td class="label"></td>
				<td class="content"></td>
				<td class="label"></td>
				<td class="content"></td>
			</tr>
			<tr>
				<td class="content" colspan="4" style="padding-left: 12%">${ucx:unCleanXSS(checkBasic.chairmanOpinion) }</td>
		</table>
	</c:if>
	<div class="divBgColor">审核意见</div>
	<table class="col3">
		<tr>
			<td class="label"></td>
			<td class="content"></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
		<tr>
			<td style="padding-left: 10%"  class="content"><bizoption:bizoption biztypekey="1163"
					id="ifPass"  name="ifPass"
					mandatory="true" selected="${checkOpinionVo.ifPass }" /></td>
			<td class="content"></td>
			<td class="content"></td>
		</tr>
		<tr>
		<td  colspan="4"  style="padding-left: 10%">
		<textarea class="cleditor" id="opinionDetail" name="opinionDetail" rows="4" >${ucx:unCleanXSS(checkOpinionVo.opinionDetail) }</textarea>
	</td>
		</tr>
	</table>
</form>
<div id="operateOrder" class="buttonlist buttonDivWidth">
	<input type="button" class="confirm ui-button ui-widget ui-state-default ui-corner-all"  id="tempSave"  value="暂存"  loxiaType="button" />
	<input type="button" class="confirm ui-button ui-widget ui-state-default ui-corner-all"  id="next"  value="提交"  loxiaType="button" />
</div>
