<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");//히든으로 전달된 아이디값 저장
String del_pwd=request.getParameter("del_pwd");//비번 저장

String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
String user="week7";//오라클 접속 사용자
String pass="week7";//오라클 접속 비번

Connection con=null;//오라클 연결 con
Statement stmt=null;//쿼리문 수행 stmt
ResultSet rs=null;//검색결과 레코드를 저장할 rs
String sql=null;//쿼리문 저장변수

try{
      Class.forName(driver);//jdbc드라이버 클래스 로드
      con=DriverManager.getConnection(url, user, pass);
      stmt=con.createStatement();
      sql="select * from tbl_member2 where member_id='"+id+"'";
      rs=stmt.executeQuery(sql);
      
      if(rs.next()){
         String db_pwd=rs.getString("member_pwd");//오라클 디비로 부터 비번을 가져옴
         if(db_pwd.equals(del_pwd)){
            //비번이 같은 경우
            sql="delete from tbl_member2 where member_id='"+id+"'";
            int re=stmt.executeUpdate(sql);
            
            if(re==1){
               out.println("<script>");
               out.println("alert('회원이 삭제되었습니다!');");
               out.println("location='member2_list.jsp';");
               out.println("</script>");
            }
         }else{
            out.println("<script>");
            out.println("alert('비번이 다릅니다!');");
            out.println("history.go(-1);");//뒤로 한칸이동,go(-1)과 back()메서드는 같은 기능
            //을 한다.
            out.println("</script>");
         }//if else
      }
}catch(Exception e){e.printStackTrace();}
finally{
  try{
     if(rs != null) rs.close();
     if(stmt != null) stmt.close();
     if(con != null) con.close();
  }catch(Exception e){e.printStackTrace();}
}
%>