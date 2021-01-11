<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%-- Enumeration인터페이스는 자바 1.0에서 추가되었고 컬렉션에 저장된 원소값을 쉽게 읽어오기 위해서 사용함. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
web.xml에서 설정한 초기 피라미터 목록:
<ul>
 <%
  Enumeration<String> initParamEnum=application.getInitParameterNames();//초기화 피라미
  //터 이름목록을 반환
  while(initParamEnum.hasMoreElements()){
	  String initParamName=initParamEnum.nextElement();//피라미터 이름을 구함.
 %>
 <li><%=initParamName%> : <%=application.getInitParameter(initParamName) %>
 </li><%-- getInitParameter(name)은 피라미터이름에 해당하는 초기화 피라미터값을 구함. --%>
 <% } %>
</ul>
</body>
</html>