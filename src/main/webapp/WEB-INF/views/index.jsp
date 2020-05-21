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
	<title>Edelia</title>
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
	function login() { 
		window.open('${pageContext.request.contextPath}/login/login', '', 'resizable=no, scrollbars=no, height=770, width=380, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	
	var popupX = (window.screen.width/2) - (380/2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height/2) - (770/2);
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
						<a href="index" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo"><a href="index"><span>EDELIA</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li class="active">
									<a href="index">Home</a>
								</li>
								<li><a href="portfolio" class="fh5co-sub-ddown">Cafe Image</a></li>
								<li><a href="services" class="fh5co-sub-ddown">Coffee Story</a></li>
								<s:authorize ifAnyGranted="ROLE_USER">
								<li>
									<a href="menu" class="fh5co-sub-ddown">MENU</a>
									 <ul class="fh5co-sub-menu">
									 	<li><a href="${pageContext.request.contextPath}/coffee_menu">Coffee</a></li>
									 	<li><a href="${pageContext.request.contextPath}/drink_tea_menu">Drink&Tea</a></li>
									 	<li><a href="${pageContext.request.contextPath}/dessert_menu">Dessert</a></li>
									</ul>
								</li>
								</s:authorize>
								<s:authorize ifAnyGranted="ROLE_ADMIN">
								<li>
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
		

		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(${pageContext.request.contextPath}/resources/images/home-image.jpg);">
				<div class="desc animate-box">
					
					<p><p>
					<!-- <span>For the ENJOY of EDELIA CAFE</span> -->
					<!-- <span><a class="btn btn-primary" href="#banner">Welcome</a></span> -->
				</div>
			</div>

		</div>
		<!-- end:header-top -->
		<div id="fh5co-work-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>CAFE image</h3>
						<p>이델리아와 함께하는 또 다른 재미로 당신을 초대합니다.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-8">
						<div class="fh5co-grid animate-box" style="background-image: url(${pageContext.request.contextPath}/resources/images/edelia_1.jpg);">
							<a class="image-popup text-center" href="#">
								<div class="prod-title">
									<h3>EDELIA TERRACE</h3>
									<span>2018.12.17.</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="fh5co-grid animate-box" style="background-image: url(${pageContext.request.contextPath}/resources/images/edelia_3.jpg);">
							<a class="image-popup text-center" href="#">
								<div class="prod-title">
									<h3>EDELIA INSIDE</h3>
									<span>2018.12.17.</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="fh5co-grid animate-box" style="background-image: url(${pageContext.request.contextPath}/resources/images/edelia_4.jpg);">
							<a class="image-popup text-center" href="#">
								<div class="prod-title">
									<h3>EDELIA ENTRANCE</h3>
									<span>2018.12.17.</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-8 col-sm-8">
						<div class="fh5co-grid animate-box" style="background-image: url(${pageContext.request.contextPath}/resources/images/edelia_2.jpg);">
							<a class="image-popup text-center" href="#">
								<div class="prod-title">
									<h3>EDELIA COUNTER</h3>
									<span>2018.11.26.</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- fh5co-work-section -->
		<div id="fh5co-services-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>OUR SERVICE</h3>
						<p>아래와 같은 서비스를 제공해 드립니다.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row text-center">
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-browser"></i></span>
							<h3>Web Service</h3>
							1. 다양한 메뉴 확인 <br /> 2. 간편결제 주문 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br/> 3. Take-out시간조정</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-mobile"></i></span>
							<h3>Mobile Web Service</h3>
							1. 다양한 메뉴 확인 <br /> 2. 간편결제 주문 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br/> 3. Take-out시간조정</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-tools"></i></span>
							<h3>Contact Service</h3>
							1. 간편문의작성<br /> 2. 실시간 확인&nbsp&nbsp&nbsp&nbsp<br />3. 신속한 답변&nbsp&nbsp&nbsp&nbsp<br/><br/></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- fh5co-content-section -->
		<div id=div id="fh5co-content-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box"><p><p><p>
						<h3>CAFE MENU</h3>
						<p>이델리아는 언제나 신선한 커피, 맛있는 디저트, <br/>자유로운 감성이 함께하는 최고의 공간을 추구합니다.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="coffee_menu"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/coffee1.jpg" alt=""></a>
							<div class="image-popup" href="coffee_menu">
								<div class="prod-title">
									<h3><a href="coffee_menu">coffee</a></h3>
									<!-- <span class="posted_by">Posted by: Admin</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span> -->
									<p>Coffee is a bitter beverage that roasts a coffee tree and drinks it with warm water, cold water or steam.</p>
									<a href="coffee_menu" class="btn btn-primary">READ MORE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="drink_tea_menu"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/drink.jpg" alt=""></a>
							<div class="image-popup" href="drink_tea_menu">
								<div class="prod-title">
									<h3><a href="drink_tea_menu">Drinks & Tea</a></h3>
									<!-- <span class="posted_by">Posted by: Admin</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span> -->
									<p>Tea is a beverage from tea leaves. <br />Generally, a plant is called a tea drink.<br /><br /></p>
									<a href="drink_tea_menu" class="btn btn-primary">Read More</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="dessert_menu"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/desert.jpg" alt=""></a>
							<div class="image-popup" href="dessert_menu">
								<div class="prod-title">
									<h3><a href="dessert_menu">dessert</a></h3>
									<!-- <span class="posted_by">Posted by: Admin</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span> -->
									<p>Dessert or dessert is eaten with food after eating, and there are many kinds.<br /><br /></p>
									<a href="dessert_menu" class="btn btn-primary">Read More</a>
								</div>
							</div> 
						</div>
					</div>
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
	<!— END fh5co-page —>

	</div>
	<!— END fh5co-wrapper —>

	<!— jQuery —>


	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<!— jQuery Easing —>
	<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
	<!— Bootstrap —>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<!— Waypoints —>
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