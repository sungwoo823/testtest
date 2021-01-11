<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>JSTL core 태그 실습 : forTokens</h3>

<c:forTokens var="tech" items="java,sql,javascript,jsp" delims=",">
  익혀야 할 기술 : <c:out value="${tech}" /><hr/>
</c:forTokens><%-- ,(쉼표)를 기준으로 문자열을 분리해서 토큰 문자열을 만든다. --%>