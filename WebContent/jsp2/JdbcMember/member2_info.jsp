<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
  String id=request.getParameter("id");//get 으로 전달된 아이디값을 저장
  
  String driver="oracle.jdbc.OracleDriver";
  String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
  String user="week7";
  String pass="week7";
  
  Connection con=null;
  Statement stmt=null;
  ResultSet rs=null;
  String sql=null;
  
  try{
	  Class.forName(driver);
	  con=DriverManager.getConnection(url, user, pass);
	  stmt=con.createStatement();
	  sql="select * from tbl_member2 where member_id='"+id+"'";//아이디를 기준으로 회원정보
	  //를 디비로 부터 검색하는 쿼리문 저장
	  rs=stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원정보</title>
<style>
 #infoWrap{
  width:500px;
 }
 table,th,td{
  border:1px solid blue;
 }
</style>
</head>
<body>  
<table id="infoWrap">
   <% if(rs.next()){//검색 회원정보가 있는 경우 %>   
    <tr>
     <th colspan="2">회원 상세정보</th>
    </tr>
    <tr>
     <th>아이디</th> <td><%=rs.getString("member_id")%></td>
    </tr> 
    <tr>
     <th>비밀번호</th> <td><%=rs.getString("member_pwd")%></td>
    </tr>
    <tr>
     <th>회원이름</th> <td><%=rs.getString("member_name")%></td>
    </tr>
    <tr>
     <th>폰번호</th> <td><%=rs.getString("member_phone")%></td>
    </tr>
    <tr>
     <th>이메일</th> <td><%=rs.getString("member_email")%></td>
    </tr>
    <tr>
     <th>가입날짜</th> <td><%=rs.getString("member_regdate")%></td>
    </tr>
    <tr>
     <th colspan="2">
     <input type="button" value="수정"
      onclick="location='member2_edit.jsp?id=<%=id%>';"/>
     <%--자바스크립트 location객체로 *.jsp?id=회원아이디 값을 담아서 get방식으로 전달 --%>
     
     <input type="button" value="회원삭제" 
     onclick="location='member_del2.jsp?id=<%=id%>';" />
     
     <input type="button" value="목록" onclick="location='member2_list.jsp';" />
     </th>
    </tr>   
   <%}else{ %> 
   <tr>
    <th colspan="2">'<%=id%>' 님에 해당하는 회원정보가 존재하지 않습니다.
   </tr>   
   <% } %>   
  </table>
</body>
</html>
<%
}catch(Exception e){
  //out.println("에러 발생:"+e.getMessage());
  e.printStackTrace();//예외 에러 족적을 자세히 남김.
}finally{
	try{
		if(rs != null) rs.close(); if(stmt != null) stmt.close(); 
		if(con != null) con.close();
	}catch(Exception e){e.printStackTrace();}
}
%> 