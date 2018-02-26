<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							<span class="hidden-xs">	${loginEmployeeInfo.employeename}</span> <b class="caret"></b>
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
					<li class="has-sub">
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
						    <span>订单管理1 <!--<span class="label label-theme m-l-5">NEW</span>--></span>
						</a>
						<ul class="sub-menu">
							
							<li class="active">
							    <a href="dingdanchuangjian.html"><!--<b class="caret pull-right"></b>--> 
							    	订单创建 
							    <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							    
							</li>
                                                        <li >
							    <a href="shangpinchuku.html"><!--<b class="caret pull-right"></b>--> 商品出库 <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							    
							</li>
                                                        
                                                        <li class="has-sub">
							    <a href="gukedingdanyuebao.html"><!--<b class="caret pull-right"></b>-->顾客订单月报<i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							    
							</li>
                                                        <li class="has-sub">
							    <a href="shangpindingdanyuebao.html"><!--<b class="caret pull-right"></b>--> 商品订单月报 <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							    
							</li>
                                                        <li >
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
	<form action="showProductInfo.html">
<input type="hidden" name="showModel" id="showModel" value="1"/>		    
			    <!-- begin col-10 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">商品栏</h4>
                            </div>
<form>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table id="data-table" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>商品编号</th>
                                            <th>商品名称</th>
                                            <th>在库数量</th>
                                            <th>单价</th>
                                            <th>单位</th>
                                            <th>数量</th>
                                            <th><input type="checkbox"></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                         <c:forEach items="${ShopList}" var="Shop" >
                                        <tr class="odd gradeX">
                                                    <td>${Shop.shopno}</td>
													<td>${Shop.shopname}</td>
													<td>${Shop.shopkc}</td>
													<td>${Shop.shopprice}</td>
													<td>${Shop.shopunit}</td>
													<!-- 购买数量 -->
													<td><input type="number" name="productCount" id="goshopnum" min="1" max="999" style="width:100px"></td>
													<td><input type="checkbox" name="goodsids" value="${Shop.shopno}"></td>
                                                     
													
													
                                          
                                            
                                        </tr>
                                       </c:forEach>
                                        </tbody>
                                           <!--  获取库存数，进行比较 -->                 
                                         <input type="hidden" value="${kucun }" id="shopkucun"/>
                                    </table>
                            </div>
                        </div>
                       
                    </div>
                    <!-- end panel -->
                    <div class="row">
					<div class="col-md-1 col-sm-1" ></div>
					<div class="col-md-3 col-sm-3" ><strong> <button  class="btn btn-block btn-default " style="background-color: #3F4B55" id="okSubmitButton">确定</button></strong></div>
					<div class="col-md-4 col-sm-4" ></div>
					<div class="col-md-3 col-sm-3" ><strong>  <input type="reset" class="  btn btn-block btn-default " style="background-color: #3F4B55"/></strong></div>
                   

				</div>
                </div>
                <!-- end col-10 -->
                 </form>
            </div>
            <!-- end row -->
		</div>
		<!-- end #content -->
		
       
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
	<input type="hidden" name="dddate" />
	<input type="hidden" name="customername" />
	<input type="hidden" name="customerno" />
	<input type="hidden" name="customeradd" />
	<input type="hidden" name="ddtxt" />
	<input type="hidden" name="customertel" />
	
	
	
	
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
	<script src="assets/plugins/DataTables/js/jquery.dataTables3.js"></script>
	<script src="assets/plugins/DataTables/js/dataTables.autoFill.js"></script>
	<script src="assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="assets/js/table-manage-autofill.demo.min.js"></script>
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
    <script type="text/javascript">
	
	
	//完成checkbox的全选和全不选功能
	$(function(){
		//window.alert($(":checkbox").length);
		//window.alert($("input[type=checkbox]").length + "个");
		$(":checkbox").first().click(function(){
			if(this.checked == true){
				$(":checkbox").prop("checked","checked");
			}else{
				$(":checkbox").removeProp("checked");
			}
		});
		
	
		
	}); 
</script>

	<script type="text/javascript">
	
	        /* 库存数小于实际购买量后弹窗 */
		$(function(){
			/* 隐藏表单域中的"value=库存不足"，说明对应库存不足 */
			if($("#shopkucun").val()=="库存不足！"){
				alert($("#shopkucun").val());
			}
		
			    /* 点击确定按钮后判断 */
			$("#okSubmitButton").click(function(){
			
				var counts = 0;
				$.each($(":checkbox"),function(i,item){
					if(item.checked == true){
						counts++;
					}
										
				});
				/* 判断是否选择商品 */
				if(counts == 0){
					window.alert("请您选择商品!");
					return false;
				}
				/* 判断是否输入购买数量 */
				var checkStatus = true;
				$.each($(":checkbox"),function(i,item){
					if(item.checked == true){						
						if($("input[name=productCount]").get(i-1).value == ""){
							 window.alert("请您输入需要购买的数量!"); 
							checkStatus = false;
						} 				
					}
				});
				if(!checkStatus){
					return checkStatus;
				}		
				$.each($(":checkbox"),function(i,item){
					if(item.checked == true){
					/* 将checkbox和购买量通过"-"连接在一起 */
						item.value = item.value + "-" + $("input[name=productCount]").get(i-1).value;
						
					}				
				}); 
			});			
		});
	</script>


</body>
</html>













