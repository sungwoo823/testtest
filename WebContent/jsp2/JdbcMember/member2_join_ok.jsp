<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");//POST로 전달된 한글 자료를 서버에서 받을때 안깨지게 한다.
    
    String member_id=request.getParameter("member_id");
    String member_pwd=request.getParameter("member_pwd");
    String member_name=request.getParameter("member_name");
    String member_phone=request.getParameter("member_phone");
    String member_email=request.getParameter("member_email");
    
    String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";//오라클 접속주소,1521은 포트번호,
    //xe는 데이터베이스 명
    String user="week7";//오라클 접속 사용자
    String pass="week7";//오라클 접속 비번
    
    Connection con=null;//디비 연결 con
    Statement stmt=null;//쿼리문 수행
    String sql=null;
    
    try{
    	Class.forName("oracle.jdbc.OracleDriver");//jdbc 드라이버 클래스 로드 실행
    	con=DriverManager.getConnection(url, user, pass);
    	stmt=con.createStatement();
    	
    	sql="insert into tbl_member2 values('"+member_id+"','"+member_pwd+"','"
    			+member_name+"','"+member_phone+"','"+member_email+"',sysdate)";
    	
    	stmt.executeUpdate(sql);//저장 쿼리문 수행
    	
    	out.println("<script>");
    	out.println("alert('회원가입을 축하합니다!');");
    	out.println("location='member2_list.jsp';");
    	out.println("</script>");
    	
    }catch(Exception e){e.printStackTrace();}
    finally{
    	try{
    		if(stmt != null) stmt.close();
    		if(con != null) con.close();
    	}catch(Exception e){e.printStackTrace();}
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h3>tbl_member2테이블에 새로운 레코드를 저장했습니다.</h3>
</body>
</html>