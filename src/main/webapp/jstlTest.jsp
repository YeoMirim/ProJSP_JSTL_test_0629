<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- jsp 포함된걸 사용해야 오류없음 -->	 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습</title>
</head>
<body>
	
	<%-- <%= 2/0 %>			그냥 이렇게 넣으면 500 에러 발생 --%>
	
	<c:set var="name" value="홍길동" />	<!-- 초기값 설정 -->
	이름 : ${name }
	<br>
	<c:remove var="name" />		<!-- 제거 -->
	이름 : ${name } 
	
	<br>
	<hr>
	<br>
	
	<c:if test="${10 > 1}">		<!-- if문 -->
		조건이 참입니다.
	</c:if>	<!-- test에는 EL표기법으로 써야함 -->
	
	
	<c:forEach var="i" begin="0" end="10" step="1">		<!-- for문 / var(변수), begin(초기값), end(조건식/마지막값), step(증가값)-->
		${i }	<br>
	</c:forEach>
	
	<c:catch var="error">		<!-- 예외처리 -->
		<%= 2/0 %>
	</c:catch>
	<br>
	${error }	<!-- 에러 발생하는 이유가 error 변수에 저장되어 찍힘 -->
	
</body>
</html>