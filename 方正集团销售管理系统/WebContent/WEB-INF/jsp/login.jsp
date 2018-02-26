<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- JSTL:标准标签库，只要是标签库 ，就必须使用taglib导入-->
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
	
	<!-- ================== END BASE CSS STYLE ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<div class="login-cover">
	    <div class="login-cover-image"><img src="assets/img/login-bg/bg-1.jpg" data-id="login-cover-image" alt="" /></div>
	    <div class="login-cover-bg"></div>
	</div>
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
	    <!-- begin login -->
        <div class="login login-v2" data-pageload-addclass="animated flipInX">
            <!-- begin brand -->
            <div class="login-header">
                <div class="brand">
                    <span class="logo"></span> FOUNDER
                    <small>方正集团销售管理业务系统</small>
                </div>
                <div class="icon">
                    <i class="fa fa-sign-in"></i>
                </div>
            </div>
            <!-- end brand -->
            <div class="login-content">
                <form action="main1.html" class="margin-bottom-0" method="post">
                	<div class="form-group m-b-20">
                			<c:if test="${not empty loginFailureInfo}">
							<div id="warningAlert" class="alert  text-left" role="alert">
					      		${loginFailureInfo}
					    	</div>
						</c:if>
						
						
						
						<c:if test="${empty loginFailureInfo}">
							<div style="display:none;" id="warningAlert" class="alert text-left" role="alert" >
					      		
					    	</div>
						</c:if>
                		<select class="form-control input-lg " id="colorselect" name="departmentno" >
                				<option id="colorselect1" style="disabled selected">部门</option>
                			
                			<c:forEach items="${DepartmentList}" var="Department">
                			<option value="${Department.departmentno}" id="colorselect1">${Department.departmentname}</option>
                			</c:forEach>
                		
                			
                		</select>
                        
                    </div>
                    <div class="form-group m-b-20">
                        <input type="text" class="form-control input-lg" placeholder="请输入账号" name="employeeno" id="emp_no"/>
                    </div>
                    <div class="form-group m-b-20">
                        <input type="password" class="form-control input-lg" placeholder="请输入密码" name="employeepwd" id="emp_pwd"/>
                    </div>
                    
                   
          
                       <a href="main.html">	<button class="btn btn-success btn-block btn-lg" type="submit" id="loginButton">  登录  </button></a> 
                    
                    
                   
                    <div class="m-t-20">
                    <!--  <div class="alert alert-danger alert-dismissable fade in" role="alert" style="display:none" id="warningAlert">
<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">x</span></button>
			
				<p id="warningtext">
					你目前的应用程序为4.62版，请升级到最新的版本，可以解决三个修复性错误。
				</p>
				</div> -->
				
				
			
                    </div>
                </form>
            </div>
        </div>
        <!-- end login -->
        
        <ul class="login-bg-list">
            <li class="active"><a href="#" data-click="change-bg"><img src="assets/img/login-bg/bg-1.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets/img/login-bg/bg-2.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets/img/login-bg/bg-3.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets/img/login-bg/bg-4.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets/img/login-bg/bg-5.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets/img/login-bg/bg-6.jpg" alt="" /></a></li>
        </ul>
        
        
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
	<script src="assets/js/login-v2.demo.min.js"></script>
	<script src="assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			LoginV2.init();
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
	//jQuery必须写在<script>标记中，并且使用$符和一对小括号。注意与EL表达式的区别。
	$(function(){
		//使用jQuery的ID选择器，即#号+标记的id属性值。
		//按钮的单击事件对应click()方法 。
		$("#loginButton").click(function(){
			//使用类型选择器（即直接使用标记名）
			if($("select").val() == "部门"){
				//弹出提示对话框
				$("#warningAlert").text("请选择部门！").show();
				$("select").focus();
				return false;
			}
			

			
			if($("#emp_no").val() == ""){
				$("#warningAlert").text("员工编号不允许为空！").show();
				
				$("#emp_no").focus();
				return false;
			}
			var reg = /^\d{1,10}$/;
			if(!reg.test($("#emp_no").val())){
				$("#warningAlert").text("账号必须为1至10位整数！").show();
				/* window.alert("账号必须为1至10位整数！"); */
				return false;
			}
			if($("#emp_pwd").val() == ""){
				$("#warningAlert").text("密码不允许为空！").show();
				
				$("#emp_pwd").focus();
				return false;
			}
			return true;

		});
	});
</script>
</body>
</html>

