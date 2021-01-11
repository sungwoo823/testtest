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
 
 try{
	 Class.forName(driver);
	 con=DriverManager.getConnection(url, user, pass);
	 stmt=con.createStatement();
	 sql="select * from tbl_member2 where member_id='"+id+"'";
	 rs=stmt.executeQuery(sql);
	 
	 if(rs.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script src="../../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="../../js/mem.js"></script>
<link rel="stylesheet" type="text/css" href="../../css/mem.css" />
</head>
<body>
 <form method="post" action="member2_edit_ok.jsp" onsubmit="return edit_check();">
 <input type="hidden" name="member_id" value="<%=id%>" />
 <%-- hidden은 웹브라우저 출력창에서 만들어 지지 않는다.하지만 서버로 member_id 네임피라미터 이름에 value속
 성값을 담아서 전달할 때 사용한다.  브라우저 출력창 페이지 소스보기에서는 노출된다.그러므로 보안상 중요한 파일을 히든으로
 전달하면 안된다.--%>
 <table id="mJoin_wrap">
  <tr>
   <th>회원아이디</th> <td><%=id%></td>
  </tr>
  <tr>
   <th>비밀번호</th>
   <td><input type="password" name="member_pwd" id="member_pwd" size="14" /></td>
  </tr>
  <tr>
   <th>비번확인</th>
   <td><input type="password" name="pwd_chk" id="pwd_chk" size="14" /></td>
  </tr>
  <tr>
   <th>회원이름</th>
   <td><input type="text" name="member_name" id="member_name" size="14"
   value="<%=rs.getString("member_name")%>" /></td>  
  </tr>
  <tr>
   <th>폰번호</th>
   <td><input type="tel" name="member_phone" id="member_phone" size="20"
   value="<%=rs.getString("member_phone")%>" /></td>
  </tr>
  <tr>
   <th>이메일</th>
   <td><input type="email" name="member_email" id="member_email" size="26"
   value="<%=rs.getString("member_email")%>" />
  </tr>
  <tr>
   <th colspan="2">
   <input type="submit" value="수정" />
   <input type="Reset" value="취소" onclick="$('#member_pwd').focus();" />
   <input type="button" value="목록" onclick="location='member2_list.jsp';" />
   </th>
  </tr>
 </table>
 </form>
</body>
</html>
<%
	 }//if
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