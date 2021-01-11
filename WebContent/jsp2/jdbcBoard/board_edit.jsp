<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.daum.dao.*,net.daum.vo.*" %>
<%
    int b_no=Integer.parseInt(request.getParameter("no"));
    BoardDAOImpl bdao=new BoardDAOImpl();
    Board3VO b=bdao.getBoardCont(b_no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 수정 폼</title>
<script src="../../js/jquery-3.5.1.min.js"></script>
<%-- jQuery라이브러리 불러오기 --%>
<script src="../../js/member.js"></script><%-- ../../는 두단계 상위폴더로 이동 --%>
<style>
 #bw_Wrap{
  width:420px; height:400px; padding:6px;
  border:1px solid red; border-radius:10px;
  box-shadow:10px 10px 10px gray;
  margin-left:auto; margin-right:auto; margin-top:100px;
 }
</style>
</head>
<body>
 <form method="post" action="board_edit_ok.jsp" onsubmit="return check()">
 <input type="hidden" name="b_no" value="<%=b.getB_no()%>" />
 <%--
  hidden은 브라우저 주소창에서는 만들어 지지 않는다.하지만 브라우저 출력창 페이지 소스보기에서는 노출된다.보안상 중
  요한 자료는 hidden을 사용하면 안된다. 값을 전달할 때 효율적으로 사용할 수 있다.
  --%>
  <table id="bw_Wrap">
   <tr>
    <th colspan="2">게시판 수정</th>
   </tr>
   <tr>
    <th>글쓴이</th>
    <td><input type="text" name="b_name" id="b_name" size="14" 
     value="<%=b.getB_name()%>" /></td>
   </tr>
   <tr>
    <th>제목</th>
    <td><input type="text" name="b_title" id="b_title" size="36" 
    value="<%=b.getB_title()%>"/></td>
   </tr>
   <tr>
    <th>비밀번호</th>
    <td><input type="password" name="b_pwd" id="b_pwd" size="14" /></td>
   </tr>
   <tr>
    <th>글내용</th>
    <td><textarea name="b_cont" id="b_cont" 
    rows="10" cols="36"><%=b.getB_cont()%></textarea><%--textarea에서 value속성은 
    없다. --%>
   </tr>
   <tr>
    <th colspan="2">
    <input type="submit" value="수정" />
    <input type="Reset" value="취소" onclick="$('#b_name').focus();" />
    <input type="button" value="목록" onclick="location='board_list.jsp';" />
    </th>
   </tr>
  </table>
 </form>
</body>
</html>