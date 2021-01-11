<%@ page contentType="text/html; charset=UTF-8"%>
<%
  String name=request.getParameter("name");
  String value=request.getParameter("value");
  //속성값을 설정할려면 웹주소창에 노출되는 get방식으로 jsp25.jsp?name=속성명&value=속성값을 전달해야 한다.
  if(name != null && value != null){
	  application.setAttribute(name,value);//문자열 키이름에 Object값을 쌍으로 저장.즉 키,값 쌍으로
	  //저장함.
  }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 속성지정</title>
</head>
<body>
<%
  if(name != null && value != null){
%>
application기본 객체 속성 설정:<%=name%> : <%=value%>
<%}else{ %>
속성 설정안함.
<%  } %>
</body>
</html>

