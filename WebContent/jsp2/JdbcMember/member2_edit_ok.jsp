<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
   request.setCharacterEncoding("UTF-8");
   //POST로 전달되는 한글 데이터를 서버에서 받을 때 안깨지게 한다.
   
   String member_id=request.getParameter("member_id");
   String member_pwd=request.getParameter("member_pwd");
   String member_name=request.getParameter("member_name");
   String member_phone=request.getParameter("member_phone");
   String member_email=request.getParameter("member_email");
   
   String driver="oracle.jdbc.OracleDriver";
   String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
   String user="week7";
   String pass="week7";
   
   Connection con=null;
   Statement stmt=null;
   String sql=null;
   
   try{
  	 Class.forName(driver);
  	 con=DriverManager.getConnection(url, user, pass);
  	 stmt=con.createStatement();
  	 sql="update tbl_member2 set member_pwd='"+member_pwd+"',member_name='"
+member_name+"',member_phone='"+member_phone+"',member_email='"+member_email
+"' where member_id='"+member_id+"'";//아이디를 기준으로 회원정보 수정

     int re=stmt.executeUpdate(sql);//수정 쿼리문 수행후 성공한 레코드 행의 개수 반환
     
     if(re==1){
%>
<script>
 alert('정보수정에 성공했습니다!');
 location='member2_info.jsp?id=<%=member_id%>';
</script>
<%    	 
    	/* out.println("<script>");
    	 out.println("alert('정보수정에 성공했습니다!');");
    	 out.println("location='member2_list.jsp';");
    	 out.println("</script>");*/
     }//if
   }catch(Exception e){e.printStackTrace();}
   finally{
	   try{
		   if(stmt != null) stmt.close(); if(con != null) con.close();
	   }catch(Exception e){e.printStackTrace();}
   }
%>