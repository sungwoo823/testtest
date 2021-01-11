<%@ page contentType="text/html; charset=UTF-8"%>
<%
  Cookie[] cookies=request.getCookies();
 if(cookies != null && cookies.length > 0){
	 for(int i=0;i<cookies.length;i++){
		 if(cookies[i].getName().equals("name")){
			 Cookie cookie=new Cookie("name","");
			 cookie.setMaxAge(0);//쿠키 유효시간을 만료(로그아웃)
			 response.addCookie(cookie);//쿠키를 추가->브라우저에 저장됨.
		 }
	 }
 }
%>
<h4>name 쿠키를 삭제합니다.</h4>