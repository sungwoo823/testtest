<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 입력폼 </title>
<script src="../js/jquery-3.5.1.min.js"></script>
<script>
 function w_check(){
	 if($.trim($('#writer').val())==""){
		 alert('작성자를 입력하세요!');
		 $('#writer').val('').focus();
		 return false;
	 }
	 if($.trim($('#title').val())==""){
		 alert('제목을 입력하세요!');
		 $('#title').val('').focus();
		 return false;
	 }
	 if($.trim($('#cont').val())==""){
		 alert('내용을 입력하세요!');
		 $('#cont').val('').focus();
		 return false;
	 }
 }
</script>
</head>
<body>
 <h3>게시판 입력</h3>
 <form method="post" action="board_ok.jsp" onsubmit="return w_check();">
  작성자: <input type="text" name="writer" id="writer" size="14" />
  <hr/>
  제목: <input type="text" name="title" id="title" size="36" />
  <hr/>
  내용: <textarea name="cont" id="cont" rows="10" cols="36"></textarea>
  <hr/>
  <input type="submit" value="입력" />
  <input type="Reset" value="취소" /> 
 </form>
</body>
</html>

