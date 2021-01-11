<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<style>
 #listWrap{
  width:100%; 
 }
 table,th,td{
  border:2px dotted red;
 }
</style>
</head>
<body>
<table id="listWrap">
 <tr>
  <th colspan="4">회원목록</th>
 </tr>
 <tr>
  <th>아이디</th> <th>회원이름</th> <th>폰번호</th> <th>이메일</th>
 </tr>
 
 <%
    String driver="oracle.jdbc.OracleDriver";
    String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
    String user="week7"; String pass="week7";
    
    Connection con=null;
    Statement stmt=null;
    ResultSet rs=null;//select문 수행후 검색결과 레코드를 저장할 rs
    String sql=null;
    
    try{
    	Class.forName(driver);
    	con=DriverManager.getConnection(url, user, pass);
    	stmt=con.createStatement();
    	sql="select * from tbl_member2 order by member_id asc";
    	//알파벳 순서대로 아이디를 기준으로 정렬
    	rs=stmt.executeQuery(sql);//select문 수행후 검색 결과 레코드행을 저장시킴
    	
    	while(rs.next()){
%>
   <tr>
    <td align="center">
    <a href="member2_info.jsp?id=<%=rs.getString("member_id")%>">
<%=rs.getString("member_id")%></a></td>
<%-- *.jsp?id=아이디 웹주소창에 노출되는 get방식으로 id 네임피라미터 이름에 아이디값을 담아서 전달함. --%>
    <td align="center"><%=rs.getString("member_name")%></td>
    <td align="center"><%=rs.getString("member_phone")%></td>
    <td align="center"><%=rs.getString("member_email")%></td>    
   </tr>
<%    	}//while %>
    <tr>
     <th colspan="4">
     <input type="button" value="회원가입" onclick="location='member2_join.jsp';" />
     </th>
    </tr>
<%
    }catch(Exception e){
    	e.printStackTrace();
    }finally{
    	try{
    		if(rs != null) rs.close();
    		if(stmt != null) stmt.close();
    		if(con != null) con.close();
    	}catch(Exception e){e.printStackTrace();}
    }
 %>
</table>
</body>
</html>