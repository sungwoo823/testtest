<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%
  Calendar cal=Calendar.getInstance();
  request.setAttribute("time",cal);//time 문자열 키이름에 Object타입으로 업캐스팅 된 cal 날짜값을
  //저장시킴.
%>
<jsp:forward page="viewTime.jsp" />