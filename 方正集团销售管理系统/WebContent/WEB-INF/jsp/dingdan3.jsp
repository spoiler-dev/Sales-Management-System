<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<body onlaod="if(history.length>0){window.opener=null;window.close();window.open(window.location.href,'_blank');}">
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
                        <small>华信销售管理业务系统</small>
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
                        <span>应收款管理 </span>
                    </a>
                    <ul class="sub-menu">
                        <li><a href="yingshoukuandengji.html">应收款登记<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
                        <li><a href="qingqiufukuan.html">请求付款<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
                        <li><a href="daokuandengji.html">到款登记<i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
                       
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
        <!-- begin breadcrumb -->

        <!-- end breadcrumb -->
        <!-- begin page-header -->

        <!-- end page-header -->

        <!-- begin invoice -->
        <div class="invoice">
            <div class="invoice-company">
                    <span class="pull-right hidden-print">
                    
                    <a href="javascript:;" onclick="window.print()" class="btn btn-sm btn-success m-b-10"><i class="fa fa-print m-r-5"></i>打印</a>
                    </span>
                收据凭证
            </div>
            <div class="invoice-header">
                <div class="invoice-from">
                    <small>发货方</small>
                    <address class="m-t-5 m-b-5">
                        <strong>FOUNDER</strong><br />
                        地址<br />
                      <strong> 大连井甘子区</strong><br />
                       电话 (123) 456-7890<br />
                        
                    </address>
                </div>
                <div class="invoice-to">
                    <small>收货方</small>
                    <address class="m-t-5 m-b-5">
                        <strong>${cus.customername}</strong><br />
                        地址<br />
                        <strong>${cus.customeradd}</strong><br />
                        电话:${cus.customertel}<br />
                   
                    </address>
                </div>
                <div class="invoice-date">
                    <small>订单日期</small>
                    <div class="date m-t-5"><strong><fmt:formatDate value="${cus.orderdate }" pattern="yyyy-MM-dd"/> </strong></div>
                    <div class="invoice-detail">
                        订单号<br />${orderno}
                        <div class="date m-t-5"> <strong></strong></div>
                    </div>
                </div>
            </div>
            <div class="invoice-content">
                <div class="table-responsive">
                    <table class="table table-invoice">
                        <thead>
                        <tr>
                            <th>货品</th>
                            <th>价格（元）</th>
                            <th>数量</th>
                            <th>合计</th>
                        </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${dayin}" var="shop" >
                        <tr>
                            <td>
                               ${shop.shopno}<br />
                                <small> ${shop.shopname}</small>
                            </td>
                            <td> <fmt:formatNumber value="${shop.shopprice}" maxFractionDigits="2"/></td>
                            <td> ${shop.goshopnum}</td>
                            <td> <fmt:formatNumber value="${shop.zongji}" maxFractionDigits="2"/></td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="invoice-price">
                    <div class="invoice-price-left">
                        <div class="invoice-price-row">
                            <div class="sub-price">
                                <small>税前合计</small>
                                <fmt:formatNumber value="${shuiqian}" maxFractionDigits="2"/>
                            </div>
                            <div class="sub-price">
                                <i class="fa fa-plus"></i>
                            </div>
                            <div class="sub-price">
                                <small>税 </small>
                               <fmt:formatNumber value="${shui }" maxFractionDigits="2"/>
                            </div>
                        </div>
                    </div>
                    <div class="invoice-price-right">
                        <small>税后合计</small> <fmt:formatNumber value="${shuihou}" maxFractionDigits="2"/>
                    </div>
                </div>
            </div>
            <a href="dingdanchuangjian.html"><button class="btn btn-success" style="float:right"><i class="fa fa-plane m-r-5"></i>完成订单</button></a>
            <div class="invoice-note">
                * 请妥善保管此凭证，取货时一式两份交给发货人员<br />
                * 请清点核对后再签字<br />
                * 请您在此处签字
            </div>
            <div class="invoice-footer text-muted">
                <p class="text-center m-b-5">
                    感谢贵公司对我们的信任。
                </p>
                <p class="text-center">
                    <span class="m-r-10"><i class="fa fa-globe"></i> founder.com</span>
                    <span class="m-r-10"><i class="fa fa-phone"></i> T:016-18192302</span>
                    <span class="m-r-10"><i class="fa fa-envelope"></i> rtiemps@gmail.com</span>
                </p>
            </div>
        </div>
        <!-- end invoice -->
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
<script src="assets/js/apps.min.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->

<script>
    $(document).ready(function() {
        App.init();
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

