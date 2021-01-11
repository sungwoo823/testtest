<%@ page contentType="text/html; charset=UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 include 전 name 피라미터 값 : <%=request.getParameter("name")%>
 <hr/>
 
 <jsp:include page="body_sub.jsp" flush="false">
  <jsp:param name="name" value="홍길동" />
 </jsp:include>
 
 <hr/>
 include 후 name피라미터 값: <%=request.getParameter("name")%>
</body>
</html>