<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<style type="text/css">
.label {
	text-align: left;
}
</style>

<div class="label">董事、高管</div>
<table border="1" cellpadding="0" cellspacing="0"
					width="100%">
	<tr>
		<td class="label">姓名</td>
		<td class="label">职务</td>
		<td class="label">年龄</td>
		<td class="label">学历</td>
		<td class="label">职称</td>
		<td class="label">个人持股比例</td>
	</tr>
	<c:forEach items="${relaMageList }" var="mgr">
		<tr>
			<td>${mgr.relationobjName }</td>
			<td>${mgr.position }</td>
			<td>${mgr.age }</td>
			<td><bizoptionname:showname biztypekey="1008"
					value="${mgr.educationLevel }" /></td>
			<td>${mgr.jobTitle }</td>
			<td>${mgr.shareStock }</td>
		</tr>
	</c:forEach>
</table>
</br>
<div class="label">股东</div>
<table border="1" cellpadding="0" cellspacing="0"
					width="100%">
	<tr>
		<td class="label">股东名称</td>
		<td class="label">出资额</td>
		<td class="label">占比</td>
		<td class="label">出资方式</td>
		<td class="label">联系地址</td>
		<td class="label">电话</td>
	</tr>
	<%--   从地址中取联系人   --%>
	<c:forEach items="${relationList }" var="addr">
		<tr>
			<td>${addr.relationobjName }</td>
			<td>${addr.investmentAmount }</td>
			<td>${addr.shareStock }</td>
			<td>${addr.investmentWay }</td>
			<td><linkageshow:show type="province" name="province1"
					property="province" /> <linkageshow:show type="city" name="city1"
					property="city" /> <linkageshow:show type="district" name="district1"
					property="district" /> ${addr.town1 }</td>
			<td>${addr.telephone }</td>
		</tr>
	</c:forEach>
</table>

