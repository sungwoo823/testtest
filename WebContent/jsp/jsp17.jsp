<%@ page contentType="text/html; charset=UTF-8"%>
<%
if(request.getParameter("grade") != null){
   int grade=Integer.parseInt(request.getParameter("grade"));
  //웹주소창에 노출되는 get방식으로 *.jsp?grade=점수를 전달하면 점수가 정수 숫자이어도 문자열로 전달된다.그러므로
 //parseInt()메서드로 정수 숫자로 변경해서 저장시킨다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <% if(grade>=90 && grade <= 100){ %>
 <strong>A학점</strong>
 <%}else if(grade>=80 && grade <=89){ %>
 <strong>B학점</strong>
 <% } %>
 <HR/>
 <% //가독성 좋다.
   if( 90<=grade && grade <= 100){
	   out.println("<b>A학점</b>");//b태그도 진하게 
   }else if(80<= grade && grade <= 89){
	   out.println("<strong>B학점</strong>");
   }
 %>
</body>
</html>
<% }else{
 out.println("<script>");
 out.println("alert('jsp17.jsp?grade=100 를 주소창에 입력하세요!');");
 out.println("</script>");
}
%>