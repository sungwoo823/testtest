<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC방명록 내용보기 </title>
</head>
<body>
 <table border="1">
  <tr>
   <th colspan="2">MVC방명록 내용보기</th>
  </tr>
  <tr>
   <th>제목</th> <td>${g.title}</td>
  </tr>
  <tr>
   <th>내용</th> <td>${g.content}</td>
  </tr>
  <tr>
   <th>날짜</th> <td>${g.regdate}</td>
  </tr>
  <tr>
   <th colspan="2">
   <input type="button" value="수정" onclick="location='gedit?no=${g.no}';" />
   <input type="button" value="삭제" onclick="location='gdel?no=${g.no}';" />
   <input type="button" value="목록" onclick="location='gList';" />
   </th>
  </tr>
 </table>
</body>
</html>