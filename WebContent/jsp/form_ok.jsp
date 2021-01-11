<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%-- java.util패키지의 모든 api(*)를 임포트 즉 읽어들임. --%>
<%
 request.setCharacterEncoding("UTF-8");//post로 전달된 한글자료를 서버에서 받을때 안깨지게 함.get
 //방식은 안됨.
 
 String name=request.getParameter("name2");//이름을 가져와서 저장.
 //getParameter("name2")메서드 문자열 인자값으로 사용된 "name2"는 input 태그 name피라미터 이름이다.
 String address=request.getParameter("addr");//주소를 가져와서 저장
 String[] values=request.getParameterValues("pet");//checkbox는 복수개를 선택할 수 있기 때문에
 //value속성값을 문자열 배열로 받는다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
이름: <%=name%><hr/>
주소: <%=address%><hr/>
선택한 좋아하는 동물목록이 
<%
  if((values != null) && (values.length >0)){
	  for(int i=0;i<values.length;i++){
%>
   <%=values[i]%>&nbsp;&nbsp;<%--&nbsp;은 한칸의 빈공백 처리.두번 사용하면 두칸의 빈공백 처리 .
   %=은 표현식으로 출력용도로 활용됨. 결국은 배열원소값 출력.--%>   
<%} %>
 입니다.
<%
}else{ %>
없습니다.
<% } %>
</body>
</html>


