<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
body {
	margin: 0px;
	font-family: Arial, Sans-Serif;
	font-size: 13px;
}

a {
	color: blue;
	text-decoration: none
}

img {
	border: 0px;
}
/* dock */
#dock {
	margin: 0px;
	padding: 0px;
	list-style: none;
	position: fixed;
	top: 0px;
	height: 100%;
	z-index: 100;
	right: 0px;
}

#dock>li {
	width: 40px;
	height: 120px;
	margin: 0 0 1px 0;
	background-repeat: no-repeat;
	background-position: left center;
}

#dock #tools {
	background-image: url('<%=request.getContextPath()%>/images/tools/tools.png');
}

#dock>li:hover {
	background-position: -40px 0px;
}

/* panels */
#dock ul li {
	padding: 5px;
	border: solid 1px #F1F1F1;
}

#dock ul li:hover {
	background: #D3DAED url('../../images/tools/item_bkg.png') repeat-x;
	border: solid 1px #A8D8EB;
}

#dock ul li.header, #dock ul li .header:hover {
	background: #D3DAED url('../../images/tools/header_bkg.png') repeat-x;
	border: solid 1px #F1F1F1;
}

#dock>li:hover ul {
	display: block;
}

#dock>li ul {
	position: absolute;
	top: 0px;
	left: -180px;
	z-index: -1;
	width: 180px;
	display: none;
	background-color: #F1F1F1;
	border: solid 1px #969696;
	padding: 0px;
	margin: 0px;
	list-style: none;
}

#dock>li ul.docked {
	display: block;
	z-index: -2;
}

.dock-keleyi-com, .undock {
	float: right;
}

.undock {
	display: none;
}

#content {
	width: 95%; /* 设置内容显示的宽度 */
	margin: 10px 10px 0 10px;
}
</style>
<script type="text/javascript">
	$j(document)
			.ready(
					function() {
						var docked = 0;

						$j("#dock li ul").height($j(window).height());

						$j("#dock .dock-keleyi-com").click(
								function() {
									$j(this).parent().parent().addClass(
											"docked").removeClass("free");

									docked += 1;
									var dockH = ($j(window).height()) / docked
									var dockT = 0;

									$j("#dock li ul.docked").each(
											function() {
												$j(this).height(dockH).css(
														"top", dockT + "px");
												dockT += dockH;
											});
									$j(this).parent().find(".undock").show();
									$j(this).hide();

									if (docked > 0)
										$j("#content").css("margin-", "250px");
									else
										$j("#content").css("margin-", "60px");
								});

						$j("#dock .undock").click(
								function() {
									$j(this).parent().parent().addClass("free")
											.removeClass("docked").animate({
												right : "-180px"
											}, 200).height($j(window).height())
											.css("top", "0px");

									docked = docked - 1;
									var dockH = ($j(window).height()) / docked
									var dockT = 0;

									$j("#dock li ul.docked").each(
											function() {
												$j(this).height(dockH).css(
														"top", dockT + "px");
												dockT += dockH;
											});
									$j(this).parent().find(".dock-keleyi-com")
											.show();
									$j(this).hide();
								});

						$j("#dock li").hover(function() {
							$j(this).find("ul").animate({
								right : "40px"
							}, 200);
						}, function() {

							$j(this).find("ul.free").animate({
								right : "-180px"
							}, 200);
						});

						$j("#dock a").click(function() {
							if($j(this).attr("id")!=""){
								var url=window.parent.$j("body").attr("contextpath")+$j(this).attr("id");
								var frmId = "frm-"
										+ (new Date()).getTime()
												.toString();
								jumbo.openFrame(frmId, $j(this)
										.text(),
										url+"?projectId="
												+ $j("#projectId")
														.val()
												+ "&taskId="
												+ $j("#taskId")
														.val()
												+ "&clientId="
												+ $j("#clientId").val());
							}
						});
					});
</script>

<ul id="dock">   
	<li id="tools">
		<ul class="free">
		
			<li class="header"><a href="#" class="dock-keleyi-com">固定</a><a
				href="#" class="undock">隐藏</a>项目详情</li>
				
			<!-- <li><a href="#" id="/client/clientbasic/showClientDetail.json">客户信息</a></li>
			
			<li><a href="#" id="/collateral/CollateralEditList.json">押品信息</a></li>
			
			<li><a href="#" id="/guarantee/GuaranteeEditList.json">担保信息</a></li>
			
			<li><a href="#" id="/base/fileinfo/fileEditList.json">文档信息</a></li>
			
			<li><a href="#" id="/loanbefore/credit/creditInvesEditList.json">征信信息</a></li>
			
			<li><a href="#" id="/businessmonitor/searchBusinessById.json">业务概览</a></li>
			<li><a href="#" id="/loanbefore/commonperson/CommonPersonEditList.json">共同借款人信息</a></li>
			<li><a href="#" id="/loaning/repayplan/showRepayPlanEmulator.json">还款计划模拟器</a></li> -->
			
			<li><a href="#" id="/client/clientbasic/showClientDetail.json">客户信息</a></li>
			<li><a href="#" id="/loanbefore/credit/creditInvesDetailList.json">客户征信</a></li>
			<li><a href="#" id="/collateral/CollateralDetailList.json">贷款押品</a></li>
			<li><a href="#" id="/guarantee/GuaranteeDetailList.json">贷款保证</a></li>
			<li><a href="#" id="/loanbefore/commonperson/CommonPersonDetailList.json">共同借款人信息</a></li>
			<li><a href="#" id="/before/contract/contractDetailList.json">合同信息</a></li>
			<li><a href="#" id="/base/fileinfo/fileDetailList.json">文档信息</a></li>
			<li><a href="#" id="/businessmonitor/searchBusinessById.json">业务概览</a></li>
			<li><a href="#" id="/loaning/repayplan/showRepayPlanEmulator.json">还款计划模拟器</a></li>

		</ul>
	</li>
</ul>
