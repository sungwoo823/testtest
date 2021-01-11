<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies"%>
<%
	String id = request.getParameter("id");
    String pass = request.getParameter("pass");

if (id.equals(pass)) {//아이디와 비번이 같다면 로그인 인증 성공한 것으로 판단
	response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));
	//쿠키이름 AUTH,쿠키값 id,쿠키경로 /,유효기간이 없는 쿠키 추가
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<h3><%=id%>님 로그인에 성공했습니다!</h3>

	<%
		} else {
	%>
	<script>
		alert('로그인에 실패했습니다!');
		history.back();//history.go(-1);와 같다. 뒤로 한칸 이동. 자바스크립트 내장객체인 history는
		//과거형 객체로서 이전 주소 정보를 담고 있다.
	</script>
	<%
		}
	%>
</body>
</html>
