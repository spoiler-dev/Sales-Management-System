<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
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
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="assets/css/animate.min.css" rel="stylesheet" />
	<link href="assets/css/style.min.css" rel="stylesheet" />
	<link href="assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
    <link href="assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
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
					<a href="main.html" class="navbar-brand"><span class="navbar-logo"></span> FOUNDER</a>
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
					<li class="has-sub active">
						<a href="main.html">
						   <!-- <b class="caret pull-right"></b>-->
						    <i class="fa fa-laptop"></i>
						    <span>首页</span>
					    </a>
						</li>
                                        
                                        <li class="has-sub">
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
							    
							</li>
                                                        <li class="has-sub">
							    <a href="shangpinchuku.html"><!--<b class="caret pull-right"></b>--> 商品出库 <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							    
							</li>
                                                        
                                                        <li class="has-sub">
							    <a href="gukedingdanyuebao.html"><!--<b class="caret pull-right"></b>-->顾客订单月报<i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							    
							</li>
                                                        <li class="has-sub">
							    <a href="shangpindingdanyuebao.html"><!--<b class="caret pull-right"></b>--> 商品订单月报 <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							    
							</li>
                                                        <li class="has-sub">
							    <a href="kucunxinxi.html"><!--<b class="caret pull-right"></b>--> 库存信息  <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							    
							</li>
                                                     
						</ul>
					</li>
                                        
					
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
			<div class="row">
				
				    <!-- begin col-6 -->
			    <div class="col-md-6">
			        <!-- begin panel -->
			        <div class="panel panel-inverse" data-sortable-id="ui-media-object-3">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">FOUNDER | 平台简介</h4>
                            
                        </div>
                        <div class="panel-body">
							<div class="media media-lg">
								<a class="media-left" href="javascript:;">
									<img src="assets/img/gallery/gallery-1.jpg" alt="" class="media-object" />
								</a>
								<div class="media-body">
									<h4 class="media-heading">系统化的背景</h4>
									方正集团销售管理业务系统是从事笔记本电脑售卖的经营者。关于方正集团销售管理业务系统的销售管理业务，以前也引进了一部分到计算机中。但是后来随着顾客数量和经营商品的增多，现行的种种做法已经变得很不合时宜了。这次，方正集团销售管理业务系统决定在本公司内，特别是对销售管理业务进行重新评估，并系统化。
								</div>
							</div>
							<div class="media">
								<a class="media-left" href="javascript:;">
									<img src="assets/img/gallery/gallery-2.jpg" alt="" class="media-object" />
								</a>
								<div class="media-body">
									<h4 class="media-heading">方正集团销售管理业务概要</h4>
								从顾客（超市等）发来的订单一到营业部，在对订购商品在库数量进行确认之后，便正式的接受订单。获得订单的营业部向仓库科发出指示。仓库科从仓库取出商品，包装后，由送货科配送给顾客交货。
对于从供货商那里采购商品是以每种商品不断货为原则,订购2周到一个月所需的商品。
对于收取顾客的货款，并不是在每次接受订单的时候进行，而是在月末的时候对一个月的应收款进行收取，同样在月末的时候对向供货商支付订货的应付款。
在一天的最后，要制作顾客的交货实际日报和商品的销售实际日报。

								</div>
							</div>
							<div class="media ">
								<a class="media-left" href="javascript:;">
									<img src="assets/img/gallery/gallery-6.jpg" alt="" class="media-object" />
								</a>
								<div class="media-body">
									<h4 class="media-heading">项目说明</h4>
									<p>(1) 关于订单处理
接受顾客订单的时间节止到每天的11：30，当天发送不了的次日发送。但是订货大多是在每天的11：00~11：30，在这期间每天打印的帐票（出库指示书、商品领受单、销售发票）很多。和以前相比，虽然一次性记账法制作发票很方便，但是输入和输出却花费很多时间。再加上是以人工的方式将出库指示书和商品领受书提交给仓库科的。而且在运送科方面，由于道路等的种种原因，有很多时候11点35发出的出库指示书和商品领受书不能按时出库。
接受订单时，对各种商品在库数进行核查。如果发现库存不足可以跟顾客商定，当库存充足时追加订单。但是，有时订单签订后，在出库时发现库存不足，则会导致一些不必要的纠纷。这种时候需要向顾客道歉，并且需要重新制作订单。
</p>
							<p>(2)	关于出库处理
