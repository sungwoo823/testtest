<%@ page contentType="text/html; charset=UTF-8"%>
body_sub name 피라미터 값: <%=request.getParameter("name")%>
<br/>
name피라미터 값 목록:
<ul>
 <%
  String[] names=request.getParameterValues("name");//한개의 피라미터 이름에 복수개의 피라미터 값을
  //배열로 받는다.
  
  for(String name:names){
	  out.println("<li>"+name+"</li>");
  }
 %>
</ul>