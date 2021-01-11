<%@ page contentType="text/html; charset=UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");//post로 전달된 한글을 안깨지게 방지
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<form method="post" action="EL06.jsp">
 <label for="name">이름</label><%-- label for속성명과 입력박스 id속성명이 같으면 마우스 조작이 불편하신
 분들 입력박스 선택이 어려워도 라벨이름만 선택해도 보다 더 쉽게 입력박스 선택이 가능하다. --%>
 <input type="text" name="name" id="name" size="14" value="${param['name']}" />
 <input type="submit" value="확인" /> 
</form>
<hr/>
이름은 <strong>${param.name}</strong> 입니다.
</body>
</html>