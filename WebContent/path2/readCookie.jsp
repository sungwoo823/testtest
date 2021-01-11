<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 목록 </title>
</head>
<body>
<%
  Cookie[] cookies=request.getCookies();//쿠키목록을 배열로 구함.
  if(cookies != null && cookies.length > 0){
	  for(int i=0;i<cookies.length;i++){
%>
  <%=cookies[i].getName()%> = <%=cookies[i].getValue()%><br/>
  <%-- 쿠키이름,값을 쌍으로 출력 --%>
<% 
	  }//for
}else{ %>
 <h3>쿠키가 존재하지 않습니다.</h3>
<% } %>
</body>
</html>