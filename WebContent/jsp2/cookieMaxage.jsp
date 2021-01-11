<%@ page contentType="text/html; charset=UTF-8"%>
<%
  Cookie cookie=new Cookie("one","1time");
  cookie.setMaxAge(60*60);//60초*60=1시간  쿠키 유효시간 설정.
  response.addCookie(cookie);//쿠키 추가		  
%>
<h3>1시간 쿠키 유효시간(1시간 뒤에는 쿠키가 만료됨)</h3>