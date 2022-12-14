<%@page import="com.digitizeads.modal.Coupon"%>
<%@page import="com.digitizeads.util.CipherUtils"%>
<%@page import="com.digitizeads.util.Constants"%>
<%@page import="com.digitizeads.modal.Advertiser"%>
<%@page import="java.util.ArrayList"%>
<%
String contextPath = request.getContextPath();
String assetsPath = contextPath+"/assets/admin";

ArrayList<Coupon> couponList = request.getAttribute(Constants.ADMIN_COUPON_LIST)!=null?(ArrayList<Coupon>)request.getAttribute(Constants.ADMIN_COUPON_LIST):null;
%> 

<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.2
Version: 3.7.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>Community Admin Panel</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link href="<%=assetsPath %>/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->
<link href="<%=assetsPath %>/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE STYLES -->
<!-- BEGIN THEME STYLES -->
<!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
<link href="<%=assetsPath %>/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/admin/layout2/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="<%=assetsPath %>/admin/layout2/css/themes/grey.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="<%=assetsPath %>/admin/layout2/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
<!-- admin css -->
<link href="<%=assetsPath %>/admin/layout2/css/admin_dashboard.css" rel="stylesheet" type="text/css"/>
<!--  -->
<style>

</style>
</head>

<body class="page-boxed page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid page-sidebar-closed-hide-logo">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<jsp:include page="header.jsp" flush="true"/>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->

	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<jsp:include page="sideMenu.jsp" flush="true"/>
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
		
			<div >
				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				
				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN STYLE CUSTOMIZER -->
				
				<!-- END STYLE CUSTOMIZER -->
				<!-- BEGIN PAGE HEADER-->
			<div class="top_head_txt">
					<b><p class="padding-top-10">Manage Coupons</p></b>
				</div>
			</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN DASHBOARD STATS -->
		
		<div class="page-content ">
		
		<p class="black"><b><a href="<%=contextPath %>/admin/coupon/add">Add New</a> </b></p>
		
		<div class="row padding-bottom-20">
					<div class="col-md-12">
					<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="">
							
							<div class="portlet-body back_white" >
								
								<table class="table table-striped table-bordered table-hover" id="sample_1">
								<thead>
								<tr>
									
									<th>
										 ID
									</th>
									
									<th>
										Coupon Name
									</th>
									<th>
										Coupon File
									</th>
									<th>
										 Advertiser
									</th>
									<th>
										 Valid From / To
									</th>
									<th>
										 Featured 
									</th>
									<th>
										 Edit 
									</th>
									</tr>
								</thead>
								<tbody>
								<%
								int index = 1;
								for(Coupon coupon : couponList){ %>
								<tr class="odd <%=index%2==0?"gradeX":""%>">
									
									<td>
										<%=index++ %>
									</td>
									
									<td>
										<%=coupon.getTitle() %>
										
									</td>
									<td>
										<embed src="https://adwit-community.s3.ap-south-1.amazonaws.com/coupons/<%=coupon.getSourceLink() %>" width="100px" />
										
										
									</td>
									<td >
										<%=coupon.getAdvertiser().getName() %>
									</td>
									<td >
										<%=coupon.getValidFrom() %><br/>
										<%=coupon.getValidTo() %>
									</td>
									
									<td>
										<%=coupon.isFeatured()?"Yes":"No" %>
									</td>
									<td>
										<a href="<%=contextPath %>/admin/coupon/edit/<%=CipherUtils.encryptId(coupon.getCouponId()+"") %>/"><span class="glyphicon glyphicon-edit">
										</span></a>
										
										<a
												href="javascript:;"
												onclick="removeCoupon('<%=coupon.getCouponId() %>');"><span
													class="glyphicon glyphicon-trash"> </span></a>
									</td>
									</tr>
                                    <%} %>
								
								</tbody>
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
					</div>
					<div class="portlet-body padding-top-60 padding-bottom-10">
						<p class="center external_footer">&copy; 2018-2019 Adwit Global. All rights reserved</p>
						</div>
				</div>
		
				<!-- END DASHBOARD STATS -->
				
			</div>
		</div>
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->
		<!--Cooming Soon...-->
		<!-- END QUICK SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	  <jsp:include page="footer.jsp" flush="true"/>
	<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="<%=assetsPath %>/global/plugins/respond.min.js"></script>
<script src="<%=assetsPath %>/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="<%=assetsPath %>/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="<%=assetsPath %>/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<%=assetsPath %>/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui.min.js for drag & drop support -->
<script src="<%=assetsPath %>/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=assetsPath %>/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/admin/layout2/scripts/layout.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/admin/layout2/scripts/demo.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/admin/pages/scripts/index.js" type="text/javascript"></script>
<script src="<%=assetsPath %>/admin/pages/scripts/tasks.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {    
   Metronic.init(); // init metronic core componets
   Layout.init(); // init layout
   Demo.init(); // init demo features 
   Index.init();   
   Index.initDashboardDaterange();
   Index.initJQVMAP(); // init index page's custom scripts
   Index.initCalendar(); // init index page's custom scripts
   Index.initCharts(); // init index page's custom scripts
   Index.initChat();
   Index.initMiniCharts();
   Tasks.initDashboardWidget();
});

removeCoupon = function(couponId){
	var result = confirm("Are you sure want to delete the couon detail?");
		
		if(result){ 
			$.ajax({  
			       url : '<%=contextPath%>/admin/business/coupon/remove',  
			       type : 'POST',
			       dataType: 'json',
			       data: { couponId: couponId},
			       success : function(response) {
			    	   console.log('response : '+response);
			    	   location.reload();
			       }
			});
		}

		
		
	}
	
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>