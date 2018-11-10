<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款调查查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/businessExecutiveApprove/approve_inves_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<div class="divBgColor">
			<fmt:message key="label.search.param" bundle="${lang}" />
		</div>
		<form id="invesBasicForm" method="post">
			<table>
				<tr>
					<!-- 项目编号-->
					<td class="label"><fmt:message
							key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
						<!-- 企业名称 -->
					<td class="label"><fmt:message
							key="label.applyDetail.enterprise_short" bundle="${lang}" /></td>
					<td width="150"><input name="clientName" loxiaType="input"
						trim="true" /></td>
						<td class="label"><fmt:message
							key="label.person.sign.organizationCode" bundle="${lang}" /></td>
					<td width="150"><input name="organizationCode" loxiaType="input"
						trim="true" /></td>
				</tr>
				<tr>
						<!-- 所属行业   -->
					<td class="label"><fmt:message
							key="label.applyDetail.work_industry" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption name="workIndustry"
							biztypekey="1014" isChoose="true" /></td>
					<!-- 申请金额-->
					<td class="label"><fmt:message
							key="label.credit.list.query.applyMoney" bundle="${lang}" /></td>
					<td width="150"><input name="checkMoneyMin" loxiaType="number"
								decimal="2"/></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input name="checkMoneyMax" loxiaType="number"
								decimal="2"/></td>	
				</tr>
				<tr>
				</tr>
					<tr>
					<td class="label"><fmt:message
							key="label.apply.clientproject.dataRole" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="rolelevel"
							id="roleLevel" name="roleLevel" /></td>
					<td class="label"></td>
					<td></td>
					<td align="center" class="label"></td>
					<td></td>
				</tr>
				<tr>
				
				<!-- 客户性质  
					<td class="label"><fmt:message
							key="label.company.list.clientProperty" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1013"
							id="clientPropetry" name="clientPropetry" isChoose="true" /></td>
					-->
					<!-- 调查开始和结束时间区间 
					<td class="label"><fmt:message
							key="label.research.research_start_and_end_date" bundle="${lang}" /></td>
					<td><input id="researchStartDate" loxiaType="date"
						name="researchStartDate" checkmaster="setMinDate" /></td>
					<td align="center" class="label" checkmaster="setMaxDate">到</td>
					<td><input id="researchEndDate" loxiaType="date"
						name="researchEndDate" checkmaster="setMaxDate" /></td>
					-->
					<!-- 客户姓名 
					<td class="label"><fmt:message
							key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
					<td width="150"><input id="clientName" name="clientName"
						loxiaType="input" trim="true" /></td>
					-->
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="reset" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
					id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>
				<!--  
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="label.research.add.title" bundle="${lang}" />"
					id="research">
					<fmt:message key="label.research.add.title" bundle="${lang}" />
				</button>
		        -->
			</div>
		</form>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-invesBasiclist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>
