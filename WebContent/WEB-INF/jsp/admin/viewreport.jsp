<%@page import="com.digitizeads.modal.AdvertiserTrack"%>
<%@page import="com.digitizeads.util.CipherUtils"%>
<%@page import="com.digitizeads.util.Constants"%>
<%@page import="com.digitizeads.modal.Advertiser"%>
<%@page import="com.digitizeads.modal.SubDomain"%>
<%@page import="java.util.ArrayList"%>
<%
String contextPath = request.getContextPath();
String assetsPath = contextPath+"/assets/admin";
ArrayList<SubDomain> subDomainList = request.getAttribute(Constants.SUBDOMAIN_LIST)!=null?(ArrayList<SubDomain>)request.getAttribute(Constants.SUBDOMAIN_LIST):null;
ArrayList<Advertiser> advertiserList = request.getAttribute(Constants.ADMIN_ADVERTISER_LIST)!=null?(ArrayList<Advertiser>)request.getAttribute(Constants.ADMIN_ADVERTISER_LIST):null;
ArrayList<AdvertiserTrack> advertiserTrackList=request.getAttribute(Constants.ADVERTISER_TRACK)!=null?(ArrayList<AdvertiserTrack>)request.getAttribute(Constants.ADVERTISER_TRACK):null;

	
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
<meta charset="utf-8" />
<title>Community Admin Panel</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link
	href="<%=assetsPath %>/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=assetsPath %>/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=assetsPath %>/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=assetsPath %>/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=assetsPath %>/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->

<link
	href="<%=assetsPath %>/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=assetsPath %>/global/plugins/fullcalendar/fullcalendar.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=assetsPath %>/global/plugins/jqvmap/jqvmap/jqvmap.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->
<link href="<%=assetsPath %>/admin/pages/css/tasks.css" rel="stylesheet"
	type="text/css" />
<!-- END PAGE STYLES -->
<!-- BEGIN THEME STYLES -->
<!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
<link href="<%=assetsPath %>/global/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link href="<%=assetsPath %>/global/css/plugins.css" rel="stylesheet"
	type="text/css" />
<link href="<%=assetsPath %>/admin/layout2/css/layout.css"
	rel="stylesheet" type="text/css" />
<link href="<%=assetsPath %>/admin/layout2/css/themes/grey.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="<%=assetsPath %>/admin/layout2/css/custom.css"
	rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
<!-- CSS only -->
<!-- admin_reports starts -->
<link href="<%=assetsPath %>/admin/layout2/css/admin_reports.css"
	rel="stylesheet" type="text/css" />
<!-- admin reports ends -->
</head>

<body
	class="page-boxed page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid page-sidebar-closed-hide-logo">


	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- BEGIN HEADER INNER -->
		<jsp:include page="header.jsp" flush="true" />
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->

	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<jsp:include page="sideMenu.jsp" flush="true" />
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">

			<div>
				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN STYLE CUSTOMIZER -->

				<!-- END STYLE CUSTOMIZER -->
				<!-- BEGIN PAGE HEADER-->
				<div class="top_head_txt">
					<b><p class="padding-top-10">Reports</p></b>
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN DASHBOARD STATS -->

			<div class="page-content ">

				<div class="row padding-bottom-20">
					<div class="col-md-12">
						<!-- DROPDOWN MENU START-->
						<form name="reportForm" id="reportForm"
							action="<%=contextPath%>/admin/report" method="post">
							<!-- SUBDOMAIN DROPMENU -->
							<label for="subdomain"><b>Select SubDomain: </b></label> <select
								name="subdomain" id="subdomain" onchange="testOnchange()">
								<option value="">Select</option>
								<%
								for(SubDomain subDomain : subDomainList){ %>
								<option value="<%= subDomain.getSubDomainId()%>"><%= subDomain.getName()%>
								</option>
								<%} %>
							</select> <br> <br> <br>
							<!-- ADVERTISER DROPMENU -->


							<% if(advertiserList!=null && advertiserList.size()>0) {%>
							<label for="advertiser"><b>Select Advertiser: </b></label> <select
								name="advertiser" id="advertiser" onchange="testOnchange()">
								<option value="">Select</option>
								<%
								for(Advertiser advertiser : advertiserList){ %>
								<option value="<%= advertiser.getAdvertiserId() %>"><%= advertiser.getName() %>
								</option>
								<%} %>
								<%}else {%>
								<div>
									<b>No Advertiser record found</b>
								</div>
								<%} %>
							</select><input type="submit"
								value="Submit" name="submit" id="submitButton"><br>
							<br>
						</form>
					</div>
					<!-- VIEW STARTS-->
					<%if(request.getAttribute("views") !=null && advertiserList.size()>0) {%>
					<span class="animated_cards_container">
        <div class="col title_view">
            <div class="title">
                <div>
                    <h4>
                        <b><span id="subdomainText"></span> - <span
                            id="advertiserText"></span></b>
                    </h4>
                </div>
            </div>
        </div>
        <div class="col title_view">
            <div class="views counter-container">
                <span>Views</span>
                      <div class="count">
                      <%=request.getAttribute("views") %>
                      </div>
            </div>
        </div>
    </span>
					<%} %>
					<!-- VIEW END-->
					<!-- END TABLE PORTLET-->
					
					
					
					<%if((advertiserTrackList!=null && advertiserTrackList.size()>0 ) && advertiserList.size()>0) {%> 
					<div id="result"></div>
					<!-- PIE CHART START-->
					<div class="col-md-12" id="piechart"></div><br> <br>
					<!-- PIE CHART START-->
					<div class="portlet-body padding-top-60 padding-bottom-10">
						<p class="center external_footer">&copy; 2018-2019 Adwit
							Global. All rights reserved</p>
					</div>

					<%} %>
				</div>
				<!-- END TABLE PORTLET-->
				<!-- END DASHBOARD STATS -->
			</div>
			<!-- END CONTENT -->
			<!-- BEGIN QUICK SIDEBAR -->
			<!--Cooming Soon...-->
			<!-- END QUICK SIDEBAR -->
		</div>
		<!-- END CONTAINER -->
		<!-- BEGIN FOOTER -->
		<jsp:include page="footer.jsp" flush="true" />
		<!-- END FOOTER -->

		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
		<!-- BEGIN CORE PLUGINS -->
		<!--[if lt IE 9]>
