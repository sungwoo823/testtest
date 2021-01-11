<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력폼 </title>
<script src="../js/jquery-3.5.1.min.js"></script>
<script>
 function check(){
	 if($.trim($('#id').val()) == ''){
		 alert('아이디를 입력하세요!');
		 $('#id').val('').focus();//아이디 입력박스를 초기화 하고 포커스 이동시킴
		 return false;
	 }
	 if($.trim($('#name').val()) == ''){
		 alert('이름을 입력하세요!');
		 $('#name').val('').focus();
		 return false;
	 }
	 if($.trim($('#email').val()) == ''){
		 alert('이메일을 입력하세요!');
		 $('#email').val('').focus();
		 return false;
	 }
 }
</script>
</head>
<body>
 <form method="post" action="member_ok.jsp" onsubmit="return check();">
  <table border="1">
   <tr>
    <th>아이디</th>
    <td colspan="3"><input type="text" name="id" id="id" size="14" /></td>
   </tr>
   <tr>
    <th>회원이름</th> <td><input type="text" name="name" id="name" size="14" /></td>
    <th>이메일</th> <td><input type="text" name="email" id="email" size="24" /></td>
   </tr>
   <tr>
    <th colspan="4">
    <input type="submit" value="회원가입" />
    <input type="reset" value="취소" />
    </th>
   </tr>
  </table> 
 </form>
</body>
</html>



