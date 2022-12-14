
<%
String contextPath = request.getContextPath();
String assetsPath = contextPath+"/assets/admin";
%>


<!DOCTYPE html>

<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>Community Directory | Login </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="<%=assetsPath %>/admin/pages/css/login.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="<%=assetsPath %>/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/admin/layout2/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/admin/layout2/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="<%=assetsPath %>/admin/layout2/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler">
</div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGO -->
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
	<!-- BEGIN LOGIN FORM -->
	<div align="center"><img src="<%=assetsPath %>/comm_logo.png" style="width: 70px;height: auto" /></div>
	<form class="login-form" id="loginFrm" action="<%=contextPath %>/admin/login" method="post" >
		<h3 class="form-title">Sign In</h3>
		<div class="alert alert-danger display-hide">
			<button class="close" data-close="alert"></button>
			<span>
			Enter username and password. </span>
		</div>
		<div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label class="control-label visible-ie8 visible-ie9">Username</label>
			<input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" id="username" name="username"/>
		</div>
		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Password</label>
			<input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" id="password" name="password" />
		</div>
		<div class="form-actions">
			<button type="submit" class="btn btn-success uppercase" id="Login-button">Login</button>
			<!--<label class="rememberme check">
			<input type="checkbox" name="remember" value="1"/>Remember </label>-->
			<!--<a href="javascript:;" id="forget-password" class="forget-password">Forgot Password?</a>-->
		</div>
		
		
	</form>
	<!-- END LOGIN FORM -->
	<!-- BEGIN FORGOT PASSWORD FORM -->
	<!--<form class="forget-form" action="index.html" method="post">
		<h3>Forget Password ?</h3>
		<p>
			 Enter your e-mail address below to reset your password.
		</p>
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email"/>
		</div>
		<div class="form-actions">
			<button type="button" id="back-btn" class="btn btn-default">Back</button>
			<button type="submit" class="btn btn-success uppercase pull-right">Submit</button>
		</div>
	</form>-->
	<!-- END FORGOT PASSWORD FORM -->
	<!-- BEGIN REGISTRATION FORM -->
	
	<!-- END REGISTRATION FORM -->
</div>
<div class="copyright">
	 Login For Community Admin. 
</div>
<!-- END LOGIN -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="<%=assetsPath %>/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<%=assetsPath %>/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=assetsPath %>/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/admin/layout2/scripts/layout.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/admin/layout2/scripts/demo.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/admin/pages/scripts/login.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {     
Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Login.init();
Demo.init();
});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>