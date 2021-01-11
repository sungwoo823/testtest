<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 세션 로그인폼</title>
<script src="../../js/jquery-3.5.1.min.js"></script>
<%-- ../../ 2단계 상위 폴더로 이동 --%>
<script>
function login_check(){
 $login_id=$.trim($('#login_id').val());
 if($login_id.length == 0){
	 window.alert('로그인 아이디를 입력하세요!');//window.생략가능
	 $('#login_id').val('').focus();
	 return false;
 }
 $login_pwd=$.trim($('#login_pwd').val());
 if($login_pwd == ''){
	 alert('로그인 비번을 입력하세요!');
	 $('#login_pwd').val('').focus();
	 return false;
 }
}
</script>
</head>
<body>
<form method="post" action="login_ok2.jsp" onsubmit="return login_check();">
 <table border="1">
  <tr>
   <th>아이디</th>
   <td><input type="text" name="login_id" id="login_id" size="14" /></td>
   <th rowspan="2"><%--rowspan="2"는 2개행을 합침 --%>
   <input type="submit" value="로그인" />
   </th>
  </tr>
  <tr>
   <th>비밀번호</th>
   <td><input type="password" name="login_pwd" id="login_pwd" size="14" /></td>
  </tr>
 </table>
</form>
</body>
</html>