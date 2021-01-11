<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 글쓰기 폼</title>
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
 <form method="post" action="board_write_ok.jsp" onsubmit="return check()">
  <table id="bw_Wrap">
   <tr>
    <th colspan="2">게시판 글쓰기</th>
   </tr>
   <tr>
    <th>글쓴이</th>
    <td><input type="text" name="b_name" id="b_name" size="14" /></td>
   </tr>
   <tr>
    <th>제목</th>
    <td><input type="text" name="b_title" id="b_title" size="36" /></td>
   </tr>
   <tr>
    <th>비밀번호</th>
    <td><input type="password" name="b_pwd" id="b_pwd" size="14" /></td>
   </tr>
   <tr>
    <th>글내용</th>
    <td><textarea name="b_cont" id="b_cont" rows="10" cols="36"></textarea>
   </tr>
   <tr>
    <th colspan="2">
    <input type="submit" value="저장" />
    <input type="Reset" value="취소" onclick="$('#b_name').focus();" />
    <input type="button" value="목록" onclick="location='board_list.jsp';" />
    </th>
   </tr>
  </table>
 </form>
</body>
</html>