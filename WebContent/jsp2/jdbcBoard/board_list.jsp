<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*,net.daum.vo.*,net.daum.dao.*" %>
<%
  BoardDAOImpl bdao=new BoardDAOImpl();
  int totalCount=bdao.getRowCount();//총 레코드 개수
  List<Board3VO> blist=bdao.getBoardList();//게시판 목록
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style> 
 #list_wrap{
  width:500px; border:1px solid red;
  border-radius:10px; box-shadow:10px 10px 10px gray; 
  margin-left:auto; margin-right:auto; /*좌우 수평 중앙 정렬*/
  margin-top:100px; padding:20px;
 }
</style>
</head>
<body>
 <table id="list_wrap">
  <tr>
   <th colspan="5">게시판 목록</th>
  </tr>
  <tr>
   <td align="right" colspan="5">게시물 수: <strong><%=totalCount%></strong> 개</td>
  </tr>
  <tr>
   <th>번호</th> <th>제목</th> <th>글쓴이</th> <th>조회수</th> <th>등록날짜</th>
  </tr>
  <%
   if((blist != null) && (blist.size() >0 )){
	  for(Board3VO b:blist){ 
  %>
  <tr>
   <th><%=b.getB_no()%></th>
   <th>
   <a href="board_cont.jsp?no=<%=b.getB_no()%>"><%=b.getB_title()%></a>
   <%-- 주소창에 노출되는 get방식으로 *.jsp?no=번호값 담아서 전달한다. --%>
   </th>
   <th><%=b.getB_name()%></th>
   <th><%=b.getB_hit()%></th>
   <th><%=b.getB_date()%></th>
  </tr>
  <% }//for
  }else{
  %>  
  <tr>
   <th colspan="5">게시판 목록이 없습니다.</th>
  </tr>
  <% } %>
  <tr>
   <th colspan="5"><input type="button" value="글쓰기" 
   onclick="location='board_write.jsp';" />
  </tr>
 </table>
</body>
</html>