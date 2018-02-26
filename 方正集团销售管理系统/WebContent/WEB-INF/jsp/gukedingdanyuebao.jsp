<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
gukedingdanyuebao.html<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>FOUNDER | 方正集团销售管理业务系统</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />

	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="assets/css/animate.min.css" rel="stylesheet" />
	<link href="assets/css/style.min.css" rel="stylesheet" />
	<link href="assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->

	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
	<link href="assets/plugins/ionRangeSlider/css/ion.rangeSlider.css" rel="stylesheet" />
	<link href="assets/plugins/ionRangeSlider/css/ion.rangeSlider.skinNice.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
	<link href="assets/plugins/password-indicator/css/password-indicator.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-combobox/css/bootstrap-combobox.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
	<link href="assets/plugins/jquery-tag-it/css/jquery.tagit.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
<!-- begin #page-loader -->
<div id="page-loader" class="fade in"><span class="spinner"></span></div>
<!-- end #page-loader -->

<!-- begin #page-container -->
<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
	<!-- begin #header -->
	<div id="header" class="header navbar navbar-default navbar-fixed-top">
		<!-- begin container-fluid -->
		<div class="container-fluid">
			<!-- begin mobile sidebar expand / collapse button -->
			<div class="navbar-header">
				<a href="index.html" class="navbar-brand"><span class="navbar-logo"></span> FOUNDER</a>
				<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- end mobile sidebar expand / collapse button -->

			<!-- begin header navigation right -->
			<ul class="nav navbar-nav navbar-right">
				<!--<li>
                    <form class="navbar-form full-width">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Enter keyword" />
                            <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                </li>-->

				<li class="dropdown navbar-user">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<img src="assets/img/user-13.jpg" alt="" />
						<span class="hidden-xs">${loginEmployeeInfo.employeename}</span> <b class="caret"></b>
					</a>
					<ul class="dropdown-menu animated fadeInLeft">
						<!--<li class="arrow"></li>-->
						<!--	<li><a href="javascript:;">Edit Profile</a></li>
							<li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
							<li><a href="javascript:;">Calendar</a></li>
							<li><a href="javascript:;">Setting</a></li>-->
						<!--<li class="divider"></li>-->
						<li><a href="login.html">登出</a></li>
					</ul>
				</li>
			</ul>
			<!-- end header navigation right -->
		</div>
		<!-- end container-fluid -->
	</div>
	<!-- end #header -->

	<!-- begin #sidebar -->
	<div id="sidebar" class="sidebar">
		<!-- begin sidebar scrollbar -->
		<div data-scrollbar="true" data-height="100%">
			<!-- begin sidebar user -->
			<ul class="nav">
				<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
				<li class="nav-profile">
					<div class="image">
						<a href="javascript:;"><img src="assets/img/user-13.jpg" alt="" /></a>
					</div>
					<div class="info">
						${loginEmployeeInfo.employeename}
						<small>方正销售管理业务系统</small>
					</div>
				</li>
			</ul>
			<!-- end sidebar user -->
			<!-- begin sidebar nav -->
			<ul class="nav">
				<li class="has-sub ">
					<a href="main.html">
						<!-- <b class="caret pull-right"></b>-->
						<i class="fa fa-laptop"></i>
						<span>首页</span>
					</a>
				</li>

				<li class="has-sub active">
					<a href="javascript:;">
						<b class="caret pull-right"></b>
						<i class="fa fa-th"></i>
						<span>订单管理 <!--<span class="label label-theme m-l-5">NEW</span>--></span>
					</a>
					<ul class="sub-menu">

						<li class="has-sub">
							<a href="dingdanchuangjian.html"><!--<b class="caret pull-right"></b>-->
								订单创建
								<i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							<!--<ul class="sub-menu">
                                <li><a href="user_index.html"></a></li>
                              <li><a href="user_index.html"></a></li>
                                <li><a href="table_manage_tabletools.html"></a></li>
                                <li><a href="table_manage_combine.html"><i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
                            </ul>-->
						</li>
						<li class="has-sub">
							<a href="shangpinchuku.html"><!--<b class="caret pull-right"></b>--> 商品出库 <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							<ul class="sub-menu">
								<!--<li><a href="table_manage.html">HR</a></li>
                                                             <li><a href="table_manage.html">Accounts</a></li>
                                                              <li><a href="table_manage.html">Questions</a></li>
                                                                  <li><a href="table_manage_combine.html">Exams <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>-->
							</ul>
						</li>

						<li class="active">
							<a href="gukedingdanyuebao.html"><!--<b class="caret pull-right"></b>-->顾客订单月报<i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							<ul class="sub-menu">
								<!-- <li><a href="table_manage.html">Institute Type</a></li>

                                 <li><a href="table_manage_combine.html">Institute<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>-->
							</ul>
						</li>
						<li class="has-sub">
							<a href="shangpindingdanyuebao.html"><!--<b class="caret pull-right"></b>--> 商品订单月报 <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							<ul class="sub-menu">
								<!--<li><a href="table_manage.html">Default</a></li>
                                <li><a href="table_manage_autofill.html">Autofill</a></li>

                                <li><a href="table_manage_scroller.html">Scroller</a></li>
                                <li><a href="table_manage_tabletools.html">TableTools</a></li>
                                <li><a href="table_manage_combine.html">Extension Combination <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>-->
							</ul>
						</li>
						<li class="has-sub">
							<a href="kucunxinxi.html"><!--<b class="caret pull-right"></b>--> 库存信息  <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							<ul class="sub-menu">
								<!--<li><a href="table_manage.html">Language</a></li>
                                <li><a href="table_manage_autofill.html">Country</a></li>
                                <li><a href="table_manage_combine.html">Currencies <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>-->
							</ul>
						</li>
						<!--   <li class="has-sub">
   <a href="javascript:;"><b class="caret pull-right"></b>Email Setup <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
   <ul class="sub-menu">
       <li><a href="table_manage.html">Default</a></li>
       <li><a href="table_manage_autofill.html">Autofill</a></li>

       <li><a href="table_manage_combine.html">Extension Combination <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
   </ul>
