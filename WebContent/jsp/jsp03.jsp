<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%-- trimDirectiveWhitespaces속성값을 true로 사용하면 웹브라우저 출력창에 소스보기에서 보이는 첫번째 라인
빈공백을 제거한다.이 속성은 jsp2.1 버전부터 새롭게 추가됨. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page import속성을 사용하지 않은 Calendar </title>
</head>
<body>
<%
  java.util.Calendar cal=java.util.Calendar.getInstance();
 //풀패키지 경로를 모두 사용
%>
오늘은 <%=cal.get(java.util.Calendar.YEAR)%>년 <BR/>
     <%=cal.get(java.util.Calendar.MONTH)+1%>월<br/>
     <%=cal.get(java.util.Calendar.DATE)%>일 입니다. 
</body>
</html>