仓库科根据出库指示书从仓库取出相应的商品。出库指示书上记录了商品的种类以及在仓库中所需要取得的商品。另外，相同的商品被记录在不同的出库指示书上，可不可以一次性地取完所有相同的商品。
每天仓库科不得不根据订单多次取货，如果能够一次按所需商品取货，则可以减少工作量提高工作效率。</p>	
<p>(3) 关于采购处理
以前每天都要确认各个商品的库存数和出库数。但是现在商品的种类繁多，为了尽可能地减少商品的存货，和以前相比，就必须要频繁的进行采购。因此，难免会出现缺货而没有采购的情形。如果能够在库存数不足时，自动的发出采购指示，同时自动制作采购单的话，也会非常的方便。</p>

<p>(4)	关于制作付款通知单处理
由于现在顾客数目增多，付款通知单的制作时间就会变长。我认为如果来自营业部的应收款信息能够使用计算机制作成电子版形式的付款通知书将会更有效率。</p>


								</div>
							</div>
							
						</div>
                    </div>
			        <!-- end panel -->
				</div>
			    <!-- end col-6 -->
			    <!-- begin col-6 -->
			    <div class="col-md-6">
			        <!-- begin panel -->
			        <div class="panel panel-inverse" data-sortable-id="ui-media-object-4">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">FOUNDER | 优秀人才</h4>
                        </div>
                        <div class="panel-body">
			                <ul class="media-list media-list-with-divider">
								<li class="media media-sm">
									<a class="media-left" href="javascript:;">
									    <img src="assets/img/user-13.jpg" alt="" class="media-object rounded-corner" />
									</a>
									<div class="media-body">
										<h4 class="media-heading">方正</h4>
									
										<p>成功的人千方百计，失败的人千难万险。<p>
									    
									    </p>
									</div>
								</li>
                                <li class="media media-sm">
                                    <div class="media-body text-right">
                                        <h4 class="media-heading">范竹雲</h4>
                                        <p>释放激情，放飞梦想，今天明天，由我创造。<p>
									        
									    </p>
                                    </div>
                                    <a  class="media-right" href="javascript:;">
                                        <img src="assets/img/user-3.jpg" alt="" class="media-object rounded-corner" />
                                    </a>
                                </li>
                                <li class="media media-sm">
                                    <a class="media-left" href="javascript:;">
                                        <img src="assets/img/user-8.jpg" alt="" class="media-object rounded-corner" />
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">杨吉</h4>
                                        <p>如果惧怕前面跌宕的山岩，生命就永远只是死水一滩。<p>
									       
									    </p>
                                    </div>
                                </li>
								<li class="media media-sm">
                                    <div class="media-body text-right">
                                        <h4 class="media-heading">袁佳鹏</h4>
                                        <p>只有不快的斧，没有劈不开的柴。<p>
									        
									    </p>
                                    </div>
                                    <a class="media-right" href="javascript:;">
                                        <img src="assets/img/user-7.jpg" alt="" class="media-object rounded-corner" />
                                    </a>
								</li>
							</ul>
						</div>
					</div>
			        <!-- end panel -->
				</div>
			    <!-- end col-6 -->
				
				
				
				
				
				
				<!-- begin col-6 -->
			    <div class="col-md-6">
			        <!-- begin panel -->
			        <div class="panel panel-inverse" data-sortable-id="ui-media-object-4">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">FOUNDER | 公司环境</h4>
                        </div>
                        
                        <div class="panel-body">
			            <img src="assets/img/IMG_0562.jpg" width="100%" height="100%" />
						</div>
					</div>
			        <!-- end panel -->
			        
			        
			        <div class="panel panel-inverse" data-sortable-id="ui-typography-11">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">FOUNDER | 维护人员</h4>
                        </div>
                        <div class="panel-body">
                            <address>
								<strong>维护人员</strong><br>
								方正, 杨吉<br>
								范竹雲,袁佳鹏<br>
								<abbr title="Phone">客服电话:</abbr> (123) 456-7890
							</address>
							<address>
							<strong>客服邮箱</strong><br>
								<a href="mailto:#">first.last@example.com</a>
							</address>
						</div>
                    </div>
			        
				</div>
			    <!-- end col-6 -->
				
				
				
				
			</div>
			
			
			
		</div>
		<!-- end #content -->
		
       
		<input type="hidden" id="gritter-title-text" value="${loginEmployeeInfo.employeename}">
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
	<script src="assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="assets/plugins/flot/jquery.flot.min.js"></script>
	<script src="assets/plugins/flot/jquery.flot.time.min.js"></script>
	<script src="assets/plugins/flot/jquery.flot.resize.min.js"></script>
	<script src="assets/plugins/flot/jquery.flot.pie.min.js"></script>
	<script src="assets/plugins/sparkline/jquery.sparkline.js"></script>
	<script src="assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="assets/js/dashboard.min.js"></script>
	<script src="assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			Dashboard.init();
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

