<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 폼</title>
<script src="../../js/jquery-3.5.1.min.js"></script>
<%-- ../../ 2단계 상위 폴더로 이동 --%>
<script>
 function login_check(){
	 if($.trim($('#id').val())==''){
		 alert('아이디를 입력!');
		 $('#id').val('').focus();
		 return false;
	 }
	 if($.trim($('#pass').val()).length==0){
		 alert('비번을 입력!');
		 $('#pass').val('');//입력박스 초기화
		 $('#pass').focus();//비번 입력박스로 포커스 이동
		 return false;
	 }
 }
</script>
</head>
<body>
<form method="post" action="<%=request.getContextPath()%>/jsp2/member/login_ok.jsp"
onsubmit="return login_check();">
<%-- getContextPath()메서드는 컨텍스트 패스 경로를 구함. /web02 --%>
 <h3>로그인</h3>
 아이디:<input type="text" name="id" id="id" size="14" />
 비밀번호:<input type="password" name="pass" id="pass" size="14" />
 <input type="submit" value="로그인" />
</form>
</body>
</html>