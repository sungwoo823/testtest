<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <%
  out.println("홍길동");//값을 출력하고 줄바꿈은 하지 않고 한칸 띄워서 그다음 출력한다.
  out.println("이순신");
  out.print("강감찬");//print()메서드는 출력하고 줄바꿈하지 않고 붙여서 다음값을 출력한다.
  out.println("신사임당");
  out.println("세종대왕님");
  out.println("<br/>");//줄바꿈
  out.print("기타");
  out.print("기타");
 %>
</body>
</html>