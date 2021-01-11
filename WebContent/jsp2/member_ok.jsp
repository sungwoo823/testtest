<%@ page contentType="text/html; charset=UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");//method=post로 전달되는 한글을 안깨지게 한다.
%>
<jsp:useBean id="m" class="net.daum.vo.Member2VO" />
<jsp:setProperty name="m" property="*" />
<%-- jsp:setProperty는 값 저장 액션태그. name속성명 m은 Member2VO빈클래스 객체명이다. 프로퍼티 속성값을
*로 처리한 이유는 member_join.jsp의 네임피라미터 이름과 Member2VO빈클래스 변수명이 같기 때문이다.그러므로 *
로 처리하면 아이디,이름,이메일이 한꺼번에 저장됨. setter()메서드를 호출해서 저장됨.--%>
<jsp:setProperty name="m" property="password" value="<%=m.getId()%>" />
<%-- password빈클래스 변수명에 value속성값 아이디를 저장시킴.즉 아이디를 비번으로 저장시킴. m.setPassword(
m.getId()); 자바코드와 같은 역할을 한다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입완료 </title>
</head>
<body>
아이디:<jsp:getProperty property="id" name="m"/><hr/>
<%-- jsp:getProperty는 값 반환 액션태그. m.getId(); 자바코드와 같은 역할을 한다. --%>
비밀번호:<%=m.getPassword()%><hr/>
이름:<jsp:getProperty property="name" name="m" /><hr/>
이메일:<% out.println(m.getEmail()+"<hr/>"); %>
</body>
</html>
