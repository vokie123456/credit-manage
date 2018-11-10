<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款申请查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/apply/apply_list.js'/>"></script>
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
					<!-- 客户姓名 client.client_basic  -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
					<td width="150"><input id="clientName" name="clientName"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 所属行业   -->
					<td class="label"><fmt:message
							key="label.applyDetail.work_industry" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption name="workIndustry"
							biztypekey="1014" isChoose="true" /></td>
					<!-- 证件类型  -->
					<td class="label"><fmt:message
							key="label.apply.clientproject.card_type" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1007"
							name="cardType" isChoose="true" /></td>
					<!--证件号码-->
					<td class="label"><fmt:message
							key="label.apply.clientproject.card_no" bundle="${lang}" /></td>
					<td width="150"><input id="cardNo" name="cardNo"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 申请状态 -->
					<td class="label"><fmt:message
							key="label.applyDetail.apply_status" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1031"
							name="applyStatus" isChoose="true" /></td>
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
					<td><userDepartment:userDepartment bizHall="${bizHall}"
							id="salerName" name="salerName" isChoose="true" /></td>
					<!-- 提交时间区间 -->
					<td class="label"><fmt:message
							key="label.applyDetail.submit_time" bundle="${lang }" /></td>
					<td><input id="applySubmitBegin" loxiaType="date"
						name="applySubmitBegin" /></td>
					<td align="center" class="label"><fmt:message
							key="label.credit.list.query.to" bundle="${lang}" /></td>
					<td><input id="applySubmitEnd" loxiaType="date"
						name="applySubmitEnd" /></td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.apply.clientproject.dataRole" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="rolelevel"
							id="roleLevel" name="roleLevel" /></td>
					<%-- <!-- 营业厅   -->
					<td class="label"><fmt:message key="label.person.sign.orgName"
							bundle="${lang}" /></td>
					<td width="150"><bizorg:bizorg compCode="${compCode}"
							name="bizHall" isChoose="true" isBusiness="true" /></td>
					<td class="label"></td> --%>
					<td></td>
					<td align="center" class="label"></td>
					<td></td>
				</tr>
				<!-- 户籍类型   
					<td class="label"><fmt:message 
							key="label.apply.clientproject.household_type" bundle="${lang}" /></td> 
 					<td width="150"><bizoption:bizoption biztypekey="1005"
 							name="householdType" isChoose="true" /> </select></td> 
 					-->
				<!-- 贷款产品名称 
					<td class="label"><fmt:message 
							key="label.apply.clientproject.prod_name" bundle="${lang}" /></td> 
 					<td width="150"><input id="prodName" name="prodName" 
 						loxiaType="input" trim="true" /></td> 
 					-->
				</tr>
				<tr>
					<!--销售团队  
 					<td class="label"><fmt:message 
 							key="label.apply.clientproject.saler_team" bundle="${lang}" /></td> 
					<td width="150"><input id="salerTeam" name="salerTeam" 
 						loxiaType="input" trim="true" /></td>
 				-->
					<!-- 业务状态 
 					<td class="label"><fmt:message 
							key="label.apply.clientproject.project_stauts" bundle="${lang}" /></td>
 					<td width="150"><bizoption:bizoption biztypekey="1031" 
 							name="projectStauts" isChoose="true" /></td> 
 				-->

					<!-- 销售人员姓名  User_info里面的user_code 
					<td class="label"><fmt:message 
							key="label.apply.clientproject.saler_name" bundle="${lang}" /></td> 
					<td width="150"><input id="salerName" name="salerName" 
						loxiaType="input" trim="true" /></td> 
				</tr>
				-->
					<!--  
				<tr> 
					<td class="label"><fmt:message 
							key="label.apply.clientproject.apply_submit_time" 
							bundle="${lang}" /></td> 
					<td><input id="apply_begin" loxiaType="date" 
						readonly="readonly" name="apply_begin" checkmaster="setMinDate" /></td> 
 					<td align="center" class="label">到</td> 
 					<td><input id="apply_end" loxiaType="date" readonly="readonly" 
						name="apply_end" checkmaster="setMaxDate" /></td> 
 					<td colspan="2"></td> 
				</tr> 
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
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
				id="applyEdit">申请录入</button>
            
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
