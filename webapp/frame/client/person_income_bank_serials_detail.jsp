<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 申请贷款新增页面   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>负债信息</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/person_income_bank_serials_detail.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">自有账户</div>
	<div id="editTabPrivate" loxiaType="edittable">
		<table append="1" width="100%" id="tabPrivate"
			style="text-align: center;">
			<thead>
				<tr>
					<th><input type="checkbox" /></th>
					<th>年月</th>
					<th>开户行</th>
					<th>银行账号</th>
					<th>每月流入</th>
					<th>每月余额</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>合计</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td id="privateSerialsMoney"></td>
					<td id="privateSerialsBalance">-</td>
				</tr>
				<tr>
					<td>平均</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td id="avgprivateSerialsMoney"></td>
					<td id="avgprivateSerialsBalance">-</td>
				</tr>
			</tfoot>
			<tbody id="privateBody">
				<c:forEach items="${privateList}" var="privateList" varStatus="loop">
					<tr>
						<td><input type="checkbox" /></td>
						<td>${privateList.privateDateTime }</td>
						<td>${privateList.openBank }</td>
						<td>${privateList.cardNo }</td>
						<td id="privateMoeny">${privateList.serialsMoney }</td>
						<td id="privateBalance">${privateList.serialsBalance }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tbody>
			</tbody>
		</table>
	</div>
	<br />
	<div class="divBgColor">公司账户</div>
	<div id="editTabComp" loxiaType="edittable">
		<table append="1" width="100%" id="tabComp"
			style="text-align: center;">
			<thead>
				<tr>
					<th><input type="checkbox" /></th>
					<th>年月</th>
					<th>开户行</th>
					<th>银行账号</th>
					<th>每月流入</th>
					<th>每月余额</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>合计</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td id="compSerialsMoney"></td>
					<td id="compSerialsBalance"></td>
				</tr>
				<tr>
					<td>平均</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td id="avgcompSerialsMoney"></td>
					<td id="avgcompSerialsBalance">-</td>
				</tr>
			</tfoot>
			<tbody id="compBody">
				<c:forEach items="${compList}" var="compList" varStatus="loop">
					<tr>
						<td><input type="checkbox" /></td>
						<td>${compList.compDateTime }</td>
						<td>${compList.openBank }</td>
						<td>${compList.cardNo }</td>
						<td id="compMoney">${compList.serialsMoney }</td>
						<td id="compBalance">${compList.serialsBalance }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tbody>
			</tbody>
		</table>
	</div>
</body>
</html>
