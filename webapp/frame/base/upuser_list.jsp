<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/upUser.tld" prefix="upUser"%>
<upUser:upUser name="upUserId" orgCode="${param.orgCode}" id="upUserId"
	 mandatory="true" selected="${param.seId}">
</upUser:upUser>
<label class="del_mandatory">*</label>