<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

		<div class="divBgColor">
			项目产品
		</div>
		
		<table>
			<tr>
				<!-- 客户项目： -->
				<td class="label"><fmt:message key="label.apply.clientproject.project_name" bundle="${lang}" /></td>
				<td width="150">${project.projectName}</td>
				<!-- 项目编号 -->
				<td class="label"><fmt:message key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
				<td width="150">${project.projectCode}</td>
				<!-- 销售人员 -->
				<td class="label"><fmt:message key="label.apply.clientproject.saler_name" bundle="${lang}" /></td>
				<td width="150">${project.salerAName} &nbsp; ${project.salerBName}</td>
			</tr>
			<%--<tr>
				<!-- 开始时间： -->
				<td class="label"><fmt:message key="label.apply.clientproject.begin_time" bundle="${lang}" /></td>
				<td width="150">${project.beginTime}</td>
				<!-- 终止时间 -->
				<td class="label"><fmt:message key="label.apply.clientproject.end_time" bundle="${lang}" /></td>
				<td width="150">${project.endTime}</td>
				
				<td class="label"><fmt:message key="label.apply.clientproject.prod_name" bundle="${lang }"/></td>
				<td width="150">${project.prodName}</td>
			</tr> --%>
			<tr>
				<!-- 其他收入来源 applyPersonBasic.incomeOthersource -->
				<td class="label">合同金额：</td>
				<td width="150">${project.moneyCheck}</td>
				<!-- 月平均收入 applyPersonBasic.incomeAvgMonth -->
				<td class="label">还款方式：</td>
				<td width="150">${project.repayWay}</td>
				<td class="label">&nbsp;</td>
				<td width="150">&nbsp;</td>
			</tr>
			<tr>
				<!-- 其他收入来源 applyPersonBasic.incomeOthersource -->
				<td class="label">担保方式：</td>
				<td width="150">${project.guaranteeType}</td>
				<!-- 月平均收入 applyPersonBasic.incomeAvgMonth -->
				<td class="label">利率(<bizoptionname:showname biztypekey="1001" name='project' property="reteUnit"/>): </td>
				<td width="150">${prject.rate} </td>
				<td class="label">计息方式：</td>
				<td width="150"><bizoptionname:showname biztypekey="1001" name="project" property="reteType"/></td>
			</tr>
			<tr>
				<!-- 其他收入来源 applyPersonBasic.incomeOthersource -->
				<td class="label">管理费率：</td>
				<td width="150">${project.rateManage}</td>
				<!-- 月平均收入 applyPersonBasic.incomeAvgMonth -->
				<td class="label">其它费用：</td>
				<td width="150">${project.otherMoney}</td>
				<td class="label">其它费用交付方式：</td>
				<td width="150"><bizoptionname:showname biztypekey="1001" name="project" property="otherType"/></td>
			</tr>
			<tr>
				<!-- 其他收入来源 applyPersonBasic.incomeOthersource -->
				<td class="label">贷款期限((<bizoptionname:showname biztypekey="1001" name="project" property="loanPeriodUnit"/>)：</td>
				<td width="150"><bizoptionname:showname biztypekey="1024" value="${project.loanPeriod}"/></td>
				<!-- 月平均收入 applyPersonBasic.incomeAvgMonth -->
				<td class="label">开始计贷日期：</td>
				<td width="150">${project.loanPeriodBegin}</td>
				<td class="label">每月还款日：</td>
				<td width="150">${project.loanPeriodDay}</td>
			</tr>
		</table>
		