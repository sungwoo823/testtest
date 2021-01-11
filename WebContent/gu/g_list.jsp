<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿 MVC 방명목 목록 </title>
</head>
<body>
<table border="1">
 <tr>
  <th colspan="3">MVC방명록 목록</th>
 </tr>
 <tr>
  <th>번호</th> <th>제목</th> <th>등록날짜</th>
 </tr>
 <c:if test="${!empty list}">
 <c:forEach var="g" items="${list}">
 <tr>
  <th>${g.no}</th> 
  <th><a href="gcont?no=${g.no}"><c:out value="${g.title}" /></a></th>
  <%-- gcont?no=번호값이 주소창에 노출되는 get방식으로 전달->쿼리 스트링 방식 --%> 
  <th>${g.regdate}</th>
 </tr>
 </c:forEach>
 </c:if>
 
 <c:if test="${empty list}">
  <tr>
   <th colspan="3">목록이 없습니다!</th>
  </tr>
 </c:if>
 
 <tr>
  <th colspan="3"><input type="button" value="글쓰기" onclick="location='gw';" /></th>
 </tr>
</table>
</body>
</html>