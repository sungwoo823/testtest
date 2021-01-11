<%@ page contentType="text/html; charset=UTF-8"%>
<%
 Cookie cookie1=new Cookie("path1","경로:/web02/path1");
 cookie1.setPath("/web02/path1");//쿠키 경로 설정
 response.addCookie(cookie1);//쿠키 추가
 
 Cookie cookie2=new Cookie("path2","경로:");
 response.addCookie(cookie2);
 
 Cookie cookie3=new Cookie("path3","경로:/");
 cookie3.setPath("/");
 response.addCookie(cookie3);
 
 Cookie cookie4=new Cookie("path4","경로:/web02/path2");
 cookie4.setPath("/web02/path2");
 response.addCookie(cookie4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키경로 지정</title>
</head>
<body>
 다음과 같은 쿠키 생성<br/>
 <%=cookie1.getName()%>=<%=cookie1.getValue()%>[<%=cookie1.getPath()%>]<br/>
 <%--쿠키이름,쿠키값,쿠키경로를 출력 --%>
 <%=cookie2.getName()%>=<%=cookie2.getValue()%>[<%=cookie2.getPath()%>]<br/>
 <%=cookie3.getName()%>=<%=cookie3.getValue()%>[<%=cookie3.getPath()%>]<br/>
 <%=cookie4.getName()%>=<%=cookie4.getValue()%>[<%=cookie4.getPath()%>]<br/>
</body>
</html>