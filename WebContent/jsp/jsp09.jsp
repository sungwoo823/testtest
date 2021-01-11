<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp내장객체 request </title>
</head>
<body>
 <form method="post" action="form_ok2.jsp">
  <table border="1">
   <tr>
    <th>제목</th>
    <td><input type="text" name="title" size="36" /></td>
   </tr>
   <tr>
    <th>내용</th>
    <td><textarea name="content" rows="10" cols="36"></textarea></td>
   </tr>
   <tr>
    <th colspan="2">
    <input type="submit" value="전송" />
    <input type="reset" value="취소" />
    </th>
   </tr>
  </table>
 </form>
</body>
</html>