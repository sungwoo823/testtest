<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.daum.dao.*" %>
<%
  request.setCharacterEncoding("UTF-8");//post방식으로 전달된 한글 자료를 서버에서 받을때 안깨지게 함
%>
<jsp:useBean id="b" class="net.daum.vo.Board3VO" />
<%-- Board3VO 빈클래스 객체명 b를 생성 --%>
<jsp:setProperty name="b" property="*" />
<%--값 저장 액션태그이다. 프로퍼티 속성값으로 *로 처리하면 값이 한꺼번에 저장됨.이런경우는 네임피라미터 이름과
빈클래스 변수명을 같게 하는 경우이다. --%>

<%
  BoardDAOImpl bdao=new BoardDAOImpl();
  int re=bdao.insertBoard(b);//게시판 저장
  /* 문제)게시판 저장메서드 insertBoard(b)를 완성하자.  
  */
  
  if(re ==  1){
	  out.println("<script>");
	  out.println("alert('게시판 저장에 성공했습니다!');");
	  out.println("location='board_list.jsp';");
	  out.println("</script>");
  }
%>



