<%@ page contentType="text/html; charset=UTF-8"%>
<%-- jsp 주석문 기호. contentType="text/html;charset=UTF-8"의 의미는 브라우저에 출력되는 문자/태그,
언어코딩 타입을 설정 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<%
 // 이 영역을 스크립트 릿이라고 한다. 스크립트 릿 영역은 기본으로 자바 문법을 따라간다.
 String bookTitle="JSP 웹프로그래밍";
 String name="이순신";
%>
책이름: <strong><%=bookTitle%></strong><hr/>
저자이름: <strong><%=name%></strong><hr/>
<%-- <%=은 표현식으로 jsp에서 출력용도로 활용됨. --%>
</body>
</html>