<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forTokens var="cityName" items="서울,부산,인천" delims=",">
    <c:out value="${cityName}" /><br/>
</c:forTokens>
<%-- ,를 기준으로 문자열을 분리한다.분리된 문자를 토큰 문자열이라고 한다. --%>