<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 글쓰기 </title>
<script src="../js/jquery-3.5.1.min.js"></script>
<%-- jQuery 라이브러리 읽어오기 --%>
<script src="../js/g.js"></script><%-- ../는 한단계 상위폴더로 이동 --%>
</head>
<body>
 <form method="post" action="gu_ok.jsp" onsubmit="return check();">
  이름:<input type="text" name="g_name" id="g_name" size="14" /><hr/>
  제목:<input type="text" name="g_title" id="g_title" size="36"/><hr/>
  내용:<textarea name="g_cont" id="g_cont" rows="10" cols="36"></textarea><hr/>
  <input type="submit" value="전송" />
  <input type="reset" value="취소" />
 </form>
</body>
</html>