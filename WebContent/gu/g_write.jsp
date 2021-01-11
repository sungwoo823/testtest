<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿으로 실행되는 방명록 뷰페이지 연습 </title>
<script src="./js/jquery-3.5.1.min.js"></script>
<%-- ./는 현재경로, 상대경로를 설정할 때 기준으로 브라우저 주소창에서 실행되는 매핑주소가 된다. --%>
<script>
 function check(){
	 if($.trim($('#title').val()) == ''){
		 alert('제목을 입력하세요!');
		 $('#title').val('').focus();
		 return false;
	 }
	 if($.trim($('#content').val()) == ''){
		 alert('내용을 입력하세요!');
		 $('#content').val('').focus();
		 return false;
	 }
 }
</script>
</head>
<body>
<form method="post" action="/web02/gok" onsubmit="return check();">
<%-- action속성에 지정한 /web02는 컨텍스트 패스 경로이고, /gok는 매핑주소이다. --%>
<h2>서블릿 뷰페이지</h2>
제목:<input type="text" name="title" id="title" size="36" /><br/><br/>
내용:<textarea name="content" id="content" rows="10" cols="36"></textarea><br/><br/>
<input type="submit" value="저장" />
<input type="reset" value="취소" />
</form>
</body>
</html>