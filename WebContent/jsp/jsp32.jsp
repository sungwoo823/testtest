<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page buffer="1kb" %>
<%@ page errorPage="/error/viewError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버퍼 플러시 이후 에러 발생 결과 </title>
</head>
<body>
<%
  for(int i=1;i<=300;i++){
	  out.println(i);
  }
%>
<%=10/0%><%-- 정수 숫자를 0으로 나누면 예외가 발생 --%>
</body>
</html>