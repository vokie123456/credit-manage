<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <fmt:setBundle basename="messages" var="lang" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-store" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <link rel="shortcut icon"
          href="<%=request.getContextPath()%>/images/favicon.ico" />
    <title><fmt:message key="title.login" bundle="${lang}" /></title>
    <link rel="stylesheet" type="text/css"
          href="<c:url value='css/redmond/jquery-ui-1.8.7.custom.css'/>" />
    <link rel="stylesheet" type="text/css"
          href="<c:url value='css/redmond/loxia-ui-1.2.custom.css'/>" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />
    <link rel="stylesheet" type="text/css"
          href="<c:url value='css/main.css'/>" />
    <script type="text/javascript"
            src="<c:url value='/scripts/main/jquery-1.4.4.min.js'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/main/jquery-ui-1.8.7.custom.min.js'/>"></script>

    <script type="text/javascript"
            src="<c:url value='/scripts/main/jquery.loxiacore-1.2.js'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/main/jquery.loxiainput-1.2.js'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/main/jquery.loxia.locale-zh-CN.js'/>"></script>
    <script type="text/javascript"
            src="<c:url value='scripts/main/passguardctrl/PassGuardCtrl.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/scripts/login-pgc.js'/>"></script>
</head>
<body scroll="no" contextpath="<%=request.getContextPath()%>">
<div id="main">
    <div>
        <img src="images/logo-2.png" />
    </div>
    <div id="content">
        <h2 id="header">会员登录</h2>
        <form action="<c:url value='/j_spring_security_check'/>"
              method="post" id="loginForm" name="loginForm">
            <div style="margin-top: 15px;">
                <span>用户名：</span>&nbsp;&nbsp;<input id="name" name="j_username"
                                                    tabindex='2' class="inp_css"/>
            </div>
            <%--<div style="margin-top: 15px;">
                <span style="margin-top: 0px;">密&nbsp;&nbsp;&nbsp;码：</span>&nbsp;&nbsp;
                <script type="text/javascript">pgeditor.generate()</script>
            </div>--%>
            <div style="margin-top: 15px;">
                <table>
                    <tr>
                        <td><span style="margin-left: 80px;margin-right:5px;">密&nbsp;&nbsp;&nbsp;&nbsp;码：</span></td>
                        <td> <script type="text/javascript">pgeditor.generate()</script></td>
                    </tr>
                </table>
            </div>
            <div style="margin: 15px 0 0 -79px">
                <span>验证码：</span>&nbsp;&nbsp;<input id="j_authcode"
                                                    name="j_authcode" tabindex='4' class="inp_yzm">
                <input
                        type="text" onclick="createCode()" readonly="readonly"
                        id="checkCode" tabindex='5' class="yzm" >
            </div>
            <hr />
            <div style="margin: 15px 0 0 10px;" onclick="submitLogin();">
                <input type="button" tabindex='5' class="login_btn" id="btn_login" value="登录系统">
                <span style="margin-left: 20px;"><a href="#">忘记密码？</a></span>
            </div>
            <input type="hidden" id="pwd" name="j_password">
        </form>
    </div>
</div>

</body>
</html>