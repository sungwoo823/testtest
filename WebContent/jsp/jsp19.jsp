<%@ page contentType="text/html; charset=UTF-8"%>
<%
  HttpServletRequest httpRequest=(HttpServletRequest)pageContext.getRequest();
 //HttpServletRequest는 서블릿 클래스로 사용자에서 입력한 정보를 서버로 가져올때 사용한다.jsp내장객체의 reques
 //t와 기능이 같다. getRequest는 request기본객체를 구한다.
 
  out.println(request == httpRequest);
  out.println("<hr/>");
  pageContext.getOut().println("이런 방법으로 출력해도 된다.하지만 잘 사용하지 않는다.");
  //pageContext객체는 jsp기본객체를 구하는 메서드를 제공한다.그래서 getOut()메서드는  out기본객체를 구한다.
  out.println("<hr/>");
%>