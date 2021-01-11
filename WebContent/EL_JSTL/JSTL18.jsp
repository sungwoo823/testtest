<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>JSTL core 태그 예제 - if ,choose,when,otherwise</h2>

<c:set  var="nara" value="${'korea'}" />

<c:if test="${nara != null}">
 국가명 : <c:out value="${nara}" /><hr/>
</c:if>

<c:if test="${!empty nara}">
국가명 : ${nara}<hr/>
</c:if>

<c:choose>
 <c:when test="${nara == 'korea'}">
  ${nara}의 겨울은 춥다.
 </c:when>
 
 <c:when test="${nara == 'canana'}">
  <c:out value="${nara}" />의 겨울은 너무 춥다.
 </c:when>
 
 <c:otherwise>그외의 나라들의 겨울은 알수 없다.</c:otherwise>
</c:choose>


