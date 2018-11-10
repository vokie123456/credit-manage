<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款调查查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.research.add.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/research/research_add.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="div_Tab"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#formdetail" id="a_search">调查表</a>
			</li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_apply'>申请表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_product'>产品配置</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_creditInves'>个人征信</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_collateral'>押品信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_updown'>电子文档</a></li>

		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<div id="formdetail">
				<div class="divBgColor">
					<fmt:message key="label.research.detail.title" bundle="${lang}" />
				</div>
				<form id="researchAddForm" method="post">
					<input type="hidden" value="${applyId }" name="applyId"
						id="applyId" /> <input type="hidden" id="taskType"
						name="taskType" value="${ taskType}" /> <input type="hidden"
						id="taskId" name="taskId" value="${ taskId}" /> <input
						type="hidden" id="compCode" name="compCode" value="${compCode}" />
					<input type="hidden" id="direction" name="direction" value="" /> <input
						type="hidden" id="backActivityId" name="backActivityId" value="" />
					<input type="hidden" id="operType" name="operType" value="" /> <input
						type="hidden" id="operReason" name="operReason" value="" /> <input
						type="hidden" id="operReasonRemark" name="operReasonRemark"
						value="" />
					<table class="col3">
						<div>
							<input id="investigationId" type="hidden"
								name="investigationPerson.investigationId"
								value="${investP.investigationId}" loxiaType="input"
								readOnly="true" />
							<!-- 项目流水号   -->

							<input id="projectId" type="hidden"
								name="investigationPerson.projectId" value="${projectId}"
								loxiaType="input" readOnly="true" />
						</div>
						</tr>
						<tr>
							<!-- 调查开始时间  -->
							<td class="label"><fmt:message
									key="label.research.detail.inves_begin" bundle="${lang}" /></td>
							<td class="content"><input id="invesBegin"
								name="investigationPerson.invesBegin" loxiaType="date"
								value="${investP.invesBegin }" /></td>
							<!-- 调查结束时间  -->
							<td class="label"><fmt:message
									key="label.research.detail.inves_end" bundle="${lang}" /></td>
							<td class="content"><input id="invesEnd"
								name="investigationPerson.invesEnd" loxiaType="date"
								value="${investP.invesEnd }" /></td>
						</tr>
						<tr>
							<!-- 客户性质     下拉-->
							<td class="label"><fmt:message
									key="label.research.detail.client_property" bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1027"
									id="clientProperty" name="investigationPerson.clientProperty"
									isChoose="false" selected="${investP.clientProperty }" /></td>
							<!-- 高院网查询s -->
							<td class="label"><fmt:message
									key="label.research.detail.check_court" bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1028"
									id="checkCourt" name="investigationPerson.checkCourt"
									isChoose="false" selected="${investP.checkCourt }" /></td>
						</tr>
						<tr>
							<!-- 工商网确认  -->
							<td class="label"><fmt:message
									key="label.research.detail.check_industry_commerce"
									bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1029"
									id="checkIndustryCommerce"
									name="investigationPerson.checkIndustryCommerce"
									isChoose="false" selected="${investP.checkIndustryCommerce }" /></td>
							<!-- 调查经办人  -->
							<td class="label"><fmt:message
									key="label.research.detail.investigatior_code" bundle="${lang}" /></td>

							<td class="content"><userDepartment:userDepartment
									bizHall="${bizHall}" id="investigatorCode"
									name="investigationPerson.investigatorCode"
									selected="${investP.investigatorCode }" /></td>
							<!--  
						<td class="content" id="researchTd"><input type="hidden"
							id="userHidden" value="${investP.investigatorCode }" /></td>
						-->
						</tr>
						<tr>
							<!-- 社保缴费基数  -->
							<td class="label"><fmt:message
									key="label.research.detail.socialsecurity_base"
									bundle="${lang}" /></td>
							<td class="content"><input id="socialsecurityBase"
								name="investigationPerson.socialsecurityBase" loxiaType="number"
								trim="true" value="${investP.socialsecurityBase }" /></td>
							<!-- =社保缴纳月数:  -->
							<td class="label"><fmt:message
									key="label.research.detail.socialsecurity_month"
									bundle="${lang}" /></td>
							<td class="content"><input id="socialsecurityMonth"
								name="investigationPerson.socialsecurityMonth"
								loxiaType="number" trim="true"
								value="${investP.socialsecurityMonth }" /></td>
						</tr>
						<tr>
							<!-- =公积金月缴基数:  -->
							<td class="label"><fmt:message
									key="label.research.detail.accumulationfund_base"
									bundle="${lang}" /></td>
							<td class="content"><input id="accumulationfundBase"
								name="investigationPerson.accumulationfundBase"
								loxiaType="number" trim="true"
								value="${investP.accumulationfundBase }" /></td>
							<!-- =公积金缴纳月数: -->
							<td class="label"><fmt:message
									key="label.research.detail.accumulationfund_month"
									bundle="${lang}" /></td>
							<td class="content"><input id="accumulationfundMonth"
								name="investigationPerson.accumulationfundMonth"
								loxiaType="number" trim="true"
								value="${investP.accumulationfundMonth }" /></td>
						</tr>
						<tr>
							<!--=公积金月缴金额:  -->
							<td class="label"><fmt:message
									key="label.research.detail.accumulationfund_money"
									bundle="${lang}" /></td>
							<td class="content"><input id="accumulationfundMoney"
								name="investigationPerson.accumulationfundMoney"
								loxiaType="number" trim="true"
								value="${investP.accumulationfundMoney }" /></td>
							<!-- =是否缴纳补充公积金或者补充养老金:  下拉-->
							<td class="label"><fmt:message
									key="label.research.detail.if_fund_supplement" bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1001"
									id="ifFundSupplement"
									name="investigationPerson.ifFundSupplement" isChoose="false"
									selected="${investP.ifFundSupplement }" /></td>
						</tr>
						<tr>
							<!-- =黄页查询电话/地址：户籍:-->
							<td class="label"><fmt:message
									key="label.research.detail.ypage_household" bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1053"
									id="ypageHousehold" name="investigationPerson.ypageHousehold"
									isChoose="false" selected="${investP.ypageHousehold }" /></td>
							<!-- =黄页查询电话/地址：居住地:-->
							<td class="label"><fmt:message
									key="label.research.detail.ypage_house" bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1053"
									id="ypageHouse" name="investigationPerson.ypageHouse"
									isChoose="false" selected="${investP.ypageHouse }" /></td>
						</tr>
						<tr>
							<!--=黄页查询电话/地址：单位:-->
							<td class="label"><fmt:message
									key="label.research.detail.ypage_workunit" bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1053"
									id="ypageWorkunit" name="investigationPerson.ypageWorkunit"
									isChoose="false" selected="${investP.ypageWorkunit }" /></td>
						</tr>
						<tr>
							<td id="td_phone" class="label">电话拨打情况：</td>
							<td colspan="3"><input type="hidden" id="phoneNum"
								value="${disDialCount}" /></td>
						</tr>

						<c:forEach items="${disDial}" var="dis" varStatus="loop">
							<c:if test="${(loop.index+1) % 2 == 1}">
								<tr id="isPhone">
							</c:if>
							<td class="label">${dis.showName}：</td>
							<td id="td${loop.index}" class="content"><bizoption:bizoption
									biztypekey="1052" id="${dis.phoneType}" name=""
									selected="${dis.phoneResult}" isChoose="true" /></td>
							<c:if test="${(loop.index+1) % 2 == 0}">
								</tr>
							</c:if>
						</c:forEach>
					</table>
					<div class="buttonlist buttonDivWidth">
						<button type="button" loxiaType="button" class="confirm hidden1"
							title="tip：提交" id="add">提交</button>

						<button type="submit" loxiaType="button" class="confirm"
							title="tip：<fmt:message key="label.research.add.submit_button2" bundle="${lang}"/>"
							id="saveOn">
							<fmt:message key="label.research.add.submit_button2"
								bundle="${lang}" />
						</button>
					</div>
				</form>
			</div>
		</div>

		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>
</body>
</html>
