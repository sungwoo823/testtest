<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tbl_member2 테이블에 회원가입 폼 </title>
<script src="../../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="../../js/mem.js"></script>
<link rel="stylesheet" type="text/css" href="../../css/mem.css" />
</head>
<body>
 <form method="post" action="member2_join_ok.jsp" onsubmit="return join_check();">
  <table id="mJoin_wrap">
   <tr>
    <th colspan="2">회원 가입폼</th>
   </tr>
   <tr>
    <th>아이디</th>
    <td><input type="text" name="member_id" id="member_id" size="14" /></td>
   </tr>
   <tr>
    <th>비밀번호</th>
    <td><input type="password" name="member_pwd" id="member_pwd" size="14" /></td>
   </tr>
   <tr>
    <th>비밀번호 확인</th>
    <td><input type="password" name="pwd_chk" id="pwd_chk" size="14" /></td>
   </tr>
   <tr>
    <th>회원이름</th>
    <td><input type="text" name="member_name" id="member_name" size="14" /></td>
   </tr>
   <tr>
    <th>폰번호</th>
    <td><input type="tel" name="member_phone" id="member_phone" size="20" /></td>
   </tr>
   <tr>
    <th>이메일</th>
    <td><input type="email" name="member_email" id="member_email" size="24" /></td>
   </tr>
   <tr>
    <th colspan="2">
    <input type="submit" value="가입" />
    <input type="reset" value="취소" onclick="$('#member_id').focus();" />
    <input type="button" value="회원목록" onclick="location='member2_list.jsp';" />
    </th>
   </tr>
  </table>
 </form>
</body>
</html>