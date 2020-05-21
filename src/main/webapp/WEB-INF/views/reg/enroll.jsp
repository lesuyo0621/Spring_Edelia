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
<link rel="stylesheet"href="${pageContext.request.contextPath}/resources/assets/css/main.css" />


</head>
<body>
	<!-- Wrapper -->
	<div id="wrapper" class="divided">
		<!-- Gallery -->
		<section class="wrapper style1 align-center">
		<div class="inner"></div>
		<!-- Additional Elements --> 
		<section class="wrapper style1 align-center">
		<h2>제품등록</h2>
		<div class="inner">
			<div class="index align-left">
				<!-- Form -->
				<section>


				<div class="content">

					<form method="post" action="${pageContext.request.contextPath}/reg/enroll/active">
						<div class="field half first">
							<label for="name">제품명</label> <input type="text" name="_mName"
								id="_mName" value="" required />
						</div>
						<div class="field half second">
							<label for="name">가격</label> <input type="text" name="_mPrice"
								id="_mPrice" value="" required />
						</div>
						<div class="field">
							<label for="name">1회 제공량(kcal)</label> <input type="text" name="_mSize"
								id="_mSize" value="" required />
						</div>
						<div class="field">
							<label for="name">나트륨(mg)</label> <input type="text" name="_mNa"
								id="_mNa" value="" required />
						</div>
						<div class="field">
							<label for="name">포화지방(g)</label> <input type="text" name="_mFat"
								id="_mFat" value="" required />
						</div>
						<div class="field">
							<label for="name">당류(g)</label> <input type="text" name="_mSugar"
								id="_mSugar" value="" required />
						</div>
						<div class="field">
							<label for="name">단백질(g)</label> <input type="text" name="_mPro"
								id="_mPro" value="" required />
						</div>
						<div class="field">
							<label for="name">카페인(mg)</label> <input type="text" name="_mCa"
								id="_mCa" value="" required />
						</div>
						<div class="field">
							<label for="name">이미지 파일명</label> <input type="text" name="_mImg"
								id="_mImg" value="" required />
						</div>
						<div class="field">
							<label for="department">카테고리</label>
							<div class="select-wrapper">
								<select name="_mKind" id="_mKind">
									<option value="">- Category -</option>
									<option value="1">Coffee</option>
									<option value="2">Drink&Tea</option>
									<option value="3">Dessert</option>
								</select>
							</div>
						</div>
						<div class="field half first">
							<label for="priority-high">
								<ul class="actions vertical">
									<li><input type="submit" value="등록" class="button small"></li>
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
				<p>
					&copy; Design: <a href="#">EDELIA</a>.
				</p>
			</div>
			</footer>

		</div>

		<!— Scripts —> <script
			src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script> <script
			src="<c:url value="/resources/assets/js/jquery.scrollex.min.js"/>"></script>
		<script
			src="<c:url value="/resources/assets/js/jquery.scrolly.min.js"/>"></script>
		<script src="<c:url value="/resources/assets/js/skel.min.js"/>"></script>
		<script src="<c:url value="/resources/assets/js/util.js"/>"></script>
		<script src="<c:url value="/resources/assets/js/main.js"/>"></script>

		<!— Note: Only needed for demo purposes. Delete for production sites. —>
		<script src="<c:url value="/resources/assets/js/demo.js"/>"></script>
</body>
</html>