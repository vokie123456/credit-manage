<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 申请贷款新增页面   -->
<head>
    <%@include file="/common/meta.jsp" %>  
   <link rel="stylesheet" type="text/css"
          href="<c:url value='/scripts/main/jquery-easyui/easyui.css'/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/scripts/main/jquery-easyui/icon.css'/>"/>
            <script type="text/javascript"   
	src="<c:url value='/scripts/main/jquery-easyui/jquery.validatebox.js'/>"></script>
	<script type="text/javascript"     
	src="<c:url value='/scripts/main/jquery-easyui/jquery.panel.js'/>"></script>
				<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery-easyui/jquery.datagrid.js'/>"></script>  
			<script type="text/javascript"   
	src="<c:url value='/scripts/main/jquery-easyui/jquery.combo.js'/>"></script>  
			<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery-easyui/jquery.combobox.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery-easyui/jquery.combotree.js'/>"></script>
		<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery-easyui/jquery.combogrid.js'/>"></script>
	<script type="text/javascript"   
	src="<c:url value='/scripts/main/jquery-easyui/jquery.parser.js'/>"></script>
	<script type="text/javascript"   
	src="<c:url value='/scripts/main/jquery-easyui/jquery.tree.js'/>"></script>   
	<script type="text/javascript"   
	src="<c:url value='/scripts/main/jquery-easyui/jquery.treegrid.js'/>"></script> 
		<script type="text/javascript"   
	src="<c:url value='/scripts/main/jquery-easyui/jquery.tooltip.js'/>"></script> 
	<script type="text/javascript"       
	src="<c:url value='/scripts/main/jquery-easyui/jquery.datagrid.js'/>"></script> 
        <script type="text/javascript"
            src="<c:url value='/scripts/frame/base/user_edit2.js?v=2.1.8'/>"></script>  
            <script type="text/javascript"
	src="<c:url value='/scripts/common/otherValidate.js'/>"></script>
    <fmt:setBundle basename="messages" var="lang"/>
    <title>系统用户</title>
    <linkage:define/>
</head>
<body contextpath="<%=request.getContextPath()%>">
<!-- 这里是页面内容区 -->
<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
     id="div_out">
    <ul
            class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
        <li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
            <a href="#div-1">用户基本信息设置</a></li>
        <li class="ui-state-default ui-corner-top">
            <a href="#div-2">用户数据权限设置</a>
        </li>
    </ul>
    <div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
         id="div-1">
        <!-- 用户基本信息 -->

        <form id="frm-adduser" method="post">
            <div class="divBgColor">用户基本信息设置</div>
            <div class="content_middle">
                <table class="col3">
                <tr>
                    <td class="label">姓名：</td>
                    <td><input name="userName" value="${user.userName }"
                               loxiaType="input" trim="true" mandatory="true"></td>
                </tr>
                <c:if test="${compCode eq '0001' }">
                    <tr>
                        <td class="label">总公司：</td>
                        <td><select id="company" name="compCode" mandatory="true"></select></td>
                    </tr>
                </c:if>
                <tr>
                    <td class="label">所在部门：</td>
                    <td>
                        <input id="orgCodeStr" name="orgCodeStr"/>
                    </td>
                </tr>
<!-- 
                <tr>
                    <td class="label" valign="top">直属上级:</td>
                    <td id="leader_td">

                    </td>
                </tr> -->

                <tr>
                    <td class="label">可用：</td>
                    <td><label><input name="isEnabled" type="radio"
                                      value="1"
                                      <c:if test="${user.isEnabled }">checked="checked"</c:if>>是</label>
                        <label><input name="isEnabled" type="radio" value="0"
                                      <c:if test="${not user.isEnabled }">checked="checked"</c:if>>否</label></td>

                    <!-- 账户锁定，过期，密码过期隐藏域 -->
                    <td><input name="isAccNonLocked" type="hidden" value="1"></td>
                    <td><input name="isAccNonExpired" type="hidden" value="1"></td>
                    <td><input name="isPwdNonExpired" type="hidden" value="1"></td>
                    <td><input type="hidden" id="bizCode" name="bizCode" value="${user.bizCode}"></td>
                </tr>
                <tr>
                    <td class="label">登录密码：</td>
                    <td><input name="password" type="password" id="password"
                               value="${user.password }" loxiaType="input" trim="true"
                               mandatory="true"><label class="del_mandatory">&nbsp;&nbsp;*</label></td>

                    <input type="hidden" value="${user.password }" id="hiddenPw"/>
                </tr>

                <tr>
                    <td class="label">固定电话：</td>
                    <td><input name="phone" loxiaType="input" id="phone"
                               value="${user.phone }"></td>
                </tr>
                <tr>
                    <td class="label">手机号码：</td>
                    <td><input name="cellphone" loxiaType="input" id="cellphone"
                               value="${user.cellphone }" checkmaster="validatemobile"></td>
                </tr>
                <tr>
                    <td class="label">邮箱：</td>
                    <td><input name="email" loxiaType="input" id="email"
                               value="${user.email }" checkmaster="validateEmail"></td>
                </tr>
            </table>
            </div>

            <div class="divBgColor">用户角色设置</div>
            <table id="roleTalbe">

            </table>
           
             <div id="frm-addCase" style="display:none;">
			  <div class="divBgColor">用户案件领取设置</div>
				 <table id="ajsz">
		              <tr>
		                 <td class="label width200">最大领取总数(个)：</td>
		                 <td><input loxiaType="input" name="userTaskSetVo.maxNum" value="${userTaskSet.maxNum}"/></td>
		                 <td class="label width200">系统每次分发数(个)：</td>
		                 <td><input type="text" name="userTaskSetVo.sizeNum" value="${userTaskSet.sizeNum}"/></td>
		              </tr>
		              <tr>
		                 <td class="label width200">领取产品：</td>
		                 <td id="getProduct" colspan="4">
		                 <c:forEach items="${listProductMaxInfo}" var="productMaxInfo">
								<input type="checkbox" name="produtId" value="${productMaxInfo.id}" />${productMaxInfo.productName}
						 </c:forEach>
		                 </td>
           				<input type="hidden" id="produtIds" name="userTaskSetVo.produtIds" value="${userTaskSet.produtIds}" />
		              </tr>
		          </table> 
			 </div>
			 <div class="buttonlist buttonDivWidth">
            <button type="button" loxiaType="button" class="confirm" id="btnSave">保存</button>
        </div>
            </div>  
            
            
            <input type="hidden" id="userId" name="userId" value="${user.userId }"/>
            <input type="hidden" id="compCode" name="compCode" value="${compCode}"/>
            <input type="hidden" name="userCode" value="${user.userCode }"/>
            <input type="hidden" name="createTime" value="${user.createTime }"/>

        </form>
        
         <div class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
         id="div-2">
    </div>
    </div>
   
</div>

<input type="hidden" value="${user.orgCode.orgCode}" id="queryOrgCode">
<input type="hidden" value="${newuser.upUserId}" id="queryUpUserId">


  
  
</body>
</html>
