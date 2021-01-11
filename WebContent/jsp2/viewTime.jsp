<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%
  Calendar c=(Calendar)request.getAttribute("time");//time키이름에 저장된 칼렌더 객체를 다운캐스
  //팅 해서 구함
  
  int hour=c.get(Calendar.HOUR_OF_DAY);//24 시간값
  int minute=c.get(Calendar.MINUTE);//분
  int second=c.get(Calendar.SECOND);//초
  
  out.println(hour+"시"+minute+"분"+second+"초입니다.");
%>