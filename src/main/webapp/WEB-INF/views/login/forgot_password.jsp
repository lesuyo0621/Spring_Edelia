<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>EDELIA CAFE</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
		
		
		<!-- <script type="text/javascript">
		function email() {
			var mail = document.getElementById("email");
			document.location.href = "signup.jsp?email=" + mail.value;
			window.open('/EDELIA/login/forgot_password.jsp', '', 'height=450, width=430, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		}
		
		
		var popupX = (window.screen.width / 2) - (430 / 2);
		// ���� �˾�â �¿� ũ���� 1/2 ��ŭ ���������� ���־���
	
		var popupY= (window.screen.height /2) - (450 / 2);
		// ���� �˾�â ���� ũ���� 1/2 ��ŭ ���������� ���־���
		
		</script> -->
	</head>
	<body>
	<%-- <%
		String email = request.getParameter("email");
		emailSMTP smtp = new emailSMTP();
		String number = smtp.sendAuthenticationEmail(email);
		session.setAttribute("_number",number);
	%> --%>
	<!-- Wrapper -->
	<div id="wrapper" class="divided">
		<!-- Gallery -->
		<section class="wrapper style1 align-center">
			<div class="inner">
			</div>


			<!-- Additional Elements -->
			<section class="wrapper style1 align-center">
			<h2>��й�ȣ ã��</h2>
				<div class="inner">
				<div class="index align-left">
					<!-- Form -->
					<section>


					<div class="content">

						<form method="post" action="Signup_Query.jsp">
							<div class="field">
								<label for="name">ID</label> <input type="text" name="_id"
									id="_id" value="" required />
							</div>
							<!-- <div class="field">
								<label for="name">Email</label> <input type="email" name="email"
									id="email" value="" required />
							</div> -->
							<div class="field half first">
								<label for="text">Email</label> <input type="email"
									name="email" id="email" value="" required />
							</div>
							<div class="field half">
								<label for="text">&nbsp</label>
								<ul class="actions vertical">
									<li><a href="#" onclick="email()" class="button fit" >������ȣ ����</a></li>
								</ul>
							</div>
							<div class="field">
								<label for="name">��й�ȣ</label> <input type="password"
									name="_id" id="_id" value="" required />
							</div>
							<div class="field">
								<label for="name">��й�ȣ ���Է�</label> <input type="password"
									name="_id" id="_id" value="" required />
							</div>
							<div class="field">
							<label for="priority-high">
								<ul class="actions vertical">
									<li><input type="submit" value="��й�ȣ����" class="button small"></li>
								</ul>
							</label>
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

			<!-- Scripts --> <script src="assets/js/jquery.min.js"></script> 
			<script src="<c:url value="/resources/assets/js/jquery.scrollex.min.js"/>"></script> 
			<script src="<c:url value="/resources/assets/js/jquery.scrolly.min.js"/>"></script> 
			<script src="<c:url value="/resources/assets/js/skel.min.js"/>"></script> 
			<script src="<c:url value="/resources/assets/js/util.js"/>"></script> 
			<script src="<c:url value="/resources/assets/js/main.js"/>"></script>

			<!-- Note: Only needed for demo purposes. Delete for production sites. -->
			<script src="<c:url value="/resources/assets/js/demo.js"/>"></script></body>
</html>