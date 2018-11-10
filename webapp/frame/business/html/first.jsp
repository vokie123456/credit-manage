<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="<c:url value='/scripts/frame/business/first_trial.js??v=2.0.0'/>"></script>
<p class="operate">
	<strong>操作:</strong>
	<a class="point-color" href="#examine1">初审通过</a>
	<a class="point-color" href="#examine2">初审拒绝</a>
	<!-- <a class="point-color" href="#examine4">初审取消</a> -->
	<a class="point-color" href="#examine3">补件</a>
</p>
<div class="dv-table" style="margin-top:20px;">
	<div class="examine" id="examine1">
		<form name="first_audit_pass" id="first_audit_pass">
		<input type="hidden" name="direction" value="next">
		<input type="hidden" id="operType" name="operType" value="100060201">
		<table class="news_table" cellpadding="0" cellspacing="0">
			<tr>
				<td class="BgColor w85">审核状态：</td>
				<td>
					<strong>初审通过</strong>
				</td>
			</tr>
			<tr>
				<td class="BgColor">意向贷款金额：</td>
				<td>
					${apply_credit }元
				</td>
			</tr>
			<tr>
				<td  class="BgColor w85">拟批产品</td>
				<td>
					<select name="intendedProduct">
						<option value="">请选择</option>
						<c:forEach items="${productMaxList}" var="pro">
							<option value="${pro.id }">${pro.productName }</option>
						</c:forEach>	
					</select>				
				</td>
			</tr>
			<tr>
				<td class="BgColor">初审金额：</td>
				<td>
					<input id="first_money" name="first_money" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" />元
					（房屋净值：<input name="house_money" id="house_money" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" 
					value="${clientCredit.houseMoney }"/>元，预测年可支配收入：
					<input id="year_exmoney" name="year_exmoney" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" 
					value="${clientCredit.yearExmoney }"/> 元）
				</td>
			</tr>
			<tr>
				<td class="BgColor">初审意见:</td>
				<td>
					<textarea class="text_view" id="operRemark" name="operRemark" style="width:450px;"></textarea>
				</td>
			</tr>
			<tr class="phoneBtnTr">
				<td style="border-right:none;"></td>
				<td>
					<button id="first_trial_save" type="button">提交</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<div class="examine" id="examine2">
	<form name="first_audit_nopass" id="first_audit_nopass">
		<!-- 退回 -->
		<input type="hidden" name="direction" value="over">
		<input type="hidden" id="operType" name="operType" value="100060202">
		<table class="news_table" cellpadding="0" cellspacing="0">
			<tr>
				<td class="BgColor w85" style="margin-left:10px;">审核状态：</td>
				<td>
					<strong>初审拒绝</strong>
				</td>
			</tr>
			<tr>
				<td class="BgColor">初审意见：</td>
				<td>
					<textarea class="text_view" id="operRemark" name="operRemark"></textarea>
				</td>
			</tr>
			<tr>
				<td class="BgColor">拒绝原因:</td>
				<td>
					<p>
					<select id="audit_type" name="audit_type" loxiaType="select" mandatory="true" onchange="selectAudit(this)">
						<option value="">请选择</option>
						<c:forEach items="${audits }" var="ite">
							<option value="${ite.typeCode }">${ite.typeName }</option>
						</c:forEach>
					</select>
					<select id="operReason"	name="operReason" loxiaType="select" mandatory="true">
						<option value="">请选择</option>
					</select>
					</p>
					<p>
						<label><input type="checkbox" name="blacklist" id="blacklist" value="1"/>加入黑名单</label>
						<bizoption:bizoption biztypekey="1194" id="blacklistSource"
							name="blacklistSource" isChoose="true"/>
					</p>
				</td>
			</tr>
			<tr class="phoneBtnTr">
				<td style="border-right:none;"></td>
				<td>
					<button id="first_audit_nopass_but" name="first_audit_nopass_but" type="button">提交</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
	
	
 <!-- <div class="examine" id="examine4">
	<form name="first_audit_esc" id="first_audit_esc">
		退回
		<input type="hidden" name="direction" value="esc">
		<input type="hidden" id="operType" name="operType" value="100060202">
		<table class="news_table" cellpadding="0" cellspacing="0">
			<tr>
				<td class="BgColor w85" style="margin-left:10px;">审核状态：</td>
				<td>
					<strong>初审取消</strong>
				</td>
			</tr>
			<tr>
				<td class="BgColor">取消原因:</td>
				<td>
					<p>
					<select id="escReason"	name="escReason" loxiaType="select" mandatory="true">
						<option value="">请选择</option>
					</select>
					</p>
				</td>
			</tr>
			
			<tr>
				<td class="BgColor">初审意见：</td>
				<td>
					<textarea class="text_view" id="operRemark" name="operRemark"></textarea>
				</td>
			</tr>
			
			<tr class="phoneBtnTr">
				<td style="border-right:none;"></td>
				<td>
					<button id="first_audit_esc_but" name="first_audit_esc_but" type="button">提交</button>
				</td>
			</tr>
		</table>
		</form>
	</div> -->

	
	<div class="examine" id="examine3">
	<form name="first_audit_bj" id="first_audit_bj">
		<!-- 补件 -->
		<input type="hidden" name="direction" value="rfe">
		<input type="hidden" id="operType" name="operType" value="100060203">
		<table class="news_table" cellpadding="0" cellspacing="0">
			<tr>
				<td class="BgColor w85" style="margin-left:10px;">审核状态：</td>
				<td>
					<strong>补件</strong>
				</td>
			</tr>
			<tr>
				<td class="BgColor">
					<span>补件理由：</span><br />
				</td>
				<td>
					<p class="dribbleware-select" style="width:490px;" data-code="init">
						<select id="bj_type" name="bj_type" loxiaType="select" mandatory="true" onchange="selectPatch(this)">
							<option value="">请选择</option>
							<c:forEach items="${patchs }" var="ite">
								<option value="${ite.typeCode }">${ite.typeName }</option>
							</c:forEach>
						</select>
						<select loxiaType="select" id="bj_subtype"
							name="add_material" isChoose="true" mandatory="true" >
							<option value="">请选择</option>
						</select>
						<a class="dribbleware-select-btn" data-type="jia">+</a>
					</p>
					
				</td>
			</tr>
			<tr>
				<td class="BgColor">生成短信：</td>
				<td>
					<p class="dribbleware-select">
						<select name="smsconfig" id="smsconfig" onchange="changeValue(this,'smsContent')" loxiaType="select">
							<option value="">-选择短信模板-</option>
							<c:forEach items="${smsmaster}" var="sms">
								<option value="${sms.templateContent }">${sms.actionTitle }</option>
							</c:forEach>
						</select>
					</p>
					<textarea class="text_view" id="smsContent" name="smsContent" readonly="readonly"></textarea>
				</td>
			</tr>
			<tr>
				<td class="BgColor">备注：</td>
				<td>
					<textarea class="text_view" id="operRemark" name="operRemark"></textarea>
				</td>
			</tr>
			<tr class="phoneBtnTr">
				<td style="border-right:none;"></td>
				<td>
					<button type="button" id="first_audit_bj_but" name="first_audit_bj_but">提交</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
</div>