<%@ page contentType="text/html; charset=UTF-8"%>
<%
  String id=request.getParameter("login_id");
  String pwd=request.getParameter("login_pwd");
  
  if(id.equals(pwd)){
	  session.setAttribute("id",id);//세션 id속성키이름에 아이디값을 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공 </title>
</head>
<body>
<strong style="font-size:26px; color:blue;"><%=id%></strong>님 로그인을 환영합니다!
<%}else{
	out.println("<script>");
	out.println("alert('로그인에 실패했습니다!');");
	out.println("history.go(-1);");
	out.println("</script>");
}%>
</body>
</html>