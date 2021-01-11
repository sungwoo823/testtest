<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
   Cookies cookies=new Cookies(request);//쿠키 객체 생성
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부 검사</title>
</head>
<body>
<% if(cookies.exists("AUTH")){//AUTH 쿠키이름에 대한 쿠키가 존재하면 참 %>
 아이디 '<strong style="font-size:26px; color:blue;"><%=cookies.getValue("AUTH")%>
 </strong>'로 로그인 된 상태.<%-- AUTH쿠키이름에 대한 값 즉 아이디값을 구함. --%>
<%}else{ %>
로그인 하지 않은 상태
<% } %>
</body>
</html>