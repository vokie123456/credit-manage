<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/credit/credit_list.js'/>"></script>
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
	<div class="divBgColor"><fmt:message key="label.credit.list.title" bundle="${lang}" />
	</div>
	<form id="creditQueryForm" method="post">
	
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

				<!-- 证件类型  -->
				<td class="label"><fmt:message
						key="label.apply.clientproject.card_type" bundle="${lang}" /></td>
				<td width="150"><select name="cardType" id="cardType" class="ui-loxia-default ui-corner-all"></select>
				</td>
			</tr>
			<tr>
				<!--证件号码-->
				<td class="label"><fmt:message
						key="label.apply.clientproject.card_no" bundle="${lang}" /></td>
				<td width="150"><input id="cardNo" name="cardNo"
					loxiaType="input" trim="true" /></td>
				
				<!--申请金额  -->
				<td class="label"><fmt:message
						key="label.credit.list.query.applyMoney" bundle="${lang}" /></td>
				<td width="150"><input id="applyMoney" name="applyMoney"
					loxiaType="number" trim="true" />
				</td>
				
				<!--授信金额  -->
				<td class="label"><fmt:message
						key="label.credit.list.query.creditMoney" bundle="${lang}" /></td>
				<td width="150"><input id="creditMoney" name="creditMoney"
					loxiaType="number" trim="true" />
				</td>
			</tr>
			
			<tr>
			   <!--授信期限  -->
				<td class="label"><fmt:message
						key="label.credit.list.query.creditPeriods" bundle="${lang}" /></td>
				<td width="150"><input id="creditPeriods" name="creditPeriods"
					loxiaType="date" trim="true" />
				</td>
   
               <!-- 授信人员 -->
				<td class="label"><fmt:message
						key="label.credit.list.query.creditAgent" bundle="${lang}" /></td>
				<td width="150">
				<userDepartment:userDepartment bizHall="${bizHall}" 
				 id="creditAgent" name="creditAgent" isChoose="true"/>
				</td>
					
			   <!-- 授信完成日期 -->
				<td class="label"><fmt:message
						key="label.credit.list.query.finishDate" bundle="${lang}" /></td>
				<td width="150"><input id="finishDate" name="finishDate"
					loxiaType="date" trim="true" /></td>
			</tr>
			
			<tr>
			   <!--项目状态  -->
				<td class="label"><fmt:message
						key="label.credit.list.query.projectStatus" bundle="${lang}" /></td>
				<td width="150">
				<bizoption:bizoption biztypekey="1100"
									id="projectStatus" name="projectStatus" isChoose="true" />
				
				</td>
   
			</tr>
		
		</table>
	
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
		
	</div>

	</form>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-creditList"></table>
	<div id="pager"></div>
	
</body>
</html>
