<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- html是静态网页，不支持数据库。jsp是动态网页，支持数据库。 -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 标准标签库，包括通用标签、流程控制标签、循环控制标签 -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- 日期、数字格式化 -->

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!-- 默认英文，谷歌浏览器会提示自动翻译 -->

<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>FOUNDER | 方正集团销售管理业务系统</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" /><meta content="" name="description" />
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
					

						
					</li>
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="assets/img/user-13.jpg" alt="" /> 
							<!-- EL表达式 --> 
							<span class="hidden-xs">${loginEmployeeInfo.employeename}</span>
							<b class="caret"></b>
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
							<!-- EL表达式 -->
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
							
							<li class="active">
							    <a href="dingdanchuangjian.html"><!--<b class="caret pull-right"></b>--> 订单创建 <i class="fa fa-paper-plane text-theme m-l-5"></i></a>
							    
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
							
						</ul>
					</li>
					
				</ul>
				<!-- end sidebar nav -->
			</div>
			<!-- end sidebar scrollbar -->
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		</div>
		


		<div  id="content" class="content">
			<div class="row">
				<div class="col-md-12">
	<form class="form-horizontal form-bordered" data-parsley-validate="true" name="demo-form" novalidate="" action="tijiao.html" method="post">
					<div class="panel panel-inverse" >
					
					
						<div class="panel-heading">
							<div class="panel-heading-btn">
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
							</div>
							<h4 class="panel-title">订单创建</h4>
						</div>
		
						<div class="panel-body panel-form">
	                
								<div class="form-group">
									<label class="control-label col-md-3  col-sm-3" for="fullname">下单日期 :</label>
									<div class="col-md-4 col-sm-4">
										<input type="text" class="form-control" readonly="readonly" value='<fmt:formatDate value="${cus.orderdate }" pattern="yyyy-MM-dd"/>' name="orderdate"id="datepicker-default" placeholder="选择日期" >
										
									</div>
								</div>
							
								<div class="form-group">
									<label class="control-label col-md-3  col-sm-3" for="fullname">客户名称 :</label>
									<div class="col-md-4 col-sm-4">
										<input  class="form-control" type="text" id="customername" value="${cus.customername }" name="customername" placeholder="" data-parsley-required="true" data-parsley-id="6299">
										<ul class="parsley-errors-list" id="parsley-id-6299"></ul>
									 <input type="hidden"  value="${cusname}" id="pdcusname"/>
									
									</div>
								</div>
							
								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3" for="email">客户编号:</label>
									<div class="col-md-4 col-sm-4">
										<input class="form-control" type="text" id="customerno" name="customerno"  data-parsley-required=
												"true" data-parsley-id="6299" readonly="readonly" value="${cus.customerno }"><ul class="parsley-errors-list" id="parsley-id-6299" ></ul>
									</div>
								</div>
								
								
								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3" >地址:</label>
									<div class="col-md-4 col-sm-4">
										<input  class="form-control" type="text" id="address" name="customeradd" value="${cus.customeradd }"  ><ul class="parsley-errors-list" id="parsley-id-6299" ></ul>
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3" for="message">备注:</label>
									<div class="col-md-4 col-sm-4">
										<textarea class="form-control" id="message" name="ddtxt" value="${cus.ddtxt}" rows="4" data-parsley-range="[20,200]"  data-parsley-id="4807">${cus.ddtxt}</textarea><ul class="parsley-errors-list" id="parsley-id-4807"></ul>
									</div>
								</div>


								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3" for="message" id="phone"  >电话 :</label>
									<div class="col-md-4 col-sm-4">
										<input class="form-control" value="${cus.customertel }" readonly="readonly" type="text" name="customertel" id="data-phone" data-parsley-type="number"  data-parsley-id="1895"><ul class="parsley-errors-list" id="parsley-id-1895"></ul>
									</div>
								</div>
								
								
									<div style="float:right;margin-bottom:10px">
													<span style="margin-right:10px">
													
														<button  type="submit"  id="tianjiashangpinid"class="btn btn-success">
															添加商品
														</button>
														
													</span>
														
													<span style="margin-right:10px"><button type="submit" class="btn   btn-danger" id="deletebtn">
														&nbsp;&nbsp;&nbsp;&nbsp;删除&nbsp;&nbsp;&nbsp;&nbsp;
													</button></span>
                                                </div>
                                                
                                               
								</div>

                           
                                </div>

							
								
	
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
                            <h4 class="panel-title">购物车</h4>
                        </div>
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table id="data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                                    <th >商品编号</th>
													<th >名字</th>
													<th >单价</th>
													<th >数量</th>
													<th >总价</th>
													<th ><input type="checkbox" ></th>               
                                        </tr>
                                    </thead>
                                    <tbody>
                                                <c:forEach items="${productList1}" var="Shop" >
												<tr>
													<td >${Shop.shopno}</td>
													<td >${Shop.shopname}</td>
													<!-- 小数位为两位 -->
													<td ><fmt:formatNumber value="${Shop.shopprice}" maxFractionDigits="2"/></td>
													<td >${Shop.goshopnum}</td>
													<td> <fmt:formatNumber value="${Shop.zongji}" maxFractionDigits="2"/></td>
													<td ><input type="checkbox" class="shanchuclass" value="${Shop.shopno}" name="test" ></td>	
													
													 <!--   <!-- 该隐藏表单域用于保存商品编号 --> 											
												    <input type="hidden" value="${Shop.shopno}" name="shopno"/>
												     <!--   <!-- 该隐藏表单域用于保存购买的商品数量 --> 
												    <input type="hidden" value="${Shop.goshopnum}" name="goshopnum"/>
							                        <!--   <!-- 该隐藏表单域用于保存操作员工的编号 -->                    
							                        <input type="hidden" name="employeeno" value="${Shop.employeeno}"/>
							                        						
												</tr>
												</c:forEach>
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-10 -->
          

								<!-- end panel -->
								<div class="row">
								
								<div class="col-md-2"></div>
								<div class="col-md-3">
								<button type="submit"  class="btn btn-block  btn-success" id="actionbtn" >
															确定
								</button></div>
														
								<div class="col-md-2"></div>
														
								<div class="col-md-3">
								<button type="button"  type="reset" class="btn btn-block  btn-success">
															取消
								</button></div>
														
								<div class="col-md-2"></div>
								</div>
								</form>
							
	</div>			
