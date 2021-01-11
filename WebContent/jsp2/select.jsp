<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select 옵션 선택 화면 </title>
</head>
<body>
<form action="<%=request.getContextPath()%>/jsp2/view_ok.jsp">
<%-- 1.method속성을 생략하면 기본값이 get 방식이다. 
     2.getContextPath()메서드는 컨텍스트 패스경로를 반환한다. 여기서는 /web02가 컨텍스트 패스 경로이다.
 --%>
 보고 싶은 페이지 선택:
 <select name="code"><%--code 네임피라미터 이름에 option value속성값이 담겨져서 서버로 전달됨. --%>
  <option value="A">A 페이지</option>
  <option value="B">B 페이지</option>
  <option value="C">C 페이지</option>
 </select>
 <input type="submit" value="이동" />
</form>
</body>
</html>