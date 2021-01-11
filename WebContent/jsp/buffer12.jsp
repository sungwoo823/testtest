<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page buffer="1" %>
<%--
  buffer속성값 단위는 kb이다. 단위를 지정하지 않으면 jsp페이지가 자바 코드로 변환하는 과정에서 에러가 발생한다.
  buffer속성은 jsp페이지가 사용할 버퍼크기를 지정할 수 있다.
  버퍼 속성을 지정하지 않으면 최소한 8kb이상의 크기를 갖는 버퍼를 사용한다.
 --%>
<%
  for(int i=1;i<=1000;i++){
	  out.println("1234");	  
  }
%>