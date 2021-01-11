<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>

<%
 String id=request.getParameter("id");

String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
String user="week7";
String pass="week7";

Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String sql=null;
%>