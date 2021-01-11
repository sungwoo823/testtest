<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력폼 실습 </title>
</head>
<body>
<form method="post" action="form_ok.jsp">
 <table border="1">
  <tr>
   <th colspan="2">폼입력</th>
  </tr>
  <tr>
   <th>이름:</th>
   <td><input type="text" name="name2" size="14" /></td>
   <%-- name 속성명(즉 피라미터이름) name2 에 이름이 저장되어 서버로 전달된다. --%>
  </tr>
  <tr>
   <th>주소:</th>
   <td><input type="text" name="addr" size="30" /></td>
  </tr>
  <tr>
   <th>좋아하는 동물:</th>
   <td>
   <input type="checkbox" name="pet" value="dog" />강아지
   <%-- checkbox는 네모 버튼을 만들고 하나이상 복수개를 선택할 수 있다. checked속성을 사용하면 미리 선택이
   가능하다. pet 네임피라미터 이름에 value속성값 dog를 담아서 서버로 전달한다. --%>
   <input type="checkbox" name="pet" value="cat" />고양이
   <input type="checkbox" name="pet" value="pig" />돼지
   </td>
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