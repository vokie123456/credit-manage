<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<div id="formdetail">
	<input type="hidden" id="projectId" name="projectId"
		value="${applyPersonBasic.projectId}" /> <input type="hidden"
		id="applyId" name="applyId" value="${applyId}" />
	<!-- 贷款信息-->
	<div class="divBgColor">
		<fmt:message key="label.apply.loan" bundle="${lang}" />
	</div>
	<table class="col3">
		<tr>
			<!-- 客户来源 applyPersonBasic.clientFrom 键值对数据 -->
			<td class="label"><fmt:message
					key="label.applyDetail.clientFrom" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1004"
					name="applyPersonBasic" property="clientFrom" /></td>
			<!-- 希望贷款金额 applyPersonBasic.loanHopeMoney  -->
			<td class="label"><fmt:message
					key="label.applyDetail.loanHopeMoney" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.loanHopeMoney}</td>
		</tr>
		<tr>
			<!-- 贷款用途 applyPersonBasic.loanPurpose 键值对数据 -->
			<td class="label"><fmt:message
					key="label.applyDetail.loanPurpose" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1023"
					name="applyPersonBasic" property="loanPurpose" /></td>
			<%-- 			<!-- 贷款期限 applyPersonBasic.loanPeriod -->
			<td class="label"><fmt:message
					key="label.applyDetail.loanPeriod" bundle="${lang}" /></td>
			<td class="content" align="left"><bizoptionname:showname
					biztypekey="1024" name="applyPersonBasic" property="loanPeriod" />
			</td> --%>
			<!-- 信息来源  applyPersonBasic.infoFrom -->
			<td class="label"><fmt:message key="label.applyDetail.infoFrom"
					bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1022"
					name="applyPersonBasic" property="infoFrom" /></td>
		</tr>
		<tr>
			<!-- 工作流程  -->
			<td class="label"><fmt:message key="label.applyDetail.wf_code"
					bundle="${lang}" /></td>
			<td class="content">${project.wfName}</td>

			<!-- 产品名称  -->
			<td class="label"><fmt:message
					key="label.loan.product.loan.name" bundle="${lang}" /></td>
			<td class="content">${project.prodName}</td>
		</tr>

	</table>
	<div class="divBgColor">
		<fmt:message key="label.apply.basic" bundle="${lang}" />
	</div>
	<table class="col3">
		<tr>
			<!-- 证件类型  applyPersonBasic.cardType-->
			<td class="label"><fmt:message key="label.applyDetail.cardType"
					bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1007"
					name="applyPersonBasic" property="cardType" /></td>
			<!-- 证件号码  applyPersonBasic.cardNo-->
			<td class="label"><fmt:message key="label.applyDetail.cardNo"
					bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.cardNo}</td>
		</tr>
		<tr>
			<!-- 客户姓名  applyPersonBasic.clientName -->
			<td class="label"><fmt:message
					key="label.applyDetail.clientName" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.clientName}</td>
			<!-- 户籍类型  applyPersonBasic.household_type-->
			<td class="label"><fmt:message
					key="label.applyDetail.household_type" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1005"
					name="applyPersonBasic" property="householdType" /></td>
		</tr>
		<tr>
			<!-- 出生日期  applyPersonBasic.birthday-->
			<td class="label"><fmt:message key="label.applyDetail.birthday"
					bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.birthday}</td>
			<!-- 性别  applyPersonBasic.sex-->
			<td class="label"><fmt:message key="label.applyDetail.sex"
					bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1006"
					name="applyPersonBasic" property="sex" /></td>
		</tr>
		<tr>
			<!-- 手机号码  applyPersonBasic.mobilePhone-->
			<td class="label"><fmt:message
					key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.mobilePhone}</td>
			<td class="label"><fmt:message key="label.applyDetail.im"
					bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.im}</td>
		</tr>
		<tr>
			<!-- 学历  applyPersonBasic.educationLevel-->
			<td class="label"><fmt:message
					key="label.applyDetail.educationLevel" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1008"
					name="applyPersonBasic" property="educationLevel" /></td>
			<!-- 婚姻状况  applyPersonBasic.maritalStatus-->
			<td class="label"><fmt:message
					key="label.applyDetail.maritalStatus" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1009"
					name="applyPersonBasic" property="maritalStatus" /></td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.applyDetail.address1"
					bundle="${lang}" /></td>
			<td colspan="3"><table class="col3">
					<tr>
						<c:forEach items="${relationMap}" var="m">
							<!-- 取出关系是本人的 -->
							<c:if test="${m.key.relationType=='102011'}">
								<!-- 地址信息循环 -->
								<c:forEach items="${m.value}" var="address">
									<c:if test="${address.addrType=='102111'}">
										<td class="content"><linkageshow:show type="province"
												name="address" property="province" /></td>
										<td class="content"><linkageshow:show type="city"
												name="address" property="city" /></td>
										<td class="content"><linkageshow:show type="district"
												name="address" property="district" /></td>
										<td class="content">${address.town}</td>

									</c:if>
								</c:forEach>
							</c:if>
						</c:forEach>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.applyDetail.address2"
					bundle="${lang}" /></td>
			<td colspan="3"><table class="col3">
					<tr>
						<c:forEach items="${relationMap}" var="m">
							<!-- 取出关系是本人的 -->
							<c:if test="${m.key.relationType=='102011'}">
								<!-- 地址信息循环 -->
								<c:forEach items="${m.value}" var="address">
									<c:if test="${address.addrType=='102112'}">
										<td class="content"><linkageshow:show type="province"
												name="address" property="province" /></td>
										<td class="content"><linkageshow:show type="city"
												name="address" property="city" /></td>
										<td class="content"><linkageshow:show type="district"
												name="address" property="district" /></td>
										<td class="content">${address.town}</td>

									</c:if>
								</c:forEach>
							</c:if>
						</c:forEach>
					</tr>
				</table></td>
		</tr>
		<tr>
			<!-- 住房条件 applyPersonBasic.houseCondition -->
			<td class="label"><fmt:message
					key="label.applyDetail.houseCondition" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1010"
					name="applyPersonBasic" property="houseCondition" /></td>
			<!-- 现地址入住时间  applyPersonBasic.houseBegin-->
			<td class="label"><fmt:message
					key="label.applyDetail.houseBegin" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.houseBegin}</td>
		</tr>
		<tr>
			<!-- 产权房状况  applyPersonBasic.houseStatus -->
			<td class="label"><fmt:message
					key="label.applyDetail.houseStatus" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1011"
					name="applyPersonBasic" property="houseStatus" /></td>
			<td class="label">住房支出：</td>
			<td class="content">${applyPersonBasic.houseExpend}</td>
		</tr>
		<!-- 即使通讯方式  applyPersonBasic.im-->
		<tr>
			<!-- 电子邮箱  applyPersonBasic.email-->
			<td class="label"><fmt:message key="label.applyDetail.email"
					bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.email}</td>
			<!-- 社保信息  applyPersonBasic.socialSecurity-->
			<td class="label"><fmt:message
					key="label.applyDetail.socialSecurity" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.socialSecurity}</td>
		</tr>
		<tr>
			<!-- 公积金  applyPersonBasic.accumulationFund-->
			<td class="label"><fmt:message
					key="label.applyDetail.accumulationFund" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.accumulationFund}</td>
			<!-- 其他信息 applyPersonBasic.otherInfo-->
			<td class="label"><fmt:message key="label.applyDetail.otherInfo"
					bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.otherInfo}</td>
		</tr>
	</table>
	<div class="divBgColor">
		<fmt:message key="label.apply.work" bundle="${lang}" />
	</div>

	<table class="col3">
		<tr>
			<!-- 工作单位 applyPersonBasic.workUnit-->
			<td class="label"><fmt:message key="label.applyDetail.workUnit"
					bundle="${lang}" /></td>
			<td class="content" align="left">${applyPersonBasic.workUnit}</td>
			<!-- 现任职部门 applyPersonBasic.workunitDept -->
			<td class="label"><fmt:message
					key="label.applyDetail.workunitDept" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.workunitDept}</td>
		</tr>
		<tr>
			<!-- 工作职位applyPersonBasic.workunitPosition -->
			<td class="label"><fmt:message
					key="label.applyDetail.workunitPosition" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.workunitPosition}</td>
			<!-- 参加工作时间  applyPersonBasic.workBegin-->
			<td class="label"><fmt:message key="label.applyDetail.workBegin"
					bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.workBegin}</td>
		</tr>
		<tr>
			<!-- 单位性质 applyPersonBasic.workunitType -->
			<td class="label"><fmt:message
					key="label.applyDetail.workunitType" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1013"
					name="applyPersonBasic" property="workunitType" /></td>

			<!-- 单位行业 applyPersonBasic.workunitIndustry -->
			<td class="label"><fmt:message
					key="label.applyDetail.workunitIndustry" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1014"
					name="applyPersonBasic" property="workunitIndustry" /></td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.applyDetail.address3"
					bundle="${lang}" /></td>
			<td colspan="3">
				<table class="col3">
					<tr>
						<c:forEach items="${relationMap}" var="m">
							<!-- 取出关系是本人的 -->
							<c:if test="${m.key.relationType=='102011'}">
								<!-- 地址信息循环 -->
								<c:forEach items="${m.value}" var="address">
									<c:if test="${address.addrType=='102113'}">
										<td class="content"><linkageshow:show type="province"
												name="address" property="province" /></td>
										<td class="content"><linkageshow:show type="city"
												name="address" property="city" /></td>
										<td class="content"><linkageshow:show type="district"
												name="address" property="district" /></td>
										<td class="content">${address.town}</td>

									</c:if>
								</c:forEach>
							</c:if>
						</c:forEach>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<!-- 岗位级别  applyPersonBasic.workunitPost-->
			<td class="label"><fmt:message
					key="label.applyDetail.workunitPost" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1012"
					name="applyPersonBasic" property="workunitPost" /></td>
			<!-- 单位规模 applyPersonBasic.workunitSize -->
			<td class="label"><fmt:message
					key="label.applyDetail.workunitSize" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1015"
					name="applyPersonBasic" property="workunitSize" /></td>
		</tr>
	</table>
	<div class="divBgColor">
		<fmt:message key="label.apply.income" bundle="${lang}" />
	</div>

	<table class="col3">
		<tr>
			<!-- 工资收入  applyPersonBasic.incomeWorkunitMonth -->
			<td class="label"><fmt:message
					key="label.applyDetail.incomeWorkunitMonth" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.incomeWorkunitMonth}</td>
			<!-- 每月发薪日  applyPersonBasic.incomeWorkunitDate -->
			<td class="label"><fmt:message
					key="label.applyDetail.incomeWorkunitDate" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.incomeWorkunitDay}</td>
		</tr>
		<tr>
			<!-- 银行代发  applyPersonBasic.incomeWorkunitBank -->
			<td class="label"><fmt:message
					key="label.applyDetail.incomeWorkunitBank" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.incomeWorkunitBank}</td>
			<!-- 现金 applyPersonBasic.incomeWorkunitCash -->
			<td class="label"><fmt:message
					key="label.applyDetail.incomeWorkunitCash" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.incomeWorkunitCash}</td>
		</tr>
		<tr>
			<!-- 房屋出租收入 applyPersonBasic.incomeHouseRent -->
			<td class="label"><fmt:message
					key="label.applyDetail.incomeHouseRent" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.incomeHouseRent}</td>
			<!-- 其他收入 applyPersonBasic.incomeOther -->
			<td class="label"><fmt:message
					key="label.applyDetail.incomeOther" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.incomeOther}</td>
		</tr>
		<tr>
			<!-- 其他收入来源 applyPersonBasic.incomeOthersource -->
			<td class="label"><fmt:message
					key="label.applyDetail.incomeOthersource" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.incomeOthersource}</td>
			<!-- 月平均收入 applyPersonBasic.incomeAvgMonth -->
			<td class="label"><fmt:message
					key="label.applyDetail.incomeAvgMonth" bundle="${lang}" /></td>
			<td class="content">${applyPersonBasic.incomeAvgMonth}</td>

		</tr>
	</table>
	<div class="divBgColor">
		<fmt:message key="label.apply.private" bundle="${lang}" />
	</div>


	<table class="col3">
		<tr>
			<!-- 企业类型 applyPersonBasic.privateType -->
			<td class="label"><fmt:message
					key="label.applyDetail.privateType" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1016"
					name="applyPersonBasic" property="privateType" /></td>


			<!-- 经营场所 applyPersonBasic.privateSite -->
			<td class="label"><fmt:message
					key="label.applyDetail.privateSite" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1017"
					name="applyPersonBasic" property="privateSite" /></td>
		</tr>
		<tr>
			<!-- 经营场所租期开始 applyPersonBasic.privateSiteBegin -->
			<td class="label"><fmt:message
					key="label.applyDetail.privateSiteBegin" bundle="${lang}" /></td>
			<td class="content">${
					applyPersonBasic.privateSiteBegin}</td>
			<td class="label"><fmt:message
					key="label.applyDetail.privateSiteEnd" bundle="${lang}" /></td>
			<td class="content">${
					applyPersonBasic.privateSiteEnd}</td>
		</tr>
		<tr>
			<!-- 工商注册类型   applyPersonBasic.privateRegister -->
			<td class="label"><fmt:message
					key="label.applyDetail.privateRegister" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1018"
					name="applyPersonBasic" property="privateRegister" /></td>
			<!-- 工商登记号 applyPersonBasic.private_registerNo -->
			<td class="label"><fmt:message
					key="label.applyDetail.private_registerNo" bundle="${lang}" /></td>
			<td class="content">${
					applyPersonBasic.privateregisterNo}</td>
		</tr>
		<tr>
			<!--  当前经营性贷款状态   applyPersonBasic.privateLoan -->
			<td class="label"><fmt:message
					key="label.applyDetail.privateLoan" bundle="${lang}" /></td>
			<td class="content"><bizoptionname:showname biztypekey="1019"
					name="applyPersonBasic" property="privateLoan" /></td>
			<!-- 每月还款额度applyPersonBasic.privateRepayMonth -->
			<td class="label"><fmt:message
					key="label.applyDetail.privateRepayMonth" bundle="${lang}" /></td>
			<td class="content">${
					applyPersonBasic.privateRepayMonth}</td>
		</tr>
		<tr>
			<!-- 成立日期 applyPersonBasic.privateOpen -->
			<td class="label"><fmt:message
					key="label.applyDetail.privateOpen" bundle="${lang}" /></td>
			<td class="content">${ applyPersonBasic.privateOpen}</td>
			<!-- 雇员人数  applyPersonBasic.privateEmployees -->
			<td class="label"><fmt:message
					key="label.applyDetail.privateEmployees" bundle="${lang}" /></td>
			<td class="content">${
					applyPersonBasic.privateEmployees}</td>
		</tr>
		<tr>
			<!-- 月均盈利/亏损额  applyPersonBasic.privateProfitMonth -->
			<td class="label"><fmt:message
					key="label.applyDetail.privateProfitMonth" bundle="${lang}" /></td>
			<td class="content">${
					applyPersonBasic.privateProfitMonth}</td>
			<td class="label">年检是否通过：</td>
			<td><bizoptionname:showname biztypekey="1001"
					name="applyPersonBasic" property="privateAnnualCheck" /></td>
		</tr>
		<tr>
			<td class="label">借款人占股比例：</td>
			<td class="content">${applyPersonBasic.privateShareStock}</td>
			<td class="label">注册资本：</td>
			<td class="content">${applyPersonBasic.privateRegisteredAssets}
			</td>
		</tr>
	</table>
	<div class="divBgColor">业务人员信息</div>
	<table class="col3">
		<tr>
			<td class="label">营业所 ：</td>
			<td class="content">${project.salerOrg }</td>
			<!--  
		<td class="label">销售团队</td>
		<td>${project.salerCompany }</td>
		-->
		</tr>
		<tr>
			<td class="label">客户经理A：</td>
			<td class="content">${project.salerAName }</td>
			<td class="label">客户经理B：</td>
			<td class="content">${project.salerBName }</td>
		</tr>
	</table>
	<!--  
	<div class="divBgColor">
		<fmt:message key="label.memo.title" bundle="${lang}" />
	</div>
	<table>
	<tr>
			<td class="label"><fmt:message
					key="label.memo.oper.type" bundle="${lang}" /></td>
			<td class="content">${tlVo.operType}</td>
			<td class="label"><fmt:message
					key="label.memo.oper.reason" bundle="${lang}" /></td>
			<td class="content">${tlVo.operReason}</td>
			<td class="label"><fmt:message
					key="label.memo.oper.remark" bundle="${lang}" /></td>
			<td class="content">${tlVo.operReasonRemark}</td>

		</tr>
	</table>
    -->
</div>