<script src="<%=assetsPath %>/global/plugins/respond.min.js"></script>
<script src="<%=assetsPath %>/global/plugins/excanvas.min.js"></script> 
<![endif]-->
		<script src="<%=assetsPath%>/global/plugins/jquery.min.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/global/plugins/jquery-migrate.min.js"
			type="text/javascript"></script>
		<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
		<script
			src="<%=assetsPath%>/global/plugins/jquery-ui/jquery-ui.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/bootstrap/js/bootstrap.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/global/plugins/jquery.blockui.min.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/global/plugins/jquery.cokie.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/uniform/jquery.uniform.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
			type="text/javascript"></script>
		<!-- END CORE PLUGINS -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<script
			src="<%=assetsPath%>/global/plugins/jqvmap/jqvmap/jquery.vmap.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/global/plugins/flot/jquery.flot.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/flot/jquery.flot.resize.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/flot/jquery.flot.categories.min.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/global/plugins/jquery.pulsate.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/bootstrap-daterangepicker/moment.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/bootstrap-daterangepicker/daterangepicker.js"
			type="text/javascript"></script>
		<!-- IMPORTANT! fullcalendar depends on jquery-ui.min.js for drag & drop support -->
		<script
			src="<%=assetsPath%>/global/plugins/fullcalendar/fullcalendar.min.js"
			type="text/javascript"></script>
		<script
			src="<%=assetsPath%>/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/global/plugins/jquery.sparkline.min.js"
			type="text/javascript"></script>
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="<%=assetsPath%>/global/scripts/metronic.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/admin/layout2/scripts/layout.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/admin/layout2/scripts/demo.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/admin/pages/scripts/index.js"
			type="text/javascript"></script>
		<script src="<%=assetsPath%>/admin/pages/scripts/tasks.js"
			type="text/javascript"></script>

		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
		<script src="https://code.highcharts.com/modules/export-data.js"></script>
		<script src="https://code.highcharts.com/modules/accessibility.js"></script>



		<!-- END PAGE LEVEL SCRIPTS -->
		<script>
		
		

		
			jQuery(document)
					.ready(
							function() {
								Metronic.init(); // init metronic core componets
								Layout.init(); // init layout
								Demo.init(); // init demo features 
								Index.init();

								//				$("span").text(subdomainId);
								//				$('select option[value="subdomainId"]'').attr("selected","selected");
								//				$('select option[value=""]').attr("selected",true);
								
								
								var subdomainId =<%=request.getAttribute("subdomainId")%>;
								var  advertiserId =<%=request.getAttribute("advertiserId")%>;
								
  
								$(function() {
									$("#subdomain option[value='"+ subdomainId + "']").attr("selected", true);
									$("#advertiser option[value='"+ advertiserId + "']").attr("selected", true);
									var subDomainText = $("#subdomain option:selected").text();
									$('#subdomainText').text(subDomainText);
									var advertiserText = $("#advertiser option:selected").text();
									$('#advertiserText').text(advertiserText);
								});

								<%if (advertiserTrackList != null && advertiserTrackList.size() > 0) {%>
								reloadGraph();
							<%}%>
							

							
							});

			function testOnchange() {
				$("#submitButton").click();
				
			}

			
	
			reloadGraph = function(){
				var tempArray = [];
				var name;
				var y;
				
				
				
					<%if (advertiserTrackList != null && advertiserTrackList.size() > 0) {%>
						
						<%for (AdvertiserTrack advertiserTrack : advertiserTrackList) {%>
							tempArray.push({name : '<%=advertiserTrack.getSourceType()%>', y :<%=advertiserTrack.getCount()%>});
						<%}%>
						
					<%}%>
					
			
				
				Highcharts
				.chart(
						'piechart',
						{
							chart : {
								plotBackgroundColor : null,
								plotBorderWidth : null,
								plotShadow : false,
								type : 'pie'
							},
							title : {
								text : ''
							},
							tooltip : {
								pointFormat : '{series.name}: <b>{point.y}</b>'
							},
							accessibility : {
								point : {
									valueSuffix : '%'
								}
							},
							plotOptions : {
								pie : {
									allowPointSelect : true,
									cursor : 'pointer',
									dataLabels : {
										enabled : true,
										format : '<b>{point.name}</b>: {point.y}'
									}
								}
							},
							series : [ {
								name : 'Count',
								colorByPoint : true,
								data : tempArray
							} ]
						});
			}

			$('.count').each(function () {
			    $(this).prop('Counter',0).animate({
			        Counter: $(this).text()
			    }, {
			        duration: 1800,
			        easing: 'swing',
			        step: function (now) {
			            $(this).text(Math.ceil(now));
			        }
			    });
			    console.log(step);
			    console.log(duration);
			    console.log(now);
			});
			
		
		</script>

		<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>