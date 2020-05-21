<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트(보기)</title>
</head>
<body>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>가격</td>
			<td>제공량</td>
			<td>나트륨</td>
			<td>포화지방</td>
			<td>당류</td>
			<td>단백질</td>
			<td>카페인</td>
			<td>이미지</td>
			<td>종류</td>
		</tr>
		
		<!-- taglib 추가 필요 -->
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.mId}</td>
				<td>${dto.mName}</td>
				<td>${dto.mPrice}</td>
				<td>${dto.mSize}</td>
				<td>${dto.mNa}</td>
				<td>${dto.mFat}</td>
				<td>${dto.mSugar}</td>
				<td>${dto.mPro}</td>
				<td>${dto.mCa}</td>
				<td>${dto.mImg}</td>
				<td>${dto.mKind}</td>
			</tr>
		
		</c:forEach>
		<tr>
			<td colspan="11"><a href="write_view">글작성</a></td>
		</tr>
	</table>
</body>
</html>