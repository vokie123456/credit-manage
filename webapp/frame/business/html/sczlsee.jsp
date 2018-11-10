<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@ taglib uri="/WEB-INF/Linkage.tld" prefix="linkage" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="dl-left">
	<dl id="file_dl">
		<dt>
			<a>客户上传</a>
		</dt>
		<dd><a href="#sfz_dv">身份证信息</a></dd>
		<dd><a href="#fczl_dv">房产资料</a></dd>
		<dd><a href="#zdxx_dv">账单信息</a></dd>
		<dd><a href="#gzzm_dv">工作证明</a></dd>
		<dd><a href="#zxbg_dv">征信报告</a></dd>
	</dl>
</div>
<div class="file-right">
	<div class="tit-after" id="sfz_dv">
		<span>
			身份证资料
		</span>
		<a data-type="carId" class="remark-click-find">查看</a>
	</div>
	<div class="file-img-dv" data-type="sfz">
		<div class="w555" id="sfz-dv">
			<div class="dv-img">
				<img id="carId_Positive" src="../../images/newsZr/u298.png" />
				<span class="examine-before">身份证正面</span>
			</div>
			<div class="dv-img">
				<img id="carId_Opposite" src="../../images/newsZr/u298.png" />
				<span class="examine-before">身份证反面</span>
			</div>
			<div class="dv-img">
				<img id="carId_hand" src="../../images/newsZr/u298.png" />
				<span class="examine-before">手持</span>
			</div>
		</div>
	</div>
	<div id="fczl_dv">
		
	</div>
	<div id="accou_dv_zong">
		<div class="tit-after" id="zdxx_dv">
			<span>
				账单信息
			</span>
			<a data-type="bill" class="remark-click-find">查看</a>
		</div>
		<style>
			.zd_clas{border-bottom: 1px solid #ccc; padding-left: 20px; margin-bottom: 50px;}
			.zd_clas:last-child{border-bottom: none; margin-bottom: 0;}
		</style>
		<div class="file-img-dv" data-type="zdxx">
			<div id="accou_img_dv">
				
			</div>
		</div>
	</div>
	<div class="tit-after" id="gzzm_dv">
		<span>工作证明</span>
	</div>
	<div class="file-img-dv" data-type="zdxx">
		<div class="w555" id="gzzm_img_dv">
			
		</div>
	</div>
	<div class="tit-after" id="zxbg_dv">
		<span>征信报告</span>
	</div>
	<div class="file-img-dv" data-type="zxbg">
		<div class="w555" id="zxbg_img_dv">
			
		</div>
	</div>
</div>


<!-- 备注弹框内容 -->
<div id="remarks-html">
	<div class="remarks-dv">
		<textarea class="editor_id"></textarea>
		<br />
		<span>
			<input type="checkbox" />
			有异常
		</span>
	</div>
</div>

<!-- 房产信息弹框内容 -->
<div id="fcxx-html">
	<div class="fcxx-content-dv">
		<table class="fcxx-table">
			<tbody>
				<tr>
					<td>
						<label>编号：</label>
					</td>
					<td colspan="3">
						<input class="w100" type="text" />
					</td>
				</tr>
				<tr>
					<td>
						<label>地址：</label>
					</td>
					<td colspan="2">
						<select>
							<option>上海</option>
						</select>
						省
						<select>
							<option>上海</option>
						</select>
						市
						<select>
							<option>上海</option>
						</select>
						区
					</td>
					<td>
						<input type="text" />
					</td>
				</tr>
				<tr>
					<td>
						<label>产权人：</label>
					</td>
					<td>
						<input type="radio" />
						<span class="mrl50">本人</span>
						<input type="radio" />
						<span>非本人</span>
					</td>
					<td colspan="2">
						<input type="radio"/>
						<span>本人和</span>
						<input type="text" />
					</td>
				</tr>
				<tr>
					<td>
						<label>是否抵押：</label>
					</td>
					<td colspan="3">
						<input type="radio" />
						<span>否</span>
						<input type="radio" />
						<span>是</span>
						<input type="text" placeholder="抵押在谁名下" />
					</td>
				</tr>
				<tr>
					<td>
						<label>购入时间：</label>
					</td>
					<td>
						<input type="text" />
					</td>
					<td>
						<label>房龄：</label>
					</td>
					<td>
						<input type="text" />
					</td>
				</tr>
				<tr>
					<td>
						<label>登记价格：</label>
					</td>
					<td>
						<input type="text" />
						<span>万元</span>
					</td>
					<td>
						<label>目前估值：</label>
					</td>
					<td>
						<input type="text" />
						<span>万元</span>
					</td>
				</tr>
				<tr class="pt5">
					<td valign="top">
						<label>备注：</label>
					</td>
					<td colspan="3">
						<textarea></textarea>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/sczlsee.js?v=2.1.1'/>"></script>