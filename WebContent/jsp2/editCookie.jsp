<%@ page contentType="text/html; charset=UTF-8"%>
<%
  Cookie[] cookies=request.getCookies();

  if(cookies != null && cookies.length > 0){
	  for(int i=0;i<cookies.length;i++){
		  if(cookies[i].getName().equals("name")){
			  //쿠키이름이 name과 같다면 참
			  Cookie cookie=new Cookie("name","jsp로그래밍");//name쿠키이름 값을 변경
			  response.addCookie(cookie);//쿠키 추가
		  }
	  }
  }
%>
<h3>name 쿠키 값을 변경했습니다.</h3>