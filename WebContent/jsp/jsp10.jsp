<%@ page contentType="text/html; charset=UTF-8"%>
<%
  String id=request.getParameter("memberId");
 //실행할 때 웹주소창에 노출되는 get방식으로 *.jsp?memberId=kkkkk을 전달해야 index.jsp로 이동한다.
  if(id != null && id.equals("kkkkk")){
	  response.sendRedirect("index.jsp");//index.jsp로 이동
  }else{
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body>
 <script>
  alert('잘못된 아이디입니다!');
 </script>
</body>
</html>
<% } %>