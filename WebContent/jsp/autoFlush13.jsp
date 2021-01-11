<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page buffer="1kb" autoFlush="false" %>
<%-- autoFlush속성은 버퍼(임시 저장 장소)가 다 차면 어떻게 처리할 것인지를 지정한다. 
true로 지정하면 버퍼가 다 차면 버퍼를 비우고 계속해서 작업을 진행한다. 기본값은 true이다.
false로 지정하면 버퍼가 다 차면 예외 오류를 발생하고 작업을 중지한다. 예외 오류는 JSP Buffer overflow가
발생한다.--%>

<%
  for(int i=1;i<=1000;i++){
	  out.println("1234");
  }
%>