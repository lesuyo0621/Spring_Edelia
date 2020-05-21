<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>EDELIA CAFE</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"href="${pageContext.request.contextPath}/resources/assets/css/main.css" />

</head>
<body>

	<!-- Wrapper -->
	<div id="wrapper" class="divided">
		<!-- Gallery -->
		<section class="wrapper style1 align-center">
		<div class="inner"></div>


		<!-- Additional Elements --> <section
			class="wrapper style1 align-center">
		<h2>SIGN UP</h2>
		<div class="inner">
			<div class="index align-left">
				<!-- Form -->
				<section>


				<div class="content">

					<form method="post" action="${pageContext.request.contextPath}/login/signup/active">
						<div class="field">
							<label for="name">Name</label> <input type="text" name="_name"
								id="_name" value="" required />
						</div>
						<div class="field">
							<label for="name">Email</label> <input type="email" name="_email"
								id="_email" value="" required />
						</div>
						<div class="field">
							<label for="name">H.P</label> <input type="text"
								name="_hp" id="_hp" value="" required />
						</div>
						<div class="field">
							<label for="name">ID</label> <input type="text" name="_id"
								id="_id" value="" required />
						</div>
						<div class="field">
							<label for="name">PASSWORD</label> <input type="password"
								name="_password" id="_password" value="" required />
						</div>
						<div class="field">
							<label for="name">RETYPE PASSWORD</label> <input type="password"
								name="_password" id="_password" value="" required />
						</div>

						<div class="field">
							<label for="message">개인정보처리방침</label>
							<textarea name="message" id="message" rows="6" readonly><이델리아>('http://edelia.com'이하 '이델리아')은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.<이델리아>('이델리아') 은(는) 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
			    - 본 방침은부터 2017년 10월 17일부터 시행됩니다.
1. 개인정보의 처리 목적 <이델리아>('http://edelia.com'이하 '이델리아')은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.
가. 홈페이지 회원가입 및 관리
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 고충처리 등을 목적으로 개인정보를 처리합니다.
2. 개인정보 파일 현황
('http://edelia.com'이하 '이델리아')가 개인정보 보호법 제32조에 따라 등록,공개하는 개인정보파일의 처리목적은 다음과 같습니다.
1. 개인정보 파일명 : test
- 개인정보 항목 : 이메일, 휴대전화번호, 로그인ID, 생년월일, 이름
- 수집방법 : 홈페이지
- 보유근거 : 회원정보 확인
- 보유기간 : 3년
- 관련법령 : 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
- 기타('http://edelia.com'이하 '이델리아')의 개인정보파일 등록사항 공개는 행정안전부 개인정보보호 종합지원 포털(www.privacy.go.kr) > 개인정보민원 > 개인정보열람등 요구 > 개인정보파일 목록검색 메뉴를 활용해주시기 바랍니다.
3. 개인정보의 처리 및 보유 기간

-<이델리아>('이델리아')은(는) 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의 받은 개인정보 보유,이용기간 내에서 개인정보를 처리,보유합니다.

- 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
1.<홈페이지 회원가입 및 관리>
<홈페이지 회원가입 및 관리>와 관련한 개인정보는 수집.이용에 관한 동의일로부터<3년>까지 위 이용목적을 위하여 보유.이용됩니다.
-보유근거 : 회원정보 확인
-관련법령 : 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년
4. 정보주체와 법정대리인의 권리·의무 및 그 행사방법 이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다.
- 정보주체는 이델리아에 대해 언제든지 개인정보 열람,정정,삭제,처리정지 요구 등의 권리를 행사할 수 있습니다.
- 제1항에 따른 권리 행사는이델리아에 대해 개인정보 보호법 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 이델리아은(는) 이에 대해 지체 없이 조치하겠습니다.
- 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
- 개인정보 열람 및 처리정지 요구는 개인정보보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
- 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
- 이델리아은(는) 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
5. 처리하는 개인정보의 항목 작성 

- <이델리아>('http://edelia.com'이하 '이델리아')은(는) 다음의 개인정보 항목을 처리하고 있습니다.

<홈페이지 회원가입 및 관리>
- 필수항목 : 이메일, 휴대전화번호, 생년월일, 이름
- 선택항목 : 성별
6. 개인정보의 파기<이델리아>('이델리아')은(는) 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.
-파기절차
이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.

-파기기한
이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.
-파기방법
전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.
종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
7. 개인정보 자동 수집 장치의 설치,운영 및 거부에 관한 사항
- 이델리아 은 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠기(cookie)’를 사용합니다. 
- 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다. 
가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다. 
나. 쿠키의 설치,운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다. 
다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.</textarea>
						</div>
						<div class="field third first">
							<!-- <input type="radio" id="priority-low" name="priority" checked /> -->
							<label for="priority-low">&nbsp</label>
						</div>
						<div class="field third">
							<input type="radio" id="priority-normal" name="agree" /> <label
								for="priority-normal">동의함</label>
						</div>
						<div class="field third">
							<input type="radio" id="priority-high" name="agree" /> <label
								for="priority-high">동의하지 않음</label>
						</div>
						<div class="field half first">
							<label for="priority-high">
								<ul class="actions vertical">
									<li><input type="submit" value="회원가입" class="button small"></li>
									<!-- <li><a href="#" class="button fit">회원가입</a></li> -->
								</ul>
							</label>
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

		<!-- Scripts --> <script
			src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script> <script
			src="<c:url value="/resources/assets/js/jquery.scrollex.min.js"/>"></script>
		<script
			src="<c:url value="/resources/assets/js/jquery.scrolly.min.js"/>"></script>
		<script src="<c:url value="/resources/assets/js/skel.min.js"/>"></script>
		<script src="<c:url value="/resources/assets/js/util.js"/>"></script>
		<script src="<c:url value="/resources/assets/js/main.js"/>"></script>

		<!-- Note: Only needed for demo purposes. Delete for production sites. -->
		<script src="<c:url value="/resources/assets/js/demo.js"/>"></script>
</body>
</html>