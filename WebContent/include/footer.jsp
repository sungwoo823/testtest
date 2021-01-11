<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%}catch(Exception e){
  //out.println("에러 발생:"+e.getMessage());
  e.printStackTrace();//예외 에러 족적을 자세히 남김.
}finally{
	try{
		if(rs != null) rs.close(); if(stmt != null) stmt.close(); 
		if(con != null) con.close();
	}catch(Exception e){e.printStackTrace();}
}
%> 