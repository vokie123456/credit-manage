<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/common/meta.jsp"%>
<script type="text/javascript"  src="<c:url value='/scripts/frame/dataimport/loanWf/import_product_config.js'/>"></script>
<fmt:setBundle basename="messages" var="lang" />

<div class="divBgColor">产品配置</div>
         <input type="hidden" name="importProductConfigVo.prodconfigId" value="${pconfig.prodconfigId }" />		
         <table  class="tabcustomPeoNoborder"  cellpadding="0"
					cellspacing="0" >
			<tr>
				<!-- 担保方式 -->
				<td class="label BgColor"><fmt:message key="label.loaning.guaranteeType" bundle="${lang}" /></td>
				<td class="ulcontentFont"><checkBox:checkBox biztypekey="1059"  name="guaranteeType" checked="${pconfig.guaranteeType }" /><label class="del_mandatory">&nbsp;&nbsp;*</label>
				</td>
				<!-- 还款方式-->
				<td class="label BgColor"><fmt:message key="label.loaning.repayMode" 	bundle="${lang}" /></td>
				<td class="content tabBorderRight"><bizoption:bizoption biztypekey="1091" id="repayMode" 	name="importProductConfigVo.repayMode"  isChoose="false" mandatory="true" 
						selected="${pconfig.repayMode }" /><label class="del_mandatory">&nbsp;*</label></td>
				</tr>
				<tr>
				<!-- 贷款利率 -->
				<td class="label BgColor"><label onclick="editInte();" ><fmt:message key="label.loaning.interest" bundle="${lang}" /></td>
				<td class="content"><input id="interestCompliance" name="importProductConfigVo.interestCompliance" loxiaType="number" trim="true" value="${pconfig.interestCompliance }"  decimal="2" mandatory="true" />
					<input id="interest"  type="hidden" name="importProductConfigVo.interest" loxiaType="number" trim="true" value="${pconfig.interest }"  decimal="2" />
					<label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			    <!-- 利率单位 -->
		        <td class="label BgColor"><fmt:message key="label.loaning.interest.init"
				  bundle="${lang}" /></td>
		        <td class="content tabBorderRight"><bizoption:bizoption biztypekey="1058"
				name="importProductConfigVo.interestUnit" isChoose="false" mandatory="true"
				selected="${pconfig.interestUnit }" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			    </tr>
			<tr>
			    <!-- 罚息率 -->
				<td class="label BgColor"><fmt:message key="label.loaning.fineInterest" bundle="${lang}" /></td>
				<td class="content"><input id="fineInterest"  name="importProductConfigVo.fineInterest"
					loxiaType="money" trim="true" value="${pconfig.fineInterest }" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			    <!-- 挪用罚息上浮 -->
				<td class="label BgColor"><fmt:message key="label.loaning.embezzleInterest" bundle="${lang}" /></td>
				<td class="content tabBorderRight"><input id="embezzleInterest"  name="importProductConfigVo.embezzleInterest"  
					loxiaType="money" trim="true"    value="<c:if test="${empty pconfig.embezzleInterest }">0.00</c:if><c:if test="${ not empty pconfig.embezzleInterest }">${pconfig.embezzleInterest }</c:if>" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<!-- 贷款期限 -->
					<td class="label BgColor">贷款期限(月)：</td>
				<td class="content"><input id="loanPeriod" name="importProductConfigVo.loanPeriod" loxiaType="number" trim="true" value="${pconfig.loanPeriod }"
					mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>

				<!-- 每月还款日 -->
					<td class="label BgColor"><fmt:message key="label.loaning.loanRepayDay" 	bundle="${lang}" /></td>
				<td class="content tabBorderRight"><input id="loanRepayDay"  name="importProductConfigVo.loanRepayDay" loxiaType="number" trim="true"
					value="${pconfig.loanRepayDay }"/></td>
			</tr>
		</table>
			<!-- 产品费用 -->
			<div class="divBgColor BgColor" style="margin-top: 1em;">
				<fmt:message key="label.loaning.title2" bundle="${lang}" />
				<button id="addCostItem"  icons="ui-icon-stop" title="添加费用项" aria-disabled="false" role="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only" type="button" showtext="false" style="width: 16px;height: 16px;"><span class="ui-button-icon-primary ui-icon ui-icon-plus"></span><span class="ui-button-text">添加费用项</span></button>
				<button id="removeCostItem" icons="ui-icon-stop" title="删除费用项" aria-disabled="false" role="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only" type="button" showtext="false" style="width: 16px;height: 16px;"><span class="ui-button-icon-primary ui-icon ui-icon-minus"></span><span class="ui-button-text">删除费用项</span></button>
				<span style="color: red; font-weight: normal;"><small>【注：随放款扣除的费用请勿添加】</small></span>
			</div>
			<table class="textalignCenter tabcustom"  cellpadding="0"
					cellspacing="0"   id="tabProductCost">
				<thead> 
					<tr class="tabcustomTr">
						<td class="widthPx60"> <input type="checkbox"  id="selectCostAll"  name="selectCostAll"> </td>
						<td class="label"  style="padding-right: 20px;"><fmt:message key="label.loaning.costTitle" bundle="${lang}" /></td>
						<td  class="content contentfont"  ><fmt:message key="label.loaning.costMode" bundle="${lang}" />
						</td>
						<td class="content contentfont"  >
						<fmt:message key="label.loaning.costRate" bundle="${lang}" />
						</td>
						<td class="content contentfont" ><fmt:message key="label.loaning.costFix" bundle="${lang}" /></td>
						<td class="content contentfont tabBorderRight"  style="padding-left: 20px;"><fmt:message key="label.loaning.costPeriod" bundle="${lang}" /></td>
					</tr>
				</thead>
				<tbody id="pCostBody">
				
					<c:forEach items="${pconfig.importProductCostList}" var="dis" varStatus="loop">
						<tr>
							<td  class="widthPx60"><input  type="checkbox"  id="selectCost"  name="selectCost" /></td>
							<td class="label">
							<bizselect:bizselect biztypekey="1090" 
									name="importProductCostList.costCode" 
									startSort="31" endSort="50"   selected="${dis.costCode }" mandatory="true"  />
							
							</td>
							<td class="content"  >
							<bizoption:bizoption biztypekey="1092"  id="" mandatory="true" name="importProductCostList.costMode"
												isChoose="false" selected="${dis.costMode }" checkmaster="selectSetValue" />
							</td>
							<td class="content">
							<input type="text"  loxiaType="money" trim="true" name="importProductCostList.costRate"  value="${dis.costRate }" />
							</td>
							<td class="content"><input type="text" loxiaType="number" decimal="2" 	trim="true" name="importProductCostList.costFix"
								value="${dis.costFix }" /></td>
							<td class="content tabBorderRight" ><bizoption:bizoption biztypekey="1093"   	name="importProductCostList.costPeriod" isChoose="false" selected="${dis.costPeriod }" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
<br/>
			<div id="costDiv"  style="display:none;">
			</div>
			<div id="product-dialog"></div>