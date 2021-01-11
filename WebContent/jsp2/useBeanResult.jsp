<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="member" scope="request" class="net.daum.vo.Member2VO" />

<%=member.getName()%> <b>(<%=member.getId()%>)</b> 회원님 안녕하세요.