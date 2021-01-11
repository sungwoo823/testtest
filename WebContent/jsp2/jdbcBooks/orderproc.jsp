<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 주문처리 화면</title>
</head>
<body>
 <h1>온라인 서점</h1>
 <h2>주문해 주셔서 감사합니다.</h2>
 <%
  String[] ids=request.getParameterValues("id");//선택된 책 시리얼번호를 문자열 배열로 받는다.
  
  if((ids != null) && (ids.length > 0)){//책을 주문했다면 실행
	  
	  String driver="oracle.jdbc.OracleDriver";
      String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
      String user="week7";
      String pwd="week7";
      
      Connection con=null;
      Statement stmt=null;
      ResultSet rs=null;
      String sql=null;
      
      try{
    	  Class.forName(driver);
    	  con=DriverManager.getConnection(url, user, pwd);
    	  stmt=con.createStatement();//쿼리문 수행 stmt생성    	  
 %>
  <table border="1">
   <tr>
    <th>저자</th> <th>제목</th> <th>가격</th> <th>수량</th>
   </tr>
   
   <%
    for(int i=0;i<ids.length;i++){
    	sql="update books set qty=qty-1 where id="+ids[i];//책수량을 1감소
    	stmt.executeUpdate(sql);
    	sql="select * from books where id="+ids[i];
    	rs=stmt.executeQuery(sql);
    	while(rs.next()){
   %>
   <tr>
    <th><%=rs.getString("author")%></th>
    <th><%=rs.getString("title")%></th>
    <th><%=rs.getInt("price")%></th>
    <th><%=rs.getInt("qty")%></th>
   </tr>
   <% 
    	}//while
     }//for
    %>
   <tr>
   <th colspan="4">
   <input type="button" value="주문하기" onclick="location='order_list.jsp';" />
   </th>
   </tr>
  </table>  
 <%
      }catch(Exception e){e.printStackTrace();}
      finally{
    	  try{
    		  if(rs != null) rs.close();
    		  if(stmt != null) stmt.close();
    		  if(con != null) con.close();
    	  }catch(Exception e){e.printStackTrace();}
      }
 }else{
   out.println("<script>");
   out.println("alert('책을 주문하지 않았습니다!');");
   out.println("history.back();");
   out.println("</script>");
 }
 %>
</body>
</html>

