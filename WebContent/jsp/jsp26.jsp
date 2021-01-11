<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%
   Enumeration<String> attrEnum=application.getAttributeNames();
//속성이름 목록을 구함

   while(attrEnum.hasMoreElements()){
	   String name=attrEnum.nextElement();//속성명 즉 키이름을 구함
	   Object value=application.getAttribute(name);//값을 구함.
	   out.println("속성명=<b>"+name+"</b>, 값="+value+"<hr/>");
   }
%>
