<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.daum.dao.BoardDAOImpl,net.daum.vo.*" %>
<%
   int b_no=Integer.parseInt(request.getParameter("no"));//get으로 전달된 번호값을 정수 숫자로
   //바꿔서 저장
   
   BoardDAOImpl bdao=new BoardDAOImpl();
   bdao.updateHit(b_no);//조회수 증가
   Board3VO b=bdao.getBoardCont(b_no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용보기 </title>
<style>
 #bCont_wrap{
  width:320px; border:1px solid red; border-radius:10px;
  box-shadow:10px 10px 10px gray; padding:18px;
  margin-left:auto; margin-right:auto; margin-top:100px;
 }
</style>
</head>
<body>
 <table id="bCont_wrap">
  <tr>
   <th colspan="2">게시판 내용</th>
  </tr>
  <tr>
   <th>글쓴이</th> <td><%=b.getB_name()%></td>
  </tr>
  <tr>
   <th>글제목</th> <td><%=b.getB_title()%></td>
  </tr>
  <tr>
   <th>글내용</th> <td><%=b.getB_cont()%></td>
  </tr>
  <tr>
   <th>조회수</th> <td><%=b.getB_hit()%></td>
  </tr>
  <tr>
   <th colspan="2">
   <input type="button" value="수정" 
   onclick="location='board_edit.jsp?no=<%=b.getB_no()%>';" />
   <input type="button" value="삭제"
   onclick="location='board_del.jsp?no=<%=b.getB_no()%>';" />
   <input type="button" value="목록" onclick="location='board_list.jsp';" />
   </th>
  </tr>
 </table>
</body>
</html>