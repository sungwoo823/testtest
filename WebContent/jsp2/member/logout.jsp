<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.*" %>
<%
  response.addCookie(Cookies.createCookie("AUTH","", "/",0));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 </title>
</head>
<body>
<b style="font-size:24px; color:red;">로그아웃 되었습니다.</b>
</body>
</html>