<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>PURCHASE MENU</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/purchase_assets/css/main.css" />
		<script type="text/javascript">
			var popupX = (window.screen.width / 2) - (400 / 2);
			
			var popupY= (window.screen.height /2) - (300 / 2);
			
			var popupA = (window.screen.width / 2) - (558 / 2);
			
			var popupB= (window.screen.height /2) - (435 / 2);
			
			var popupC = (window.screen.width / 2) - (840 / 2);
			
			var popupD= (window.screen.height /2) - (700 / 2); 
			
			var popupE = (window.screen.width / 2) - (500 / 2);
			
			var popupF= (window.screen.height /2) - (690 / 2); 	
		
			function popup_win1() {
				window.open('${pageContext.request.contextPath}/purchase/kakaopay', '', 'height=558, width=435, left='+ popupA + ', top='+ popupB + ', screenX='+ popupA + ', screenY= '+ popupB);
				window.close('${pageContext.request.contextPath}/purchasemenu', '', 'height=300, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
			}
			
			function popup_win2() {
				window.open('${pageContext.request.contextPath}/purchase/kginicis', '', 'height=600, width=840, left='+ popupC + ', top='+ popupD + ', screenX='+ popupC + ', screenY= '+ popupD);
				window.close('${pageContext.request.contextPath}/purchasemenu', '', 'height=300, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
			}
			
			function popup_win3() {
				window.open('${pageContext.request.contextPath}/purchase/danal', '', 'height=500, width=690, left='+ popupE + ', top='+ popupF + ', screenX='+ popupE + ', screenY= '+ popupF);
				window.close('${pageContext.request.contextPath}/purchasemenu', '', 'height=300, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
			}
			
		
			
		</script>
	</head>
	<body>
		<!-- Footer -->
			<section id="footer">
				<div class="container">
					<header class="major">
						<h2>SELECT A PURCHASE TYPE</h2>
					</header>
					<ul class="actions uniform">
						<center><a href="kakaopay.jsp" onclick="popup_win1()" >
						<img src="${pageContext.request.contextPath}/resources/purchase_images/kakao.png"/></a></center><p>
						<center><a href="kginicis.jsp" onclick="popup_win2()" >
						<img src="${pageContext.request.contextPath}/resources/purchase_images/inicis.png"/></a></center><p>
						<center><a href="danal.jsp" onclick="popup_win3()" >
						<img src="${pageContext.request.contextPath}/resources/purchase_images/danal.png"/></a></center>
					</ul>
				</div>
				<ul class="copyright">
					<li>&copy; EDELIA</li><li>Design: TEAM&nbsp9</li>
				</ul>
			</section>

		<!-- Scripts -->
			<script src="<c:url value="/resources/purchase_assets/js/jquery.min.js"/>"></script>
			<script src="<c:url value="/resources/purchase_assets/js/jquery.scrolly.min.js"/>"></script>
			<script src="<c:url value="/resources/purchase_assets/js/skel.min.js"/>"></script>
			<script src="<c:url value="/resources/purchase_assets/js/util.js"/>"></script>
			<script src="<c:url value="/resources/purchase_assets/js/main.js"/>"></script>

	</body>
</html>