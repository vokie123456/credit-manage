<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款调查查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/loanproduct/loanproduct_list.js'/>"></script>
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
		<!-- <div class="divBgColor">
			<fmt:message key="label.search.param" bundle="${lang}" />
		</div> -->
		<form id="loanproductListForm" method="post">
			<table>
				<tr>
					<!-- 产品名称-->
					<td class="label"><fmt:message
							key="label.loan.product.info.pro_name" bundle="${lang}" /></td>
					<td width="150"><input id="prodName" name="prodName"
						loxiaType="input" trim="true" /></td>
							<!-- 是否启用-->
					<td class="label"><fmt:message
							key="label.loan.product.info.loan_start" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1001"
							id="ifValid" name="ifValid"  isChoose="true"/></td>
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
					<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.button.addproduct" bundle="${lang}"/>"
					id="addproduct">
					<fmt:message key="button.addproduct" bundle="${lang}" />
				</button>
			</div>
			
		</form>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-loanproductlist"></table>
		<div id="pager"></div>
	</div>
    
</body>
</html>