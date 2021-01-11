<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿MVC 방명록 뷰페이지 수정창 </title>
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
<form method="post" action="/web02/gedit_ok?no=${g.no}" onsubmit="return check();">
<%-- action속성에 지정한 /web02는 컨텍스트 패스 경로이고, /gedit_ok는 매핑주소이다. action속성값에
서버 매핑주소가 gedit_ok?no=번호값 즉 주소창에 노출되는 get방식으로 번호값을 전달함. 이때 번호값은 문자열로 전달됨.
제목과 내용을 post방식으로 전달됨.--%>

<h2>서블릿 뷰페이지</h2>
제목:<input type="text" name="title" id="title" size="36" value="${g.title}"/><br/><br/>
내용:<textarea name="content" id="content" rows="10" 
cols="36" >${g.content}</textarea><br/><br/>
<input type="submit" value="수정" />
<input type="reset" value="취소" />
</form>
</body>
</html>