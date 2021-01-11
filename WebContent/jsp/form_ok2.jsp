<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%
 request.setCharacterEncoding("UTF-8");//post로 전달된 한글 자료를 서버에서 받을 때 안깨지게 한다.
 
 String title=request.getParameter("title");//제목
 String content=request.getParameter("content");//내용
 
 out.println("제목:"+title+"<hr/>");//out는 jsp내장객체이다. 출력용도. println()메서드는 출력은 하
 //지만 줄바꿈 하지 않는다.
 out.println("내용:"+content+"<hr/>");
 
 Enumeration paramName=request.getParameterNames();//피라미터 이름 목록을 구함.
 while(paramName.hasMoreElements()){
	 String name2=(String)paramName.nextElement();//피라미터 이름
	 out.println("피라미터 이름:"+name2+"<br/>");
 }
 out.println("<hr/>");
 
 Map parameterMap=request.getParameterMap();//피라미터이름,값 쌍으로 된 맵을 구한다.
 String[] nameValue=(String[])parameterMap.get("title");//tite피라미터이름에 해당하는 값 배열을
 //구함
 if((nameValue != null)&&(nameValue.length>0)){
    out.println("title피라미터 값 : "+nameValue[0]+"<hr/>");	 
 }
%>

