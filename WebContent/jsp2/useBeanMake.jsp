<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="member" scope="request" class="net.daum.vo.Member2VO" />
<%-- Member2VO 빈클래스 객체명 member를 생성 --%>
<%
 member.setId("abc1234");//회원아이디 저장
 member.setName("이순신");//회원이름 저장 
%>
<jsp:forward page="useBeanResult.jsp" />