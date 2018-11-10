<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/research/research_detail.js'/>"></script>

<div id="formdetail">
	<div class="divBgColor">
		<fmt:message key="label.research.detail.title" bundle="${lang}" />
		<input type="hidden" value="${investP.investigationId }"
			id="investigationId" /> <input type="hidden" value="${applyId }"
			id="applyId" />
	</div>
	<form id="researchDetailForm" method="post">
		<table class="col3">
			<tr>
				<!-- 调查流水号
				<td class="label"><fmt:message
						key="label.research.detail.investigation_id" bundle="${lang}" /></td>
				-->

				<!-- 项目流水号   -->
				<td class="label"><fmt:message
						key="label.research.detail.project_id" bundle="${lang}" /></td>
				<td class="content">${investP.projectId }</td>
				<!-- 调查经办人  -->
				<td class="label"><fmt:message
						key="label.research.detail.investigatior_code" bundle="${lang}" /></td>
				<input type="hidden" value="${investP.investigatorCode }"
					id="hiddenVal" />
				<td class="content" id="userTd"></td>
			</tr>
			<tr>
				<!--=调查状态:-->
				<td class="label"><fmt:message
						key="label.research.detail.investigation_status" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1032"
						name="investigationStatus" value="${investP.investigationStatus }" />
				</td>
				<!-- 调查开始时间  -->
				<td class="label"><fmt:message
						key="label.research.detail.inves_begin" bundle="${lang}" /></td>
				<td class="content">${investP.invesBegin }</td>
			</tr>
			<tr>
				<!-- 调查结束时间  -->
				<td class="label"><fmt:message
						key="label.research.detail.inves_end" bundle="${lang}" /></td>
				<td class="content">${investP.invesEnd }</td>
				<!-- 客户性质-->
				<td class="label"><fmt:message
						key="label.research.detail.client_property" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1027"
						value="${investP.clientProperty }" /></td>
			</tr>
			<tr>
				<!-- 高院网查询s -->
				<td class="label"><fmt:message
						key="label.research.detail.check_court" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1028"
						value="${investP.checkCourt }" /></td>
				<!-- 工商网确认  -->
				<td class="label"><fmt:message
						key="label.research.detail.check_industry_commerce"
						bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1029"
						value="${investP.checkIndustryCommerce }" /></td>
			</tr>
			<tr>
				<!-- 社保缴费基数  -->
				<td class="label"><fmt:message
						key="label.research.detail.socialsecurity_base" bundle="${lang}" /></td>
				<td class="content">${investP.socialsecurityBase }</td>
				<!-- =社保缴纳月数:  -->
				<td class="label"><fmt:message
						key="label.research.detail.socialsecurity_month" bundle="${lang}" /></td>
				<td class="content">${investP.socialsecurityMonth }</td>
			</tr>
			<tr>
				<!-- =公积金月缴基数:  -->
				<td class="label"><fmt:message
						key="label.research.detail.accumulationfund_base" bundle="${lang}" /></td>
				<td class="content">${investP.accumulationfundBase }</td>
				<!-- =公积金缴纳月数: -->
				<td class="label"><fmt:message
						key="label.research.detail.accumulationfund_month"
						bundle="${lang}" /></td>
				<td class="content">${investP.accumulationfundMonth }</td>
			</tr>
			<tr>
				<!--=公积金月缴金额:  -->
				<td class="label"><fmt:message
						key="label.research.detail.accumulationfund_money"
						bundle="${lang}" /></td>
				<td class="content">${investP.accumulationfundMoney }</td>
				<!-- =是否缴纳补充公积金或者补充养老金:-->
				<td class="label"><fmt:message
						key="label.research.detail.if_fund_supplement" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1001"
						value="${investP.ifFundSupplement }" /></td>
			</tr>
			<tr>
				<!-- =黄页查询电话/地址：户籍:-->
				<td class="label"><fmt:message
						key="label.research.detail.ypage_household" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1053"
						value="${investP.ypageHousehold }" /></td>
				<!-- =黄页查询电话/地址：居住地:-->
				<td class="label"><fmt:message
						key="label.research.detail.ypage_house" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1053"
						value="${investP.ypageHouse }" /></td>
			</tr>
			<tr>
				<!--=黄页查询电话/地址：单位:-->
				<td class="label"><fmt:message
						key="label.research.detail.ypage_workunit" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1053"
						value="${investP.ypageWorkunit }" /></td>
			</tr>
			<tr>
				<td class="label">电话拨打情况：</td>
				<td colspan="3"></td>
			</tr>
			<c:forEach items="${disDial}" var="dis" varStatus="loop">
				<c:if test="${(loop.index+1) % 2 == 1}">
					<tr id="isPhone">
				</c:if>
				<td class="label">${dis.showName}：</td>
				<td class="content">${dis.showSelectedName}</td>
				<c:if test="${(loop.index+1) % 2 == 0}">
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</form>
	<div class="divBgColor">
		<fmt:message key="label.memo.title" bundle="${lang}" />
	</div>
	<table class="col3">
		<tr>
			<td class="label"><fmt:message key="label.memo.oper.type"
					bundle="${lang}" /></td>
			<td class="content">${tlVo.operType}</td>
			<td class="label"><fmt:message key="label.memo.oper.reason"
					bundle="${lang}" /></td>
			<td class="content">${tlVo.operReason}</td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.memo.oper.remark"
					bundle="${lang}" /></td>
			<td class="content">${tlVo.operReasonRemark}</td>

		</tr>
	</table>
</div>
