<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="<c:url value='/scripts/frame/business/last_trial.js?v=2.0.11'/>"></script>
<style>
 
 
</style>
<table class="process_table">
	<thead>
		<tr>
			<td class="BgColor w85">审核状态</td>
			<td class="BgColor w85">初审人员</td>
			<td class="BgColor w85">初审拟批产品</td>
			<td class="BgColor w85">初审金额</td>
			<td class="BgColor w85">提交时间</td>
			<td class="BgColor w85">初审意见</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${tasklast.task_oper_name }</td>
			<td>${tasklast.user_name }</td>
			<td>${tasklast.creditMaxProductName }</td>
			<td>${tasklast.first_money }元</td>
			<td>${tasklast.audit_date }</td>
			<td>${tasklast.operReasonRemark }</td>
		</tr>
	</tbody>
</table>
<p class="operate">
	<strong>操作:</strong>
	<a class="point-color" href="#examine1">终审通过</a>
	<a class="point-color" href="#examine2">终审拒绝</a>
	<!-- <a class="point-color" href="#examine4">终身取消</a> -->
	<a class="point-color" href="#examine3">回退初审</a>
</p>
<div class="dv-table" style="margin-top:20px;">
	<div class="examine" id="examine1">
		<form name="last_trial_save" id="last_trial_save">
		<!-- 通过 -->
		<input type="hidden" name="direction" value="next">
		<input type="hidden" id="operType" name="operType" value="100060401">
		<table class="news_table" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<td class="BgColor w85">审核状态：</td>
				<td colspan="3">
					<strong>初审通过</strong>
				</td>
			</tr>
			<tr>
				<td class="BgColor w85">授信产品：</td>
				<td>
					<select name="creditMaxProductId">
						<option value="0">请选择</option>
						<c:forEach items="${productMaxList}" var="pro">
							<option value="${pro.id }">${pro.productName }</option>
						</c:forEach>	
					</select>
				</td>
				<td class="BgColor w85">产品小类：</td>
				<td>
					<select name="creditProductSubId">
						<option value="0">请选择</option>
						
					</select>
					<span class="detail" style="color:#0066ff;cursor:pointer;display:none;">详情</span>
				</td>
			</tr>
			<tr class="rate" style="display:none">
			   <td colspan="4">
				   <span id="repaymentWay"></span>; <span>利率:<span id="productRate"></span></span>;<span>服务费费率:<span id="productService"></span></span>;
				    <span>借款期限:<span id="productPeriod"></span></span>
			    </td>
			</tr>
			<tr>
				<td class="BgColor">授信金额：</td>
				<td colspan="3">
					<input id="first_money" name="first_money" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" />元
					（房屋净值：<input name="house_money" id="house_money" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" 
					value="${clientCredit.houseMoney }"/>元，预测年可支配收入：
					<input id="year_exmoney" name="year_exmoney" loxiaType="number" decimal="2" trim="true" mandatory="true" style="width: 70px;" 
					value="${clientCredit.yearExmoney }"/> 元）
				</td>
			</tr>
			<tr>
				<td class="BgColor">授信结束日：</td>
				<td>
					<input loxiaType="date" id="final_date" name="final_date" trim="true" mandatory="true" value="${final_date }" style="width: 80px;"/>
				</td>
				<td class="BgColor w85">资金渠道：</td>
				<td>
					<select name="capitalChannel"  id="capitalChannel">
						<%--<c:forEach items="${sdList}" var="sd">
							<option value="${sd.subtypeCode }">${sd.subtypeName }</option>
						</c:forEach>--%>

						<c:forEach items="${sdList}" var="sd">
							<option value="${sd.channelCode }" name="${sd.relatedProducts }">${sd.channelName }</option>
						</c:forEach>
					</select>	
				</td>
			</tr>
			<tr>
				<td class="BgColor">终审意见:</td>
				<td colspan="3">
					<textarea id="operRemark" name="operRemark" style="width:450px;height: 60px;"></textarea>
				</td>
			</tr>
			<tr class="phoneBtnTr">
				<td style="border-right:none;"></td>
				<td colspan="3">
					<button id="last_trial_save_but" name="last_trial_save_but" type="button">提交</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<div class="examine" id="examine2">
		<form name="last_audit_nopass" id="last_audit_nopass">
		<!-- 拒绝 -->
		<input type="hidden" name="direction" value="over">
		<input type="hidden" id="operType" name="operType" value="100060402">
		<table class="news_table" cellpadding="0" cellspacing="0">
			<tr>
				<td class="BgColor w85" style="margin-left:10px;">审核状态：</td>
				<td>
					<strong>终审拒绝</strong>
				</td>
			</tr>
			<tr>
				<td class="BgColor">终审意见：</td>
				<td>
					<textarea class="text_view" name="operRemark" name="operRemark"></textarea>
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
					<button id="last_audit_nopass_but" name="last_audit_nopass_but" type="button">提交</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
	
	
	<!-- <div class="examine" id="examine4">
		<form name="last_audit_esc" id="last_audit_esc">
		拒绝
		<input type="hidden" name="direction" value="esc">
		<input type="hidden" id="operType" name="operType" value="100060402">
		<table class="news_table" cellpadding="0" cellspacing="0">
			<tr>
				<td class="BgColor w85" style="margin-left:10px;">审核状态：</td>
				<td>
					<strong>终审取消</strong>
				</td>
			</tr>
			<tr>
				<td class="BgColor">终审意见：</td>
				<td>
					<textarea class="text_view" name="operRemark" name="operRemark"></textarea>
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
			<tr class="phoneBtnTr">
				<td style="border-right:none;"></td>
				<td>
					<button id="last_audit_esc_but" name="last_audit_esc_but" type="button">提交</button>
				</td>
			</tr>
		</table>
		</form>
	</div> -->
	
	<div class="examine" id="examine3">
		<form name="last_audit_prev" id="last_audit_prev">
		<!-- 退回 -->
		<input type="hidden" name="direction" value="prev">
		<input type="hidden" id="operType" name="operType" value="100060403">
		<table class="news_table" cellpadding="0" cellspacing="0">
			<tr>
				<td class="BgColor w85" style="margin-left:10px;">审核状态：</td>
				<td>
					<strong>终审回退初审</strong>
				</td>
			</tr>
			<tr>
				<td class="BgColor">备注：</td>
				<td>
					<textarea class="text_view" name="operRemark" id="operRemark"></textarea>
				</td>
			</tr>
			<tr class="phoneBtnTr">
				<td style="border-right:none;"></td>
				<td>
					<button id="last_audit_prev_but" name="last_audit_prev_but" type="button">提交</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
</div>