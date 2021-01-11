<%@ page contentType="text/html; charset=UTF-8"%>
<%
  Cookie cookie=new Cookie("name","이순신");//name쿠키이름에 이순신 쿠키값 저장
  response.addCookie(cookie);//쿠키 추가
%>
쿠키이름: <%=cookie.getName()%><br/>
쿠키값:<%=cookie.getValue()%><hr/>
