<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<h3>[액션태그와 표현언어]</h3>
<jsp:useBean id="user" class="test.User" />
<%-- User빈클래스 객체명 user를 생성 --%>
<jsp:setProperty property="firstName" name="user" value="홍"/>
<%--값 저장 액션태그. 자바 코드로 표현하면 user.setFirstName("홍");과 같다. --%>
<jsp:setProperty property="lastName" name="user" value="길동" />

<jsp:getProperty property="firstName" name="user"/>
<%--값 반환 액션태그. 자바 코드로 표현하면 user.getFirstName();과 같다. --%>
<jsp:getProperty property="lastName" name="user" />

<hr/>

<%--표현언어 --%>
${user.firstName}<%-- ${} 표현언어 출력법. 자바 코드로 표현하면 user.getFirstName();이다. --%>
${user.lastName}
</body>
</html>