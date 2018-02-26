<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- JSTL:标准标签库，只要是标签库 ，就必须使用taglib导入-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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


	<link href="assets/plugins/DataTables/css/data-table.css" rel="stylesheet" />
	<link href="assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->

	<!-- ================== BEGIN BASE JS ================== -->

	<script src="assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
<!-- begin #page-loader -->
<div id="page-loader" class="fade"><span class="spinner"></span></div>
<!-- end #page-loader -->

<!-- begin #page-container -->
<div id="page-container" class="fade in page-sidebar-fixed page-header-fixed">
	<!-- begin #header -->
	<div id="header" class="header navbar navbar-default navbar-fixed-top">
		<!-- begin container-fluid -->
		<div class="container-fluid">
			<!-- begin mobile sidebar expand / collapse button -->
			<div class="navbar-header">
				<a href="main.html" class="navbar-brand"><span class="navbar-logo"></span>FOUNDER</a>
				<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- end mobile sidebar expand / collapse button -->

			<!-- begin header navigation right -->
			<ul class="nav navbar-nav navbar-right">


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

				<li class="has-sub ">
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

						<li class="has-sub">
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
						
					</ul>
				</li>

				<li class="has-sub active">
					<a href="javascript:;">
						<b class="caret pull-right"></b>
						<i class="fa fa-suitcase"></i>
						<span>应收款管理 <!--<span class="label label-theme m-l-5">NEW</span>--></span>
					</a>
					<ul class="sub-menu">
						<li><a href="yingshoukuandengji.html">应收款登记<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li><a href="qingqiufukuan.html">请求付款<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li class="active"><a href="daokuandengji.html">到款登记<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						
					</ul>
				</li>

			</ul>
			<!-- end sidebar nav -->
		</div>
		<!-- end sidebar scrollbar -->
	</div>
	<div class="sidebar-bg"></div>
	<!-- end #sidebar -->

	<!-- begin #content -->
	<div id="content" class="content">


		<!-- begin row -->
		<div class="row">

			<!-- begin col-10 -->
			<div class="col-md-12">
				<!-- begin panel -->
<form action="tijiaobiaodanqing.html">
				<div class="panel panel-inverse">
					<div class="panel-heading">

						<div class="panel-heading-btn">

							<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
							<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
							<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
							<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						</div>
						<h4 class="panel-title">到款登记</h4>
					</div>

					<div class="panel-body">
	
						<table id="data-body" class="table table-striped table-bordered">
						
						<div class="table-responsive">
							<table id="data-table" class="table table-striped table-bordered">
								<thead>

					
								<tr>
									<th>序号</th>
									<th>请求付款单编号</th>
									<th>请求付款日期</th>
									<th>请求付款金额</th>
									<th><center><input type="checkbox"></center></th>
								


								</tr>
								</thead>
								<tbody>
								<c:forEach items="${daokuandengji}" var="j" varStatus="ind">
								<tr class="odd gradeX">
									<td>${ind.count}</td>
									<td>${j.pleasepayno}</td>
									<td>${j.pleasepaydate}</td>
									<td>${j.orderheji}</td>
									<td><input type="checkbox" value="${j.pleasepayno}" name="qingqiufukuanid"></td>

								</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<!-- end panel -->

         <a href="" data-toggle="modal" data-target="#myModal1"><button id="okbtn" class="btn btn-success" type="submit" style="margin-right: 10px;float: right;width:200px">到款登记</button></a>
					
						
					<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLable" aria-hidden="true">
						<!--第二步，模态框内部组成，有两个子容器。1，modal-dialog 2，modal-content-->
						<div class="modal-dialog">
							<div class="modal-content">
								<!--第三步，定义模态框里面的内容，分成三部分，1，模态框头部，2，模态框主体，3，模态框页脚-->
								
							
							<div class="modal-body">
							

<div class="panel panel-inverse" data-sortable-id="ui-typography-9">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                
                              <a href="javascript:;" ><button  class="btn btn-xs btn-icon btn-circle btn-danger " data-dismiss="modal" aria-hiddden="true" data-click="panel-collapse">
								
									<i class="fa fa-times"></i>
								</button>  </a>
                              
								
                            </div>
                            <h4 class="panel-title">通知</h4>
                        </div>
                        <div class="panel-body">
                            <p class="lead" >
                            	
                            <h3 style="text-align: center;"> 成功登记！</h3>  
                           <a href="yingshoukuandengji.html"> <button class="btn btn-success" style="float:right">确认</button></a>
                            </p>
						</div>
                    </div>


							</div>	
								
								
								
							</div>
						</div><!--modal-dialog-->
						
					</div><!--modal-fade-->
			
			</div>
			<!-- end col-10 -->
		</div>
		<!-- end row -->
	</div>
		</form>	
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
<script src="assets/plugins/DataTables/js/jquery.dataTables2.js"></script>
<script src="assets/plugins/DataTables/js/dataTables.autoFill.js"></script>
<script src="assets/plugins/gritter/js/jquery.gritter.js"></script>
<script src="assets/js/table-manage-autofill.demo.min.js"></script>
<script src="assets/js/apps.min.js"></script>


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

<script>
	$(document).ready(function() {
		App.init();
		TableManageAutofill.init();
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
<script>
    //完成全选和全不选功能
	$(function(){
		$(":checkbox").first().click(function(){
			if(this.checked == true){
				$(":checkbox").prop("checked","checked");
			}else{
				$(":checkbox").removeProp("checked");
			}
		});
	});
    //判断checkbox
	$(function(){
		$("#okbtn").click(function(){
	var cs = $("input[name='qingqiufukuanid']:checked");
	if(cs.length==0){
		alert("请您选择请求付款单！")
		return false;}
		});
	});
	</script>
	
</body>
</html>

