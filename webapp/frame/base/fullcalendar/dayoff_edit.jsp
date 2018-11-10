<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/jumbo/jquery-ui-1.8.14.custom.css'/>"/>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.form.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/base/dayoff/dayoff_edit.js'/>"></script>
<div class="fancy">
	<h3>编辑事件</h3>
	<form id="add_form" method="post">
		<input type="hidden" name="dateId" id="dateId" value="${dayoff.dateId }">
		<p>
			日程内容：<input loxiaType="input" mandatory="true" class="input"
				name="remark" id="remark" style="width: 320px"
				placeholder="记录你将要做的一件事..." value="${dayoff.remark }">
		</p>
		<p>
			开始时间：<input type="text" class="input " name="dayOff"
				id="dayOff" value="${dayoff.dayOff }" readonly> <span
				id="sel_start" style="display: none;"><select name="s_hour">
					<option value="00">00</option>
					<option value="01">01</option>
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option>
					<option value="09">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
			</select>: <select name="s_minute">
					<option value="00">00</option>
					<option value="10">10</option>
					<option value="20">20</option>
					<option value="30">30</option>
					<option value="40">40</option>
					<option value="50">50</option>
			</select> </span>
		</p>
		<p id="p_endtime" style="display: none;">
			结束时间：<input type="text" class="input datepicker" name="dayOff"
				id="dayOff" value="${dayoff.dayOff }" readonly> <span id="sel_end"
				style="display: none;"><select name="e_hour">
					<option value="00">00</option>
					<option value="01">01</option>
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option>
					<option value="09">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
			</select>: <select name="e_minute">
					<option value="00">00</option>
					<option value="10">10</option>
					<option value="20">20</option>
					<option value="30">30</option>
					<option value="40">40</option>
					<option value="50">50</option>
			</select> </span>
		</p>
		<p>
			<label><input type="checkbox" value="1" id="isallday"
				name="isallday" checked="checked" readonly="readonly"> 全天</label> <label><input
				type="checkbox" value="1" id="isend" name="isend"
				readonly="readonly"> 结束时间</label>
		</p>
		<div class="sub_btn">
			<span class="del"><input type="button" class="btn btn_del"
				id="del_event" value="删除"></span><input type="submit"
				class="btn btn_ok" value="确定" id="btn_sub"> <input
				type="button" class="btn btn_cancel" value="取消"
				onClick="$.fancybox.close()">
		</div>
	</form>
</div>
