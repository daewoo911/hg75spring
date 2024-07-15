<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>updateMForm</title>
	</head>
	<body>
		<h2>회원정보수정</h2>
		<form action="doMForm" method="post" name="frm">
			<label>아이디</label>
			<input type="text" name="id" id="id" value="${member.id }"><br>
			<label>비밀번호</label>
			<input type="text" name="pw" id="pw" value="${member.pw }"><br>
			<label>이름</label>
			<input type="text" name="name" id="name" value="${member.name }"><br>
			
			<label>성별</label>
			<c:if test="${member.gender == 'male' }">
				<input type="radio" name="gender" id="male" value="male">
				<label for="male">남성</label>
			</c:if>
			<c:if test="${member.gender != 'male' }">
				<input type="radio" name="gender" id="male" value="male">
				<label for="male">남성</label>
			</c:if>
			<input type="radio" name="gender" id="female" value="female"
				<c:if test="${member.gender == 'female' }"> checked </c:if>>
			<label for="female">여성</label>
			
			<br><br>
			<label>직업</label>
			<select name="job">
				<c:if test="${member.job == 'worker'}">
				<option value="worker" selected>회사원</option>
				</c:if>
				<c:if test="${member.job == 'self'}">
				<option value="self" selected>자영업자</option>
				</c:if>
				<c:if test="${member.job == 'freelancer'}">
				<option value="freelancer" selected>프리랜서</option>
				</c:if>
				<c:if test="${member.job == 'housewife'}">
				<option value="housewife" selected>전업주부</option>
				</c:if>
			</select><br>
			<label>취미</label><br>
			<c:if test="${fn:contains(member.hobby,'game') }">
			<input type="checkbox" name="hobbys" id="game" value="game">
			<label for="game">게임</label>
			</c:if>
			<c:if test="${fn:contains(member.hobby,'golf') }">
			<input type="checkbox" name="hobbys" id="golf" value="golf">
			<label for="golf">골프</label>
			</c:if>
			<c:if test="${fn:contains(member.hobby,'run') }">
			<input type="checkbox" name="hobbys" id="run" value="run">
			<label for="run">달리기</label>
			</c:if>
			<c:if test="${fn:contains(member.hobby,'book') }">
			<input type="checkbox" name="hobbys" id="book" value="book">
			<label for="book">독서</label>
			</c:if>
			<c:if test="${fn:contains(member.hobby,'swim') }">
			<input type="checkbox" name="hobbys" id="swim" value="swim">
			<label for="swim">수영</label>
			</c:if>
			<input type="submit" value="수정">
		</form>
	</body>
</html>