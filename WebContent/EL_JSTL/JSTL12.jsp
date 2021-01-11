<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%
   Hashtable htable=new Hashtable();

   htable.put("apple","사과");//키,값 쌍으로 저장하는 사전적인 컬렉션 가변적 자료구조
   htable.put("banana","바나나");
   htable.put("grape","포도");
%>
<c:set var="ht" value="<%=htable%>" />

<c:forEach var="element" items="${ht}" >
 ${element.key} : ${element.value}<br/>
</c:forEach>
<%--키,값 쌍으로 출력 --%>
<hr/>

<%
  int[] score={100,90,100};
  request.setAttribute("score",score);
%>
<c:forEach var="s" items="${score}" begin="0" end="2" step="1">
  **점수값:${s} &nbsp;&nbsp;
  <c:set var="total" value="${total+s}" />
</c:forEach>
<hr/>
점수 총합= <c:out value="${total}" />
<hr/>

<%--
  문제) JSTL c:forEach 반복문을 사용하여 1부터 10까지 자연수 중에서 홀수값만 출력해 보자.
 --%>
**홀수:<br/>
<c:forEach var="a" begin="1" end="10" step="2">
 ${a}&nbsp;
</c:forEach>








