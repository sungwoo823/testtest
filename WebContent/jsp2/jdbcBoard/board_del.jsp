<%@ page contentType="text/html; charset=UTF-8"%>
<%
  int b_no=Integer.parseInt(request.getParameter("no"));
//get방식으로 전달된 번호값을 정수 숫자로 바꿔서 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 삭제</title>
<script src="../../js/jquery-3.5.1.min.js"></script>
<script>
 function del_check(){
	 if($.trim($('#del_pwd').val()) == ''){
		 alert('비번을 입력하세요!');
		 $('#del_pwd').val('').focus();
		 return false;
	 }
 }
</script>
<style>
 #bDel_wrap{
   width:320px; height:180px; border:1px solid red;
   border-radius:10px; box-shadow:10px 10px 10px gray;
   margin-left:auto; margin-right:auto; padding:14px; 
   margin-top:100px;
 }
</style>
</head>
<body>
<form method="post" action="board_del_ok.jsp" onsubmit="return del_check()">
<input type="hidden" name="b_no" value="<%=b_no%>" />
 <table id="bDel_wrap">
  <tr>
   <th colspan="2">게시판 삭제</th>
  </tr>
  <tr>
   <th>비밀번호</th>
   <td><input type="password" name="del_pwd" id="del_pwd" size="14" /></td>
  </tr>
  <tr>
   <th colspan="2">
   <input type="submit" value="삭제" />
   <input type="reset" value="취소" onclick="$('#del_pwd').focus();" />
   <input type="button" value="목록" onclick="location='board_list.jsp';" />
   </th>
  </tr>
 </table>
</form>
</body>
</html>


