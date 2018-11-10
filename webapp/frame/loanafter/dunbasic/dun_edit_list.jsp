<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/dunbasic/dun_edit_list.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="examineListDiv">
		
		<c:if test="${billNum ne 0 }">
		<div class="divBgColor">逾期账单</div>
				<!-- z账单信息 -->
				<table class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0" width="100%">
					<tr class="tabcustomTr"
						style="font-size: 12px; font-weight: normal;">
						<td>账单编号</td>
						<td>本金应收</td>
						<td>本金实收</td>

						<td>利息应收</td>
						<td>利息实收</td>

						<td>罚息应收</td>
						<td>罚息实收</td>

						<c:forEach items="${bilist }" var="it" varStatus="itState">
							<td><bizoptionname:showname biztypekey="1090"
									value="${it.costCode }" />应收</td>
							<td><bizoptionname:showname biztypekey="1090"
									value="${it.costCode }" />实收</td>
						</c:forEach>

						<td>逾期天数</td>
						<td>计划还款日期</td>
						<td>账单状态</td>
					</tr>

					<c:forEach items="${bills }" var="bill">
                        <input type="hidden" value=" ${bill.remark }"
				             id="hiddenRemark${bill.id}" />
						<tr>
							<td>
							<a title="${bill.remark }">${bill.billCode }</a>
							</td>

							<td>${bill.principal }</td>
							<td>${bill.principalPaid }</td>

							<td>${bill.interest }</td>
							<td>${bill.interestPaid }</td>

							<td>${bill.interestFine }</td>
							<td>${bill.interestFinePaid }</td>

							<c:forEach items="${bilist }" var="bi">

								<c:set var="tempLa" value="0"></c:set>
								<c:set var="tempLb" value="0"></c:set>

								<td><c:forEach items="${bill.billItemVoList }" var="it"
										varStatus="itState">
										<c:if test="${it.costCode eq bi.costCode }">
											${it.cost }
											<c:set var="tempLa" value="1"></c:set>
								        </c:if>
									</c:forEach>
									
									<c:if test="${tempLa ne 1 }">0.00</c:if>
								</td>
								<td><c:forEach items="${bill.billItemVoList }" var="it"
										varStatus="itState">
										<c:if test="${it.costCode eq bi.costCode }">
											${it.costPaid }
											<c:set var="tempLb" value="1"></c:set>
								        </c:if>
									</c:forEach>
									<c:if test="${tempLb ne 1 }">0.00</c:if>
									</td>

							</c:forEach>


							<td>${bill.overDays }</td>

							<td><fmt:formatDate value="${bill.expiredDate }" type="both"
									pattern="yyyy-MM-dd" /></td>
							<td><bizoptionname:showname biztypekey="1094"
									value="${bill.status }" /></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		
		
		
		
		<div class="divBgColor">催收信息</div>
		<input type="hidden" id="clientId" value="${clientId }" />
		<input type="hidden" id="detail" value="${detail }" />
		<div id="listDiv">
			<table  class="textalignCenter tabcustom0" cellpadding="0" cellspacing="0"
				width="100%">
					<tr class="custr custrBag" >
				<th>催收人</th>
				<th>催收方式</th>
				<th>催收状态</th>
				<th>催收日期</th>
				<th>文件</th>
				<th class="tabBorderRight0">操作</th>
				</tr>
				<c:forEach items="${list}" var="dun" varStatus="loop">
				    <input type="hidden" id="flag${loop.index }" value="${ dun.flag}" />
					<tr class="custr">
						<td><showusername:showusername value="${dun.dunWho }" /> </td>
						<td><bizoptionname:showname biztypekey="1041"
								value="${dun.dunManner }" /></td>
						<td><bizoptionname:showname biztypekey="1040"
								value="${dun.dunStatus }" /></td>
						<td><fmt:formatDate value="${dun.dunTime }"
								pattern="yyyy-MM-dd" /></td>
						<td class="tdCla"><label id="manager${loop.index}"
							style="color: blue; text-decoration: underline;"
							onclick="displayTr(${loop.index},${dun.dunId })">管理</label></td>
						<c:choose>
							<c:when test="${dun.flag==true&&detail=='edit' }">
								<td class="tabBorderRight0"><label  class="fileList"
									onclick="edit(${dun.dunId},${clientId })">编辑</label></td>
							</c:when>
							<c:otherwise>
								<td class="tabBorderRight0"><label style="color: blue; text-decoration: underline;"
									onclick="detail(${dun.dunId },${clientId })">详情 </label></td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr id="managerTr${loop.index}" class="disNone">
						<td colspan="7" class="bordertop">
							<table width="500" style="border: 0px;">
								<tr>
									<td align="left" width="100">${dun.flag==true?"添加文件：":"" }</td>
									<td align="left">
										<form id="upLoadForm${loop.index}" method="post"
											action="<%=request.getContextPath()%>/loanafter/dunbasic/uploadFile.do"
											enctype="multipart/form-data"
											target="temp${loop.index}">
											<!-- 用来作为参数传递 -->
											<input type="hidden" name="dunId"
												value="${dun.dunId }" /> <input type="hidden"
												name="clientId" value="${dun.clientId }" />
											<c:if test="${dun.flag==true&&detail=='edit' }">
												<input type="file" name="myfiles"
													onchange="upload(${loop.index},${dun.dunId })" />
											</c:if>
										</form>
									</td>
									<td class="tabBorderRight0"><iframe id="temp${loop.index}"
										  name="temp${loop.index}" class="disNone"></iframe></td>
								</tr>
								<tr>
								</tr>
							</table>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<c:if test="${flag==true && detail=='edit' }">
			<div class="tabbuttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm" id="add">添加催收信息
				</button>
			</div>
		</c:if>
	</div>
	<div id="loadDiv"></div>
	<script>
		var v = "${dun.otherAgent }";
		v = ',' + v + ',';
		var s = v.split(',');
		$j('#otherAgent option').each(
			function() {
				if (v.indexOf(','+ this.value+ ',') != -1)
					this.selected = true;
		});
	</script>
</body>
</html>
