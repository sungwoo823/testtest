<%@page import="test.User"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="msg" value="${'안녕'}" />
<%-- msg변수에 안녕 저장 --%>

<c:set var="age">
 ${28}
</c:set>

<c:set var="user" value="<%=new User()%>" />
<c:set target="${user}" property="firstName" value="${'홍'}" />
<%-- User 빈클래스 firstName에 홍 저장 --%>
<c:set target="${user}" property="lastName">
 ${'길동'}
</c:set>

<c:out value="${msg}" />&nbsp;&nbsp;<%-- &nbsp;은 한칸의 빈공백 --%>
<strong>${user.firstName}&nbsp;<c:out value="${user.lastName}" /></strong>
<hr/>
나이는 ? <c:out value="${age}" /> 세
<hr/>

<c:remove var="age" /><%-- age변수를 제거 --%>
나이는? ${age} 세
<hr/>

<c:catch var="errmsg">
 예외 발생전
 <%=10/0%>
 예외 발생후 
</c:catch>
<%--자바에서 정수숫자를 0으로 나누면 예외가 발생 --%>
<c:out value="${errmsg}" />
