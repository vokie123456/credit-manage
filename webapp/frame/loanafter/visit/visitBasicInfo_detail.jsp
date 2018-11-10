<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 项目回访基本信息查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.research.detail.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/visit/visitBasicInfo_detail.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.div_right {
	right: 40px;
	position: absolute;
}

.div_space {
	height: 40px;
}

ul {
	padding: 0px;
}

li {
	display: inline;
	padding-right: 50px;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="div_out"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#basicDetail" id="a_check">基本信息</a>
			</li>
			<!-- 
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_client_info'>客户详细信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_common_info'>共同还款人详细信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_updown'>电子文档</a></li>
			 -->

		</ul>
		<div id="basicDetail"
			class="ui-tabs-panel ui-widget-content ui-corner-bottom">
			<div class="divBgColor">贷后检查基本信息</div>
			<div class="content_middle">
				<table class="col3">
					<tr>
						<td class="label">合同编号：</td>
						<td class="content">${clientProjectDetailsVo.contractId}</td>
						<td class="label">项目编号：</td>
						<td class="content">${clientProjectDetailsVo.projectCode }</td>
					</tr>
					<tr>
						<td class="label">产品名称：</td>
						<td class="content">${clientProjectDetailsVo.prodName }</td>
						<td class="label">项目状态：</td>
						<td class="content" id="proStatus">${clientProjectDetailsVo.projectStautsStr }</td>
					</tr>
					<tr>
						<td class="label">银行账号：</td>
						<td class="content">${clientProjectDetailsVo.bankCard }</td>
						<td class="label">客户名称：</td>
						<td class="content">${clientProjectDetailsVo.clientName }</td>
					</tr>
					<tr>
						<td class="label">证件类型：</td>
						<td class="content">${clientProjectDetailsVo.cardTypeStr }</td>
						<td class="label">证件号码：</td>
						<td class="content">${clientProjectDetailsVo.cardNo }</td>
					</tr>
					<tr>
						<td class="label">贷款金额：</td>
						<td class="content">${clientProjectDetailsVo.lendMoney }</td>
						<td class="label">贷款期数：</td>
						<td class="content">${clientProjectDetailsVo.periods }</td>
					</tr>
					<tr>
						<td class="label">已出期数：</td>
						<td class="content">${clientProjectDetailsVo.alreadyPeriods }</td>
						<td class="label">诉讼日期：</td>
						<td class="content"></td>
					</tr>
					<tr>
						<td class="label">放款日期：</td>
						<td class="content" id="proStatus">${clientProjectDetailsVo.lendingTimeStr }</td>
						<td class="label">首期还款日：</td>
						<td class="content">${clientProjectDetailsVo.firstRepayDate }</td>
					</tr>
					<tr>
						<td class="label">结清日期：</td>
						<td class="content">${clientProjectDetailsVo.endTimeStr }</td>
					</tr>
				</table>
			</div>

			<div class="div_space">
				<input type="hidden" id="oneProId"
					value="${visitBasicInfoVo.projectID }" /> <input type="hidden"
					id="oneCliId" value="${visitBasicInfoVo.clientID }" /> <input
					type="hidden" id="visitId" value="${visitId }" /> <input
					type="hidden" name="projectId" id="projectId"
					value="${visitBasicInfoVo.projectID }" />
			</div>

			<div id="basicDetail">
				<form id="submitForm" method="post">
					<div class="title btnDiv">
						贷后检查情况 <input class="confirm" loxiaType="button" type="button"
							value="添加检查记录" id="addVisitRecord"
							style="float: right; font-size: 12px;" /> <input type="hidden"
							name="recordSize" id="recordSize" value="${recordSize }" />
					</div>
					<div id="formRecord">

						<c:choose>
							<c:when test="${!empty visitRecordList }">
								<c:forEach items="${visitRecordList}" var="visitRecord"
									varStatus="loop">

									<div id="visitRecord${loop.index}">
										<input type="hidden" id="id"
											name="returnVistList[${loop.index}].id"
											value="${visitRecord.id } " /> <input type="hidden"
											id="projectID" name="returnVistList[${loop.index}].projectId"
											value="${visitBasicInfoVo.projectID }" /> <input
											type="hidden" id="visitId"
											name="returnVistList[${loop.index}].visitId"
											value="${visitId }" /> <input type="hidden" id="visitStatus"
											value="${visitStatus }" /> <br /> <br />
										<table class="col3">
											<tr>
												<td colspan="3"></td>
												<td><input class="confirm btnDiv" loxiaType="button"
													type="button" value="删除调查记录" id="delVisitRecord"
													onclick="delReturnVisit('${visitRecord.id }','visitRecord${loop.index}')" /></td>
											</tr>
											<tr>
												<td class="label">
													<!-- 回访后贷款状态 -->贷后检查贷款状态：
												</td>
												<td class="content"><bizoption:bizoption
														id="fiveStatus${loop.index}" biztypekey="1038"
														name="returnVistList[${loop.index}].fiveStatus"
														isChoose="true" selected="${visitRecord.fiveStatus }"
														mandatory="true" /></td>
												<td class="label">
													<!-- 调查方式 --> 检查方式：
												</td>
												<td class="content"><bizoption:bizoption
														id="methodOfInvestigation${loop.index}" biztypekey="1147"
														name="returnVistList[${loop.index}].methodOfInvestigation"
														isChoose="true"
														selected="${visitRecord.methodOfInvestigation }"
														mandatory="true" /></td>
											</tr>
											<tr>
												<!-- 回访人 -->
												<td class="label">贷后检查人：</td>

												<td class="content"><input type="hidden"
													id="visitAgent"
													name="returnVistList[${loop.index}].visitAgent"
													value="${visitRecord.visitAgent }" /> <user:user
														name="visitAgent" compCode="${compCode }"
														userId="${userId }" bizHall="${bizHall }"
														selected="${visitRecord.visitAgent }" disabled="disabled" /></td>
												<td class="label">
													<!-- 回访时间 --> 贷后检查时间：
												</td>
												<td class="content"><input 
													loxiaType="date"
													name="returnVistList[${loop.index}].infoTime" trim="true"
													value="${visitRecord.infoTime }" /></td>
											</tr>
											<tr>
												<td class="label">其他检查人：</td>
												<td colspan="3"><select
													class="ui-loxia-default ui-corner-all ui-loxia-highlight"
													type="select"
													name="returnVistList[${loop.index}].otherAgent"
													id="otherAgent${loop.index}" multiple="multiple"
													style="background: #FFF; width: 250px;">
														<c:forEach items="${agentList }" var="item">
															<option value="${item.userId }">${item.userName }</option>
														</c:forEach>
												</select></td>
											</tr>
											<tr>
												<td class="label">贷后检查情况：</td>
												<td width="250" colspan="3"><textarea rows="3"
														name="returnVistList[${loop.index}].visitComments"
														id="visitComments${loop.index}"
														class="ui-loxia-default ui-corner-all"
														aria-disabled="false">${visitRecord.visitComments }</textarea>
												</td>
											</tr>
										</table>
									</div>
									<script>
										var v = "${visitRecord.otherAgent }";
										v = ',' + v + ',';
										var arr = v.split(',');
										$j('#otherAgent${loop.index} option')
												.each(
														function() {
															if (v
																	.indexOf(','
																			+ this.value
																			+ ',') != -1)
																this.selected = true;
														});
									</script>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div id="visitRecord0">
									<div class="label">
										<table class="col3">
											<tr>
												<input type="hidden" id="projectID"
													name="returnVistList[0].projectId"
													value="${visitBasicInfoVo.projectID }" />
												<input type="hidden" id="clientID"
													name="returnVistList[0].clientID"
													value="${visitBasicInfoVo.clientID }" />
												<input type="hidden" id="visitId"
													name="returnVistList[0].visitId" value="${visitId }" />
												<input type="hidden" id="visitStatus"
													value="${visitStatus }" />
											</tr>
										</table>
									</div>
									<table class="col3">
										<tr>
											<td class="label">
												<!-- 回访后贷款状态 -->贷后检查贷款状态：
											</td>
											<td class="content"><bizoption:bizoption id="fiveStatus"
													biztypekey="1038" name="returnVistList[0].fiveStatus"
													isChoose="true" mandatory="true" /> <label
												class="del_mandatory">&nbsp;&nbsp;*</label></td>
											<td class="label">
												<!-- 调查方式 --> 检查方式：
											</td>
											<td class="content"><bizoption:bizoption
													id="methodOfInvestigation" biztypekey="1147"
													name="returnVistList[0].methodOfInvestigation"
													isChoose="true" mandatory="true" /> <label
												class="del_mandatory">&nbsp;&nbsp;*</label></td>
										</tr>
										<tr>
											<!-- 回访人 -->
											<td class="label">贷后检查人：</td>

											<td class="content"><input type="hidden" id="visitAgent"
												name="returnVistList[0].visitAgent"
												value="${visitAgentParent }" /> <select loxiaType="select"
												disabled="disabled">
													<c:forEach var="item" items="${accountManagerList }">
														<option value="${item.userId }"
															<c:if test="${item.userId==visitAgentParent}">selected='selected'</c:if>>${item.userName }</option>
													</c:forEach>
											</select></td>
											<td class="label">
												<!-- 回访时间 --> 贷后检查时间：
											</td>
											<td class="content"><input
												loxiaType="date" name="returnVistList[0].infoTime"
												trim="true" mandatory="true" /> <label
												class="del_mandatory">&nbsp;&nbsp;*</label></td>
										</tr>
										<tr>
											<td class="label">其他检查人：</td>
											<td colspan="3"><select
												class="ui-loxia-default ui-corner-all ui-loxia-highlight"
												type="select" name="returnVistList[0].otherAgent"
												id="otherAgent0" multiple="multiple"
												style="background: #FFF; width: 250px;">
													<c:forEach items="${agentList }" var="item">
														<option value="${item.userId }">${item.userName }</option>
													</c:forEach>
											</select></td>
										</tr>
										<tr>
											<td class="label">贷后检查情况：</td>
											<td class="content" colspan="3"><textarea rows="3"
													name="returnVistList[0].visitComments" id="visitComments"
													loxiaType="input" trim="true"></textarea></td>
										</tr>
									</table>
								</div>
							</c:otherwise>
						</c:choose>

					</div>


					<br /> <br />
					<div style="text-align: center" class="btnDiv">
						<input type="submit" class="confirm" id="saveVisit" value="保存检查"
							loxiaType="button" /> <input type="submit" class="confirm"
							id="submitVisit" value="完成检查" loxiaType="button" />
					</div>
				</form>
			</div>

			<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
				id="div_dkStatus"></div>
			<div class="ui-tabs-panel ui-widget-content
			ui-corner-bottom"
				id="div_zcStatus"></div>

		</div>

		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>
</body>
</html>
