<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 回访情况模板 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>

<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<br />
<br />
<div id="visitRecord${count}">
	<input type="hidden" id="projectID"
		name="returnVistList[${count}].projectId" value="${projectId }" /> <input
		type="hidden" id="clientID" name="returnVistList[${count}].clientId"
		value="${clientId }" /> <input type="hidden" id="visitId"
		name="returnVistList[${count}].visitId" value="${visitId }" />
	<table class="col3">
		<tr>
			<td colspan="4" style="text-align: right;"><input type="button"
				value="删除调查记录" id="delVisitRecord" loxiaType="button"
				class="confirm" onclick="delReturnVisit(null,'visitRecord${count}')" /></td>
			<!-- 
			<td><input type="button" value="修改回访记录" id="uptVisitRecord"
				loxiaType="button" class="confirm"
				onclick="uptReturnVisit(${visitRecord.id },${count })" /></td>
			 -->
		</tr>
		<tr>
			<td class="label">
				<!-- 回访后贷款状态 --> 贷后调查贷款状态：
			</td>
			<td class="content"><bizoption:bizoption id="fiveStatus"
					biztypekey="1038" name="returnVistList[${count}].fiveStatus"
					isChoose="true" mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
			</td>
			<td class="label">
				<!-- 贷后项目状态 --> 调查方式：
			</td>
			<td class="content"><bizoption:bizoption
					id="methodOfInvestigation" biztypekey="1147"
					name="returnVistList[${count}].methodOfInvestigation"
					isChoose="true" mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
			</td>
		</tr>
		<tr>
			<!-- 回访人 -->
			<td class="label">贷后调查人：</td>

			<td class="content"><select loxiaType="select" id="visitAgent"
				name="returnVistList[${count}].visitAgent" disabled="disabled">

					<c:forEach var="item" items="${accountManagerList }">
						<option value="${item.userId }"
							<c:if test="${item.userId==visitAgent}">selected='selected'</c:if>>${item.userName }</option>
					</c:forEach>
			</select></td>
			<td class="label">
				<!-- 回访时间 -->贷后调查时间：
			</td>
			<td class="content"><input
				loxiaType="date"
				name="returnVistList[${count}].infoTime" trim="true"
				mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
			</td>
		</tr>
		<tr>
			<td class="label">其他调查人：</td>
			<td colspan="3"><select
				class="ui-loxia-default ui-corner-all ui-loxia-highlight"
				type="select" name="returnVistList[${count}].otherAgent"
				id="otherAgent${count}" multiple="multiple"
				style="background: #FFF; width: 250px;">
					<c:forEach items="${agentList }" var="item">
						<option value="${item.userId }">${item.userName }</option>
					</c:forEach>
			</select></td>
		</tr>
		<tr>
			<td class="label">贷后调查情况：</td>
			<td class="content" colspan="3"><textarea rows="3"
					name="returnVistList[${count}].visitComments" id="visitComments"
					class="ui-loxia-default ui-corner-all" aria-disabled="false"></textarea></td>
		</tr>
	</table>
	<script>
		$j("#otherAgent${count}").multiselect({
			selectedList : 2
		});
	</script>
</div>