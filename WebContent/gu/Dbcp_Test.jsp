<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*,javax.naming.*,javax.sql.*" %>
<%
  Connection con=null;//DB연결 CON
  DataSource ds=null;//커넥션 풀 관리 ds(DBCP)
  
  try{
	  Context ctx=new InitialContext();
	  ds=(DataSource)ctx.lookup("java:comp/env/jdbc/xe");//xe 데이터베이스를 찾아서
	  //커넥션 풀관리 ds생성
	  con=ds.getConnection();//db연결 con 생성
	  out.println("DBCP 연결 성공!");
  }catch(Exception e){e.printStackTrace();}
  finally{
	  try{
		  if(con != null) con.close();
	  }catch(Exception e){e.printStackTrace();}
  }
%>