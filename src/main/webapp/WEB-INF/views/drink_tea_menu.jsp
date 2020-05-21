<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>EDELIA CAFE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />


  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/superfish.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">


	<!-- Modernizr JS -->
	<script src="<c:url value="/resources/js/modernizr-2.6.2.min.js"/>"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="<c:url value="/resources/js/respond.min.js"/>"></script>
	<![endif]-->
	<script type="text/javascript">
	function popup_win1() { 
		window.open('/EDELIA/TEST/purchasemenu', '', 'location=no, height=426, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	
	var popupX = (window.screen.width / 2) - (400 / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (300 / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	
	function login() { 
		window.open('${pageContext.request.contextPath}/login/login', '', 'resizable=no, scrollbars=no, height=770, width=380, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	
	var popupX = (window.screen.width / 2) - (380 / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (770 / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	
		
	</script>
	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
			<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo"><a href="index"><span>EDELIA</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li><a href="index">Home</a></li>
								<li><a href="portfolio" class="fh5co-sub-ddown">Cafe Image</a></li>
								<li><a href="services" class="fh5co-sub-ddown">Coffee Story</a></li>
								<s:authorize ifAnyGranted="ROLE_USER">
								<li class="active">
									<a href="menu" class="fh5co-sub-ddown">MENU</a>
									 <ul class="fh5co-sub-menu">
									 	<li><a href="${pageContext.request.contextPath}/coffee_menu">Coffee</a></li>
									 	<li><a href="${pageContext.request.contextPath}/drink_tea_menu">Drink&Tea</a></li>
									 	<li><a href="${pageContext.request.contextPath}/dessert_menu">Dessert</a></li>
									</ul>
								</li>
								</s:authorize>
								<s:authorize ifAnyGranted="ROLE_ADMIN">
								<li class="active">
									<a href="menu" class="fh5co-sub-ddown">MENU</a>
									 <ul class="fh5co-sub-menu">
									 	<li><a href="${pageContext.request.contextPath}/admin/a_coffee_menu">Coffee</a></li>
									 	<li><a href="${pageContext.request.contextPath}/admin/a_drink_tea_menu">Drink&Tea</a></li>
									 	<li><a href="${pageContext.request.contextPath}/admin/a_dessert_menu">Dessert</a></li>
									</ul>
								</li>
								</s:authorize>
								<s:authorize ifAnyGranted="ROLE_USER">
								<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
								</s:authorize>
								<s:authorize ifAnyGranted="ROLE_ADMIN">
								<li><a href="${pageContext.request.contextPath}/admin/con_page">Contact</a></li>
								</s:authorize>
								<s:authorize ifAnyGranted="ROLE_USER">
								<li><a href="${pageContext.request.contextPath}/per/per_page">${pageContext.request.userPrincipal.name}님</a><li>
								</s:authorize>
								<s:authorize ifAnyGranted="ROLE_ADMIN">
								<li><a href="${pageContext.request.contextPath}/per/admin_per_page">${pageContext.request.userPrincipal.name}님</a><li>
								</s:authorize>
								<c:if test="${not empty pageContext.request.userPrincipal}">
								<li><a href="<c:url value="/login/logout" />">LOGOUT</a></li>
								</c:if>
								<c:if test="${empty pageContext.request.userPrincipal}">
								<li><a href="index" onclick="login()">LOG IN</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</header>
			
		</div>
		

		<div class="fh5co-hero fh5co-hero-2">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover fh5co-cover_2 text-center" data-stellar-background-ratio="0.5" style="background-image: url(${pageContext.request.contextPath}/resources/images/work-3.jpg);">
				<div class="desc animate-box">
					<h2></h2>
				</div>
			</div>

		</div>
		<!-- end:header-top -->
		<div id="fh5co-blog-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>drink & tea menu</h3>
						<p>Tea is a beverage from tea leaves. <br />Generally, a plant is called a tea drink.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<c:forEach items="${drink_tea_menu}" var="drink_tea_menu">
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/${drink_tea_menu.mImg}.jpg" alt=""></a>
								<div class="image-popup" href="#">
									<div class="prod-title">
									<h3><a href=""#>${drink_tea_menu.mName}</a><span class="comment"><a href="">${drink_tea_menu.mPrice}￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : ${drink_tea_menu.mSize}<br/>나트륨(mg) : ${drink_tea_menu.mNa}<br/>포화지방(g) : ${drink_tea_menu.mFat}<br/>당류(g) : ${drink_tea_menu.mSugar}<br/>단백질(g) : ${drink_tea_menu.mPro}<br/>카페인(mg) : ${drink_tea_menu.mCa}</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="${drink_tea_menu.mName}" onclick="popup_purchase()"">
								</div>
							</div> 
						</div>
					</div>
				</c:forEach>
				</div>
			</div>
		</div>
		<!-- fh5co-blog-section -->
		
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-dribbble2"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
							<p>Copyright 2018  <a href="#">EDELIA</a>. <br>Made with by ComputerSystem / Member: 이성연, 이재승</p>						</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<!-- jQuery Easing -->
	<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
	<!-- Bootstrap -->
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<!-- Waypoints -->
	<script src="<c:url value="/resources/js/jquery.waypoints.min.js"/>"></script>
	<!— Stellar —>
	<script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
	<!— Superfish —>
	<script src="<c:url value="/resources/js/hoverIntent.js"/>"></script>
	<script src="<c:url value="/resources/js/superfish.js"/>"></script>

	<!— Main JS (Do not remove) —>
	<script src="<c:url value="/resources/js/main.js"/>"></script>

	</body>
</html>