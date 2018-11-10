<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <%@ taglib uri="/WEB-INF/Linkage.tld" prefix="linkage" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style>
        .file-left{
            float: left;
            width:90%;
            border-left: 1px solid #ccc;
            min-height: 500px;
        }
        .button{border-radius:10px;text-align:center;}
        .active{color:blue;}
        .file-img-dv .dv-img{height:auto;}
    </style>
<body   contextpath="<%=request.getContextPath()%>">
<input id="webUrl" value="${webUrl}" type="hidden"/>
<div class="dl-left">
    <dl id="file_dl">
        <dd><a href="#sfz_dv">身份证信息</a></dd>
        <dd><a href="#fczl_dv">房产资料</a></dd>
        <dd><a href="#yyzz_dv">营业执照</a></dd>
        <dd><a href="#zdxx_dv">账单信息</a></dd>
        <dd><a href="#gzzm_dv">工作证明</a></dd>
        <dd><a href="#zxbg_dv">征信报告</a></dd>
        <dd><a href="#jkyt_dv">借款用途</a></dd>
        <dd><a href="#qt_dv">其他</a></dd>
    </dl>
</div>
<div class="file-left">
    <div class="tit-after" id="sfz_dv">
		<span>
			身份证资料
		</span>
    </div>
    <div class="file-img-dv" data-type="sfz">
        <div id="sfz-dv">
            <div class="dv-img">
                <img id="carId_Positive" src="../../images/newsZr/u298.png" />
                <span class="examine-before">身份证正面</span>
                <%--   <p class="cart-update" data-id="Positive">
                     <a class="ok-cart">
                          <img src="../../images/newsZr/u410.png" />
                      </a>
                      <a class="no-cart">
                          <img src="../../images/newsZr/u414.png" />
                      </a>
                  </p>--%>
            </div>
            <div class="dv-img">
                <img id="carId_Opposite" src="../../images/newsZr/u298.png" />
                <span class="examine-before">身份证反面</span>
                <%--<p class="cart-update" data-id="Positive">
                    <a class="ok-cart">
                        <img src="../../images/newsZr/u410.png" />
                    </a>
                    <a class="no-cart">
                        <img src="../../images/newsZr/u414.png" />
                    </a>
                </p>--%>
            </div>
            <div class="dv-img">
                <img id="carId_hand" src="../../images/newsZr/u298.png" />
                <span class="examine-before">手持</span>
                <%--<p class="cart-update" data-id="Positive">
                    <a class="ok-cart">
                        <img src="../../images/newsZr/u410.png" />
                    </a>
                    <a class="no-cart">
                        <img src="../../images/newsZr/u414.png" />
                    </a>
                </p>--%>
            </div>



            <div class="dv-img" id="shenfenupload">


            </div>


        </div>
    </div>
    <div id="fczl_dv" data-type="fczl">

    </div>
    <div class="tit-after" id="jkyt_dv">
        <span id="loan_useage_name">借款用途</span>
    </div>
    <div class="file-img-dv" data-type="jkyt">
        <div class="dv-img" id="appUploadjkyt">

        </div>
        <div class="dv-img" id="loan_useage">

        </div>
    </div>
    <div id="accou_dv_zong">
        <div class="tit-after" id="yyzz_dv">
            <span>营业执照资料</span>
        </div>
        <div class="file-img-dv" data-type="yyzz">
            <div class="dv-img" id="appUploadgyyzz">

            </div>
            <div class="dv-img" id="yyzz_img_dv">

            </div>
        </div>


        <div class="tit-after" id="zdxx_dv">
			<span>
				账单信息
			</span>
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
    <div class="file-img-dv" data-type="gzzm">
        <div class="dv-img" id="appUploadgzzm">

        </div>
        <div class="dv-img" id="gongzuozhengming">

        </div>


    </div>


    <div class="tit-after" id="zxbg_dv">
        <span>征信报告</span>
    </div>
    <div class="file-img-dv" data-type="zxbg">
        <div class="dv-img" id="appUploadzxbg"></div>
        <div class="dv-img" id="zhengxinbaogao">

        </div>




    </div>




    <div class="tit-after" id="qt_dv">
        <span>其他</span>
    </div>
    <div class="file-img-dv" data-type="qt">
        <div class="dv-img" id="qita">

        </div>
    </div>

</div>




<!-- 备注弹框内容 -->
<div id="remarks-html">
    <div class="remarks-dv">
        <textarea style="width: 400px; height: 100px; resize:none;"></textarea>
        <form method="post" enctype="multipart/form-data">
			<span style="margin-top: 20px; display: block;">
				上传附件：<input name="myFile" class="remarks-file-sczl" onchange="remarks_file_sczl(this)" type="file" />
			</span>
        </form>
        <button class="remarks-file-btn-add">添加上传附件</button>
    </div>
