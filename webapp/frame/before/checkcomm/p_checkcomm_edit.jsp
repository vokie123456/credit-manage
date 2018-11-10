<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_common.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/check_common.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/checkcomm/p_checkcomm_edit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>
	

	
<form id="pCheckCommForm" method="post">
	<input type="hidden" id="projectStauts" name="projectStatus" /> <input
		type="hidden" id="isSaveTemp" name="isSaveTemp" /> <input
		type="hidden" id="clientType" name="clientType" value="100311" />
	<div class="divBgColor">审核信息</div>
	<table class="col3">
		<tr>
			<!-- 审核类型  -->
			<td class="label"><fmt:message
					key="label.audit.taskdetail.check_type" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1002"
					value="${check.checkType }" /><input type="hidden"   id="checkType" 
				name="checkType" value="${check.checkType }" /></td>
			<td class="label"><fmt:message
					key="label.audit.taskdetail.money_check" bundle="${lang}" /></td>
			<td class="content"><input name="checkMoney" loxiaType="money"
				id="checkMoney" mandatory="true" value="${check.checkMoney }" /><label
				class="del_mandatory">&nbsp;*</label></td>
		</tr>
		<tr>
			<td class="label">贷审会编号：</td>
			<td class="content"><input id="checkNo" name="checkNo"
				value="${check.checkNo}" loxiaType="input" mandatory="true" /><label
				class="del_mandatory">&nbsp;&nbsp;*</td>
			<td class="label">贷审会日期：</td>
			<td class="content"><input id="checkDate" name="checkDate"
				value="<fmt:formatDate value='${check.checkDate}' pattern='yyyy-MM-dd' />"
				loxiaType="date" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</td>
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
	<!-- 	产品配置 -->
	<div id="productConfigDiv"></div>
</form>
<!-- 	审核意见列表 -->
<div id="checkOpinionTypeDiv" ></div>
<div class="title disNone">贷审会议信息</div>
<form id="pCheckCommForm">
</form>
<form>
	<div class="divBgColor">贷审会议表决结果</div>
	<input id="ifAllot" type="hidden" value="${ifAllot }" />
	<c:choose>
		<c:when test="${ifAllot == '100111'}">
			<table class="col3">
				<tr>
					<td style="font-size:14px;width:35%; text-align: right"><select
						class="ui-loxia-default ui-corner-all ui-loxia-highlight"
						type="select" name="taskAgentList" id="taskAgentList"
						multiple="multiple" style="background: #FFF;width:200px;">
							<c:forEach items="${agentList }" var="item">
								<option value="${item.userId }">${item.userName }</option>
							</c:forEach>
					</select></td>
					<td 
						style="font-size: 14px; width: 80%; padding-left: 10px;">
						<input type="button"
						class="confirm ui-button ui-widget ui-state-default ui-corner-all"
						id="addTask" value="分配" loxiaType="button" />
					</td>
				</tr>
				<tr>
					<td colspan="4"  style="padding-left: 10%;" >
						<div id="taskItems"></div>
					</td>
				</tr>
			</table>
			</td>
			</tr>
			</table>
		</c:when>
		<c:otherwise>
			<table class="col3">
				<tr>
					<td class="label">出席人数：</td>
					<td class="content"><input name="joinNum" loxiaType="number"
						id="joinNum" value="${check.joinNum }" /></td>
					<td class="label">同意票数：</td>
					<td class="content"><input name="passNum" loxiaType="number"
						id="passNum" value="${check.passNum }" /></td>
				</tr>
				<tr>
					<td class="label">反对票数：</td>
					<td class="content"><input name="rejectNum" loxiaType="number"
						id="rejectNum" value="${check.rejectNum }" /></td>
					<td class="label">有条件同意票数：</td>
					<td class="content"><input name="conditionNum"
						loxiaType="number" id="conditionNum"
						value="${check.conditionNum }" /></td>
				</tr>
			</table>
		</c:otherwise>
	</c:choose>
		<!-- 	上一节点操作意见 -->
	<div id="prevOpinionDiv"></div>
	<div class="divBgColor">贷款意见</div>
	<input type="hidden" id="checkUserName" value="${userInfo.userName }">
	<table id="addCheckOpinions" class="col3">
		<tr>
			<td class="label"></td>
			<td class="content"></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
			<c:forEach items="${coList}" var="co" varStatus="i">
		<c:if
			test="${!(userInfo.userId==co.userId && co.checkType==checkType)}">
			<tr>
				<Td colspan="4" style="padding-left:10%;">      
						<table style="width:100%;border:1px solid #dcdcdc; " >
								<tr>
							<td align="center" style="width:14%;font-size: 14px;"  >${co.checkUser}</td>
									<td style="font-size: 14px; width:80%;border-left: 1px solid #dcdcdc;padding-left:10px;">${ucx:unCleanXSS(co.opinionDetail) }</td>
								</tr>
						</table>
				</Td>
			</tr>
		</c:if>
		<c:if
			test="${userInfo.userId==co.userId && co.checkType==checkType}">
			<c:set var="flag" value="edit"></c:set>
			<c:set var="col" value="${co }"></c:set>
		</c:if>
	</c:forEach>
	<c:if test="${flag eq 'edit' }">
		<tr>
			<td colspan="4" style="padding-left: 10%"><input
				name="opinionId" type="hidden" value="${col.opinionId}" /> <input
				name="taskId" type="hidden" value="${col.taskId}" />
				<textarea class="cleditor" id="checkOpinion" name="checkOpinion" rows="4" >${ucx:unCleanXSS(col.opinionDetail) }</textarea>
			</td>
		</tr>
	</c:if>
	<c:if test="${flag ne 'edit' }">
		<tr>
			<td colspan="4" style="padding-left: 10%"><textarea rows="4"
					 class="cleditor" name="checkOpinion"></textarea>
			</td>
		</tr>
	</c:if>
	</table>
	<div class="divBgColor">董事长意见信息</div>
	<table class="col3">
		<tr>
			<td class="label"></td>
			<td class="content"></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left: 10%"><textarea rows="4"
					class="cleditor"  id="chairmanOpinion"
					name="chairmanOpinion">${ucx:unCleanXSS(check.chairmanOpinion) }</textarea></td>
		</tr>
	</table>
</form>
<div id="operateOrder" class="buttonlist buttonDivWidth">
	<input type="button" class="confirm" id="tempSave"  value="暂存"  loxiaType="button" />
</div>
