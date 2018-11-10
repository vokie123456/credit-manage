<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 申请贷款新增页面   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>收入信息</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/person_income_bank_serials_entry.js'/>"></script>
<style type="text/css">
	input,.ui-loxia-number,td{
		text-align: center;
	}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="submitForm" method="post">
		<div class="divBgColor">自有账户</div>
		<div id="editTabPrivate" loxiaType="edittable">
			<table operation="add,delete" append="1" width="100%" id="tabPrivate">
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
						<td >-</td>
						<td id="privateSerialsMoney"></td>
						<td id="privateSerialsBalance">-</td>
				  </tr>
				  <tr>
				   <td>平均</td>
						<td>-</td>
						<td>-</td>
						<td id="wuxy">-</td>
						<td id="avgprivateSerialsMoney"></td>
						<td id="avgprivateSerialsBalance">-</td>
				  </tr>
				</tfoot>
				<tbody id="privateBody">
					<c:forEach items="${privateList}" var="privateList"
						varStatus="loop">
						<tr>
							<td><input type="checkbox" />
							</td>
							<td><input type="text" loxiaType="input"   onclick='WdatePicker({"dateFmt":"yyyy-MM"})' 
								name="privatePersons.privateDateTime"
								value="${privateList.privateDateTime }" /></td>
							<td><input type="text" loxiaType="input"
								name="privatePersons.openBank" value="${privateList.openBank }" />
								<input type="hidden" id="privateSerialsId"
								name="privatePersons.serialsId"
								value="${privateList.serialsId }" /></td>
							<td><input type="text" loxiaType="input"
								name="privatePersons.cardNo" value="${privateList.cardNo }" /></td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="privatePersons.serialsMoney"
								value="${privateList.serialsMoney }"
								checkmaster="computePrivateMoney" /></td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="privatePersons.serialsBalance"
								value="${privateList.serialsBalance }"
								checkmaster="computePrivateBalance" /></td>
						</tr>
					</c:forEach>
				</tbody>
				<tbody>
					<tr>
						<td><input type="checkbox" /></td>
						<td><input type="text" loxiaType="input"   onclick='WdatePicker({"dateFmt":"yyyy-MM"})' 
							name="privatePersons.privateDateTime" /></td>
						<td><input type="text" loxiaType="input"
							name="privatePersons.openBank" /></td>
						<td><input type="text" loxiaType="input"
							name="privatePersons.cardNo" /></td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="privatePersons.serialsMoney"
							checkmaster="computePrivateMoney" /></td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="privatePersons.serialsBalance"
							checkmaster="computePrivateBalance" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<br />
		<div class="divBgColor">公司账户</div>
		<div id="editTabComp" loxiaType="edittable">
			<table operation="add,delete" append="1" width="100%" id="tabComp">
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
							<td><input type="text" loxiaType="input"   onclick='WdatePicker({"dateFmt":"yyyy-MM"})' 
								name="comps.compDateTime" value="${compList.compDateTime }" /></td>
							<td><input type="text" loxiaType="input"
								name="comps.openBank" value="${compList.openBank }" /> <input
								type="hidden" id="compSerialsId" name="comps.serialsId"
								value="${compList.serialsId }"/></td>
							<td><input type="text" loxiaType="input" name="comps.cardNo"
								value="${compList.cardNo }" /></td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="comps.serialsMoney" value="${compList.serialsMoney }"
								checkmaster="computeCompMoney" /></td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="comps.serialsBalance" value="${compList.serialsBalance }"
								checkmaster="computeCompBalance" /></td>
						</tr>
					</c:forEach>
				</tbody>
				<tbody>
					<tr>
						<td><input type="checkbox" /></td>
						<td><input type="text"  loxiaType="input"   onclick='WdatePicker({"dateFmt":"yyyy-MM"})' 
							name="comps.compDateTime" /></td>
						<td><input type="text" loxiaType="input"
							name="comps.openBank" /></td>
						<td><input type="text" loxiaType="input" name="comps.cardNo" /></td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="comps.serialsMoney" checkmaster="computeCompMoney" /></td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="comps.serialsBalance" checkmaster="computeCompBalance" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitBtn">保存</button>
		</div>
	</form>
</body>
</html>
