<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
 Date time=new Date();
 SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 //날짜 시간값 출력형태 객체 생성
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션정보</title>
</head>
<body>
세션 ID: <%=session.getId()%><HR/>
<%
 time.setTime(session.getCreationTime());//세션 생성시간을 저장
%>
세션 생성시간: <%=formatter.format(time) %><hr/>
<%
 time.setTime(session.getLastAccessedTime());//가장 마지막에 세션에 접근한 시간을 저장
%>
최근 세션 접근 시간: <%=formatter.format(time) %>
<hr/>
</body>
</html>