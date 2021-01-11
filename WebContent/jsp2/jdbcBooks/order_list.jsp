<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
  request.setCharacterEncoding("UTF-8");//method=post로 전달되는 한글을 서버에서 받을 때 안깨지게 함
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>온라인 서점</title>
<style>
 #order_t{
  width:100%; 
 }
 table,th,td{
  border:1px solid orange;
 }
</style>
</head>
<body>
<h1>온라인 문고</h1>
<h3>책 제목을 입력하세요:</h3>
<form method="post"><%-- action속성이 생략되면 자기 자신 소스파일로 책제목이 전달됨. --%>
 책 제목:<input type="text" name="title" size="20" />
       <input type="submit" value="검색" />
</form>

<%
  String title=request.getParameter("title");//책제목을 저장
  
  if(title != null){
	Connection con=null;
	Statement stmt=null;//쿼리문 수행 stmt
	ResultSet rs=null;
	String sql=null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe",
				"week7","week7");
		stmt=con.createStatement();//쿼리문 수행 stmt생성
		sql="select * from books where title like '%"+title+"%'";
		//like는 검색연산자로 ~와 비슷한 제목을 찾는다. %는 하나이상의 임의의 모르는 문자와 매핑 대응하는 와일드
		//카드 문자
		rs=stmt.executeQuery(sql);//검색 결과 레코드를 저장할 rs
%>
<hr/>
<form method="post" action="orderproc.jsp">
 <table id="order_t">
   <tr>
    <th>주문</th> <th>저자</th> <th>제목</th> <th>가격</th> <th>남아있는 수량</th>
   </tr>
   <%
    while(rs.next()){
    	int id=rs.getInt("id");//책 시리얼 번호
   %>
    <tr>
     <td><input type="checkbox" name="id" value="<%=id%>" /></td>
     <td><%=rs.getString("author")%></td>
     <td><%=rs.getString("title")%></td>
     <td><strong style="font-size:24px;color:blue;"><%=rs.getString("price")%>
     </strong>원</td>
     <td><strong style="font-size:24px;color:blue;"><%=rs.getString("qty")%>
     </strong>권</td>
    </tr>
   <% }//while %>
   
 </table>
 <br/>
 <input type="submit" value="주문" />
 <input type="reset" value="취소" />
</form>
<br/>
<input type="button" value="다시 주문하기" 
onclick="location='<%=request.getRequestURI()%>';" />
<%-- request.getRequestURI()는 웹브라우저가 요청한 url 경로를 구한다. --%>
<% 
	}catch(Exception e){e.printStackTrace();}
	finally{
		try{
			if(rs != null) rs.close(); if(stmt != null) stmt.close();
			if(con != null) con.close();
		}catch(Exception e){e.printStackTrace();}
	}
	} %>
</body>
</html>