<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.*" %>
<%
Cookies cookies=new Cookies(request);//쿠키 객체생성
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
name 쿠키이름 값: <%=cookies.getValue("name") %><hr/>

<%
if(cookies.exists("id")){
   out.println("id 쿠키명에 대한 값: "+cookies.getValue("id")+"<hr/>");
}

%>
</body>
</html>