</div>
<style>
    .dreassDv select{width: 100px !important; margin-right: 5px; height: 25px;}
    .dreassDv input{display: block; width: 315px; margin-top: 5px; height: 25px;}
</style>

<!-- 房产信息弹框内容 -->
<div id="fcxx-html">
    <div class="fczlImageDv">
        <div class="gallerysDisNone gallerys">

        </div>
        <div id="" class="boxImages"></div>
    </div>
    <div class="fcxx-content-dv">
        <form class="house_Frm">
            <table class="fcxx-table">
                <tbody>
                <tr>
                    <td>
                        <input type="hidden" name="houseId" id="up_houseId" />
                        <input type="hidden" name="inputCode" />
                        <input type="hidden" name="clientId" />
                        <span style="color:red">*</span>
                        <label>编号：</label>
                    </td>
                    <td colspan="3">
                        <input class="w100" name="houseNo" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="color:red">*</span>
                        <label>地址：</label>
                    </td>
                    <td colspan="3" class="dreassDv">
                        <linkage:select type="province" name="provinceId" pid="pb1" cid="cb1" did="db1" seledProvince="${per.address1.province}" />
                        <linkage:select type="city" seledCity="${per.address1.city}" name="cityId" cid="cb1" did="db1" />
                        <linkage:select type="district" seledDistrict="${per.address1.district}" name="districtId" did="db1" />
                        <input id="town1" value="${per.address1.detail}" name="address" loxiaType="input" trim="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>产权人：</label>
                    </td>
                    <td>
                        <input id="propertyOwner1" name="propertyOwner" type="radio" value="1" />
                        <span class="mrl50">本人</span>
                        <input id="propertyOwner2" name="propertyOwner" type="radio" value="2" />
                        <span>非本人</span>
                    </td>
                    <td colspan="2">
                        <input id="propertyOwner3" name="propertyOwner" type="radio" value="3" />
                        <span>本人和</span>
                        <input name="associates" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>是否抵押：</label>
                    </td>
                    <td colspan="3">
                        <input id="ismortgage100111" name="ismortgage" type="radio" value="100111" />
                        <span>否</span>
                        <input id="ismortgage100112" name="ismortgage" type="radio" value="100112" />
                        <span>是</span>
                        <input name="overPressure" type="text" placeholder="抵押在谁名下" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="color:red">*</span><label>房屋性质：</label>
                    </td>
                    <td>
                        <select name="housingProperty" style="width: 100px;">
                            <option value="191201">普通住宅</option>
                            <option value="191202">别墅</option>
                            <option value="191203">公寓</option>
                            <option value="191204">办公楼</option>
                            <option value="191205">酒店式公寓</option>
                            <option value="191206">商住两用</option>
                            <option value="191207">其他</option>
                        </select>
                    </td>
                    <td>
                        <span style="color:red">*</span><label>建筑面积：</label>
                    </td>
                    <td>
                        <input name="builtUpArea" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="color:red">*</span><label>小区名称：</label>
                    </td>
                    <td>
                        <input type="text" name="cellName" />
                    </td>
                    <td>
                        <label>购入时间：</label>
                    </td>
                    <td>
                        <input name="buyDate" class="buyDate runcode" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="color:red">*</span><label>建造年份：</label>
                    </td>
                    <td>
                        <input name="buildYear" class="Wdate" onblur="WdateFocus(this)" onfocus="WdatePicker({skin:'default',dateFmt:'yyyy'});" type="text" />
                    </td>
                    <td>
                        <label>房龄：</label>
                    </td>
                    <td>
                        <input name="that" readonly="readonly" style="cursor: not-allowed; background-color:#ccc;" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>登记价格：</label>
                    </td>
                    <td>
                        <input name="regPrice" type="text" />
                        <span>万元</span>
                    </td>
                    <td>
                        <label>目前估值：</label>
                    </td>
                    <td>
                        <input name="currentValuation" type="text" />
                        <span>万元</span>
                    </td>
                </tr>
                <tr class="pt5">
                    <td valign="top">
                        <label>备注：</label>
                    </td>
                    <td colspan="3">
                        <textarea name="remark"></textarea>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>
<div class="dialog-remarks"></div>


</body>



<script type="text/javascript" src="<c:url value='/scripts/newsZr/sczl3.js?v=2.1.8'/>"></script>