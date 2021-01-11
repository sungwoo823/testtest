<%@ page contentType="text/html; charset=UTF-8"%>
<%
  String id=(String)session.getAttribute("id");//세션아이디값을 구함.
  boolean login= (id==null)?false:true;//삼항 조건연산자
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부 검사</title>
</head>
<body>
 <% if(login) {//==true가 생략됨%>
 아이디 '<strong style="font-size:30px;color:blue;"><%=id%></strong>'님으로 로그인 한 상태
 <%}else{ %>
 로그인 하지 않은 상태
 <% } %>
</body>
</html>