</li>-->
					</ul>
				</li>

				<!--<li class="has-sub">
                    <a href="javascript:;">
                        <span class="badge pull-right">10</span>
                        <i class="fa fa-inbox"></i>
                        <span>Email</span>
                    </a>
                    <ul class="sub-menu">
                        <li><a href="email_inbox.html">Inbox v1</a></li>
                        <li><a href="email_inbox_v2.html">Inbox v2</a></li>
                        <li><a href="email_compose.html">Compose</a></li>
                        <li><a href="email_detail.html">Detail</a></li>
                    </ul>
                </li>-->
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret pull-right"></b>
						<i class="fa fa-suitcase"></i>
						<span>应收款管理 <!--<span class="label label-theme m-l-5">NEW</span>--></span>
					</a>
					<ul class="sub-menu">
						<li><a href="yingshoukuandengji.html">应收款登记<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li><a href="qingqiufukuan.html">请求付款<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li><a href="daokuandengji.html">到款登记<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<!--<li><a href="ui_unlimited_tabs.html">Unlimited Nav Tabs <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
                        <li><a href="ui_modal_notification.html">Modal & Notification</a></li>
                        <li><a href="ui_widget_boxes.html">Widget Boxes</a></li>
                        <li><a href="ui_media_object.html">Media Object</a></li>
                        <li><a href="ui_buttons.html">Buttons</a></li>
                        <li><a href="ui_icons.html">Icons</a></li>
                        <li><a href="ui_simple_line_icons.html">Simple Line Icons</a></li>
                        <li><a href="ui_ionicons.html">Ionicons</a></li>-->
					</ul>
				</li>

				<!-- begin sidebar minify button -->
				<!--li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li--->
				<!-- end sidebar minify button -->
			</ul>
			<!-- end sidebar nav -->
		</div>
		<!-- end sidebar scrollbar -->
	</div>
	<div class="sidebar-bg"></div>
	<!-- end #sidebar -->

	<!-- begin #content -->
	<div id="content" class="content">
		<div id="content" class="content"                     >
		<form action="gukedingdantu.html">
			<div class="row">
				<div class="col-md-8">
					<input name="orderdateMonth" type="text" readonly="readonly" class="form-control" id="datepicker-default" placeholder="选择日期" >
				</div>
				<div class="col-md-4">
					<a href="gukedingdantu.html"><button type="submit" class="btn btn-primary">打印预览</button></a>
				</div>
			</div>
</form>
		</div>
	</div>
	<!-- end #content -->



	<!-- begin scroll to top btn -->
	<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
	<!-- end scroll to top btn -->
</div>
<!-- end page container -->

<!-- ================== BEGIN BASE JS ================== -->
<script src="assets/plugins/jquery/jquery-1.9.1.min.js"></script>
<script src="assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
<script src="assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
<script src="assets/crossbrowserjs/html5shiv.js"></script>
<script src="assets/crossbrowserjs/respond.min.js"></script>
<script src="assets/crossbrowserjs/excanvas.min.js"></script>
<![endif]-->
<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
<!-- ================== END BASE JS ================== -->

<!-- ================== BEGIN PAGE LEVEL JS ================== -->
<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="assets/plugins/ionRangeSlider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
<script src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="assets/plugins/masked-input/masked-input.min.js"></script>
<script src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script src="assets/plugins/password-indicator/js/password-indicator.js"></script>
<script src="assets/plugins/bootstrap-combobox/js/bootstrap-combobox.js"></script>
<script src="assets/plugins/bootstrap-select/bootstrap-select.min.js"></script>
<script src="assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
<script src="assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput-typeahead.js"></script>
<script src="assets/plugins/jquery-tag-it/js/tag-it.min.js"></script>
<script src="assets/js/form-plugins.demo.min.js"></script>
<script src="assets/js/apps.min.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->
<c:if test="${not empty yuebaoFailureinfo}">
<script type="text/javascript">window.alert('<c:out value="${yuebaoFailureinfo}"/>');</script>
</c:if>
<script>
	$(document).ready(function() {
		App.init();
		FormPlugins.init();
	});
</script>
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-53034621-1', 'auto');
	ga('send', 'pageview');
</script>
</body>
</html>

