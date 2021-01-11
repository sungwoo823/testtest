<%@ page contentType="text/html; charset=UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="b" class="net.daum.vo.Board2VO" />
<%-- Board2VO 빈클래스 객체명 b생성 --%>
<jsp:setProperty name="b" property="*" />
작성자: <jsp:getProperty property="writer" name="b"/><br/>
제목: <jsp:getProperty property="title" name="b" /><br/>
내용: <jsp:getProperty property="cont" name="b"/><hr/>
<input type="button" value="게시판입력" onclick="location='board_write.jsp';" />
<%-- 클릭 이벤트가 발생하면 자바스크립트 location객체에 의해서 board_write.jsp로 이동한다. --%>