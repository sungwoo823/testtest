<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="fruit" value="${param.name}" />
<%-- 피라미터 이름 name에 실려온 값을 fruit변수에 저장. 실행시 주소창에 *.jsp?name=apple 형태로 노출되는
get방식으로 실행해야 한다. --%>

피라미터 name에 실려온 값:
<c:if test="${!empty fruit}">
 <c:out value="${fruit}" />
</c:if>
<hr/>

<c:choose>
 <c:when test="${fruit == 'apple'}">
  ${fruit} : 사과
 </c:when>
 <c:when test="${fruit == 'orange'}">
  ${fruit} : 오렌지
 </c:when>
 <c:otherwise>해당사항 없음.</c:otherwise>
</c:choose>