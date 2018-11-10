<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
		<table width="98%">
			<tr><!-- 收入评估  -->
				<td colspan="6" class="title">担保人 ${guarantor.relationObjName}  收入评估
				<%-- 	<fmt:message key="label.audit.taskdetail.mine_income_part" bundle="${lang }"/>  --%>
					<input type="hidden" name="incomeAssess.incomeId" value="${guarantor.incomeId }"/>
					<input type="hidden" name="incomeAssess.relationId" value="${guarantor.relationId }"/>
				</td>
			</tr>
			<tr>
				<!-- 信用卡月还款额 -->
				<td class="label">担保人银行平均流水</td>
				<td width="150"><input name="incomeAssess.serialsBankave" loxiaType="number"  value="${guarantor.serialsBankave }"></td>
				<!-- 信用卡月还款记债额 -->
				<td class="label">担保人实际月收入</td>
				<td width="150"><input name="incomeAssess.imcomeReal" loxiaType="number" value="${guarantor.imcomeReal }"/></td>
				<!-- 住房按揭贷款月还款额 -->
				<td class="label">担保人行盈利率</td>
				<td width="150"><input name="incomeAssess.industryRate" loxiaType="number" value="${guarantor.industryRate }"/></td>
			</tr>
			<tr>
				<!--住房按揭贷款月还款记债额 -->
				<td class="label">担保人所占股份</td>
				<td width="150"><input name="incomeAssess.stockShare" loxiaType="number" value="${guarantor.stockShare }"/></td>
				<!-- 非按揭房产抵押贷款还款记债额 -->
				<td class="label">担保人其他收入</td>
				<td width="150"><input name="incomeAssess.incomeOther" loxiaType="number" value="${guarantor.incomeOther }"/></td>
				<!-- 非定期还款贷款额 -->
				<td class="label">担保人评估总收入</td>
				<td width="150"><input name="incomeAssess.incomeAll" loxiaType="number" value="${guarantor.incomeAll }"/></td>
			</tr>
			<tr>
				<!-- 非按揭房产抵押贷款还款额 -->
				<td class="label">担保人收入备注</td>
				<td width="150" colspan="5"><textarea rows="3" name="incomeAssess.incomeRemark" loxiaType="input">${guarantor.incomeRemark }</textarea></td>
			</tr>
		</table>
