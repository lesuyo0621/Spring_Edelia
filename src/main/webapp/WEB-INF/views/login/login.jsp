<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>EDELIA CAFE</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
		<script type="text/javascript">
			function sign_up() { 
				window.open('${pageContext.request.contextPath}/login/signup', '', 'resizable=no, height=800, width=520, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
			}
			var popupX = (window.screen.width / 2) - (426 / 2);
			var popupY= (window.screen.height /2) - (800 / 2);
			
			function forgot_password() { 
				window.open('${pageContext.request.contextPath}/login/forgot_password', '', 'resizable=no, height=800, width=520, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
			}
			
		</script>
</head>
	<body>
	

	<!-- Wrapper -->
	<div id="wrapper" class="divided">
		<!-- Gallery -->
		<section class="wrapper style1 align-center">
			<div class="inner">
				
				<!-- <!-- <p>
					This is a <strong>Gallery</strong> element. It can behave as a
					lightbox (when given the
					<code>lightbox</code>
					class), and you can customize its <span class="demo-controls">appearance
						with a number of modifiers</span>, as well as assign it an optional
					<code>onload</code>
					or
					<code>onscroll</code>
					transition modifier (<a href="#reference-gallery">details</a>).
				</p> -->
			</div>

			
			<!-- Additional Elements -->
			<section class="wrapper style1 align-center">
			<h2>LOG IN</h2>
				<div class="inner">
				<div class="index align-left">
					<!-- Form -->
					<section>

					<div class="content">

						<form method="post" action="<c:url value="j_spring_security_check" />">
							<div class="field">
								<label for="id">ID</label> <input type="text" name="j_username"
									id="id" value="" required />
							</div>
							<div class="field">
								<label for="pwd">PASSWORD</label> <input type="text" name="j_password"
									id="pwd" value="" required />
							</div>
							
							<div class="field">
								<label for="priority-high">
								<ul class="actions vertical">
									<li><input type="submit" value="로그인" class="button small"></li>
								</ul> 
								</label>
							</div>
							<div class="field third first" style="text-align:right">
								<a href="#" onclick="forgot_password()">Forgot Password?</a>
							</div>
							<div class="field third first" style="text-align:right">
								<a href="#" onclick="sign_up()">Create New account</a>
							</div>
							
					</form>
							
					</div>
					</section>




				</div>
				<!-- Footer -->
				<footer class="wrapper style1 align-center">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon style2 fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon style2 fa-facebook"><span
								class="label">Facebook</span></a></li>
					</ul>
					<p>
						&copy; Design: <a href="#">EDELIA</a>.
					</p>
				</div>
				</footer>

			</div>

			<!-- Scripts --> 
			<script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script> 
			<script src="<c:url value="/resources/assets/js/jquery.scrollex.min.js"/>"></script> 
			<script src="<c:url value="/resources/assets/js/jquery.scrolly.min.js"/>"></script> 
			<script src="<c:url value="/resources/assets/js/skel.min.js"/>"></script> 
			<script src="<c:url value="/resources/assets/js/util.js"/>"></script> 
			<script src="<c:url value="/resources/assets/js/main.js"/>"></script>

			<!-- Note: Only needed for demo purposes. Delete for production sites. -->
			<script src="<c:url value="/resources/assets/js/demo.js"/>"></script></body>
</html>