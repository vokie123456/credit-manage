<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款申请查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>企业贷款申请</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/apply/apply_enterprise_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<div class="divBgColor">
			<fmt:message key="label.search.param" bundle="${lang}" />
		</div>
		<form id="applyListForm" method="post">
			<table>
				<tr>
					<!-- 项目编号-->
					<td class="label"><fmt:message
							key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
					<!-- 企业名称 -->
					<td class="label" ><fmt:message
							key="label.applyDetail.enterprise_short" bundle="${lang}" /></td>
					<td width="150"><input name="clientName" loxiaType="input"
						trim="true" /></td>
					<td class="label"><fmt:message
							key="label.person.sign.organizationCode" bundle="${lang}" /></td>
					<td width="150"><input name="organizationCode"
						loxiaType="input" trim="true" /></td>
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
						decimal="2" /></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td width="150"><input name="checkMoneyMax" loxiaType="number"
						decimal="2" /></td>
				</tr>
				<tr>
				<!-- 销售人员姓名 -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.saler_name" bundle="${lang}" /></td>
					<td><userDepartment:userDepartment bizHall="${bizHall}" id="salerName" name="salerName"
							isChoose="true" /></td>
					<!-- 提交时间区间 -->
					<td class="label"><fmt:message
							key="label.applyDetail.submit_time" bundle="${lang }" /></td>
					<td><input id="submitTimeBegin" loxiaType="date"  name="submitTimeBegin" /></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td><input id="submitTimeEnd" loxiaType="date" name="submitTimeEnd" /></td>
				</tr>
				<tr>
					<!-- 申请状态 -->
					<td class="label"><fmt:message
							key="label.applyDetail.apply_status" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1031"
							name="applyStatus" isChoose="true" /></td>
					<td class="label">
						<fmt:message
							key="label.apply.clientproject.dataRole" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="rolelevel"
							id="roleLevel" name="roleLevel" /></td>
					<%-- <!-- 营业厅   -->
					<td class="label"><fmt:message key="label.person.sign.orgName"
							bundle="${lang}" /></td>
					<td width="150"><bizorg:bizorg compCode="${compCode}"
							name="bizHall" isChoose="true" isBusiness="true" /></td> --%>
					<td class="label"></td>
					<td></td>
					<td align="center" class="label"></td>
					<td></td>
				</tr>
				<!-- 销售团队 
					<td class="label"><fmt:message
							key="label.apply.clientproject.saler_team" bundle="${lang}" /></td>
					<td width="150"><input id="salerTeam" name="salerTeam"
						loxiaType="input" trim="true" /></td>
				-->
				<!-- 企业性质 					
						<td class="label">企业性质</td> 
						<td width="150"><bizoption:bizoption name="workType" 
							biztypekey="1013" isChoose="true" /></td> 
				-->
			</table>
		</form>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
				id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
            <!--
			<button type="button" loxiaType="button" class="confirm" id="btnEdit"
				title="tip：<fmt:message key="tip.button.modify" bundle="${lang}"/>">
				<fmt:message key="button.modify" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				id="applyAppeal"
				title="tip：<fmt:message key="tip.sys.apply.appeal" bundle="${lang}"/>">
				<fmt:message key="button.appeal" bundle="${lang}" />
			</button>
		    -->
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-applylist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>
