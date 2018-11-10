<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<%@include file="/common/editor.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/operateOrder.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_common.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/check_common.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/check/e_check_edit.js'/>"></script>
		<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/prev_opinion.js'/>"></script>

<form id="eCheckForm" method="post">
	<input type="hidden" id="isSaveTemp" name="isSaveTemp" /> <input
		type="hidden" id="clientType" name="clientType" value="100312" />
	<div class="divBgColor">审核信息</div>
	<table class="col3">
    <tr>
			<!-- 审核类型  -->
			<td class="label"><fmt:message
					key="label.audit.taskdetail.check_type" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1002"
					value="${check.checkType }" /><input type="hidden"  id="checkType"  name="checkType" value="${check.checkType }" />
			</td>
			<td class="label"><fmt:message
					key="label.audit.taskdetail.money_check" bundle="${lang}" /></td>
			<td class="content" ><input name="checkMoney"  loxiaType="money"
				id="checkMoney"  mandatory="true" 
				value="${check.checkMoney }" /><label class="del_mandatory">&nbsp;*</label></td>
		</tr>
			<tr>
		<td class="label">客户名称：</td>
		<td class="content">${clientBasic.clientName}</td>
		<td class="label">客户经理：</td>
		<td class="content"><showusername:showusername value="${clientProject.saleraCode}"></showusername:showusername></td>
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
		</table>
	<!-- 	产品配置 -->
	<div id="productConfigDiv" ></div>
</form>
<!-- 	审核意见列表 -->
	<div id="checkOpinionTypeDiv" ></div>
	<!-- 	上一节点操作意见 -->
	<div id="prevOpinionDiv"></div>
<div class="divBgColor">贷款意见</div>
<input type="hidden" id="checkUserName"  value="${userInfo.userName }">
<table id="addCheckOpinions" class="col6">
	<tr>
		<td class="label"></td>
		<td class="content"></td>
	</tr>
	<c:forEach items="${coList}" var="co" varStatus="i">
		<c:if
			test="${!(userInfo.userId==co.userId && co.checkType==checkType)}">
			<tr>
				<td colspan="2" style="text-align: left">
							<table style="width:100%;border:1px solid #dcdcdc; "   class="col6">
								<tr>
							<td style="font-size: 14px;"  class="label">${co.checkUser}</td>
									<td style="font-size: 14px; border-left: 1px solid #dcdcdc;padding-left:10px;">${ucx:unCleanXSS(co.opinionDetail) }</td>
								</tr>
						</table>
				</td>
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
			<td class="label"></td>
					<td class="content"><input
				name="opinionId" type="hidden" value="${col.opinionId}" /> <input
				name="taskId" type="hidden" value="${col.taskId}" />	<textarea class="cleditor" id="checkOpinion" name="checkOpinion" rows="4" >${ucx:unCleanXSS(col.opinionDetail) }</textarea>
			</td>
		</tr>
	</c:if>
	<c:if test="${flag ne 'edit' }">
		<tr>
			<!-- 	<td class="label"></td> -->
					<td colspan="2" class="content" style="padding-left: 10%"><textarea rows="4"
					class="cleditor" name="checkOpinion"></textarea>
			</td>
		</tr>
	</c:if>
</table>
<div id="operateOrder" class="buttonlist buttonDivWidth">
<input type="button" class="confirm" id="tempSave"  value="暂存"  loxiaType="button" />
</div>