</div>
</div>

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
	<script src="assets/plugins/DataTables/js/jquery.dataTables.js"></script>
	<script src="assets/plugins/DataTables/js/dataTables.autoFill.js"></script>
	<script src="assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="assets/js/table-manage-autofill.demo.min.js"></script>
	<script src="assets/js/apps.min.js"></script>

	<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker1.js"></script>
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
	
    <script type="text/javascript" src="js/typeahead/bootstrap3-typeahead.js"></script>
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
    
    <!-- 判断顾客名称是否存在 -->
	<c:if test="${not empty cusname}">
     <script type="text/javascript">window.alert('<c:out value="${cusname}"/>');</script>
     </c:if>
     
    <script type="text/javascript">	
    
	//顾客名模糊查询，自动补全顾客信息
	
	var addressArray = {};
	var customernoArray = {};
	var phoneArray = {};
	$("#customername").typeahead({
	    source: function (query, process) {
	        $.ajax( {
	    		//请求url
	    	    url:'<%=request.getContextPath()%>/dingdanchuangjianSearchCustomer.html',
	    	    //请求参数
	    	    data:{'customer' : query},
	    	    //提交方式
	    	    type:'post',
	    	    //返回值类型
	    	    dataType:'json',
	    	    //处理成功后函数
	    	    success:function(data) {
	    	    	//alert(data);
	    	    	if(query == ""){
	    	    		array = {};
	    	    	}
	    	    	
	    	    	var array = [];
	    	    	$.each(data, function(i, item) { 
	    	    		//地址
	    	    		addressArray[item.customername] = item.customeradd;	
	    	    		//顾客编号
	    	    	    customernoArray[item.customername] = item.customerno;
	    	    		//顾客电话
	    	    	    phoneArray[item.customername] = item.customertel;
	    	    	    //push方法可向数组添加一个或多个元素，并返回新的长度
	    	    		array.push(item.customername);
	    	    		
	    });           
	    	    	//将数组添加到进程中
		    	    process(array);
		    	   
	    	    }
	    	});	
	    },
	    //显示8个项目
	    items: 8,
	    afterSelect: function (item) {
	    	/* 根据id，设置input框的值 */
	    	$("#address").val(addressArray[item]);	    
	    	$("#customerno").val(customernoArray[item]);
	    	$("#data-phone").val(phoneArray[item]);
	    	
	    },
	    fitToElement: true,
	    delay: 500
	    //延迟5s
	});
	
	//完成全选和全不选功能
     $(function(){	
    	 
		$(":checkbox").first().click(function(){
			if(this.checked == true){
				$(":checkbox").prop("checked","checked");
				/* prop 针对当前jquery对象所匹配的每一个元素 */
			}else{
				$(":checkbox").removeProp("checked");
			}
		});
				
		
	//提交表单 验证表单
	$("#actionbtn").click(function(){	
		/* 验证是否输入下单日期 */
		if($("#datepicker-default").val() == ""){
			window.alert("请选择下单日期！");
			return false;
		}
		/* 验证是否选择购物篮中商品 */
		var cs = $("input[name='test']:checked");
		if(cs.length==0){
			alert("请您选择商品！")
			return false;}
			
		/* 验证是否输入客户 */
			if($("#customername").val() == ""){
				window.alert("请选择顾客！");
				return false;
			}
		/* 验证是否输入顾客地址	 */
			if($("#address").val() == ""){
				window.alert("请选择顾客地址！");
				return false;
			}
						
	});

	//选中复选框删除指定session	
		$("#deletebtn").click(function(){
			var count=0;
			$.each($(":checkbox"),function(i,items){
				if(items.checked==true){					
					count++;
				}
			});
			if(count==0){
				alert("请选择删除项！");
				return false;
				
			}			
			
			//prop用于设置或返回当前jQuery对象所匹配的元素的属性值
		$("form").prop("action","shanchu.html");});
	
	
		$("#tianjiashangpinid").click(function(){
			$("form").prop("action","dingdan2.html");});
		
});
     
</script>

</body>
</html>

