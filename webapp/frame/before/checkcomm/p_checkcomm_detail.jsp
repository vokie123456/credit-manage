<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="ucx" uri="/WEB-INF/uncleanxss.tld"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/common/product_detail.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/checkcomm/checkcomm_detail.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/check/check_opinion_detail.js'/>"></script>
	<!-- <style>
#titleItems tr th{
	border-left: 1px solid #dcdcdc;
 	font-size: 14px; 
}
#taskItems tr td{
	border-right: 1px solid #dcdcdc;
	border-top: 1px solid #dcdcdc;         
 font-size: 14px; 
} 
</style> -->
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" id="taskId" value="${taskId }" />
	<input type="hidden" id="projectId" value="${projectId }" />
	<div class="divBgColor">审核信息</div>
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
	<div class="divBgColor">贷审会议表决结果</div>
	<input id="ifAllot" type="hidden" value="${ifAllot }" />
	<c:choose>
		<c:when test="${ifAllot == '100111'}">
			<table class="col3">
				<tr>
					<td colspan="4"  style="padding-left: 10%;" >
						<div id="taskItems"></div>
					</td>
				</tr>
			</table>
		</c:when>
		<c:otherwise>
			<table class="col3">
				<tr>
					<td class="label">出席人数:</td>
					<td class="content"><div id="present_members">${checkBasic.joinNum }</div></td>
					<td class="label">同意票数:</td>
					<td class="content"><div id="agree_members">${checkBasic.passNum }</div></td>
				</tr>
				<tr>
					<td class="label">反对票数:</td>
					<td class="content"><div id="oppose_members">${checkBasic.rejectNum }</div></td>
					<td class="label">有条件同意人数:</td>
					<td class="content"><div id="oppose_members">${checkBasic.conditionNum }</div></td>
				</tr>
			</table>
		</c:otherwise>
	</c:choose>

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
	<div class="divBgColor">操作信息</div>
	<table class="col3">
		<tr>
			<td class="label">操作类型：</td>
			<td class="content">${taskList.operType}</td>
			<td class="label">操作时间：</td>
			<td class="content"><fmt:formatDate
					value="${taskList.submitTime}" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
		</tr>
		<tr>
			<td class="label">经办人：</td>
			<td class="content"><showusername:showusername
					value="${taskList.taskAgent}"></showusername:showusername></td>
		</tr>
	</table>
</body>