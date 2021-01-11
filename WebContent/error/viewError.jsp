<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<%-- isErrorPage="true"로 지정하면 해당 jsp페이지가 에러페이지에 해당한다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생 </title>
</head>
<body>
요청 처리 과정에서 에러가 발생했습니다.<br/>
빠른 시간 내에 문제를 해결하도록 하겠습니다.<hr/>
에러타입:<%=exception.getClass().getName()%><br/>
<%-- 예외 에러 풀패키지 경로와 클래스명이 출력 --%>
에러 메시지: <b><%=exception.getMessage()%></b>
</body>
</html>