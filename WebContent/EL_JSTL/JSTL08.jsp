<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- JSTL(jsp standard tag library) 코어 태그 라이브러리 추가 --%>

<jsp:useBean id="user" class="test.User" />
<jsp:setProperty name="user" property="firstName" value="신" />
<jsp:setProperty name="user" property="lastName" value="사임당" />

성:
<c:if test="${!empty user.firstName}">
 <input type="text" name="firstName" size="6" value="${user.firstName}" />
</c:if>
이름:
<c:if test="${!empty user.lastName}">
 <input type="text" name="lastName" size="12" value="${user.lastName}" />
</c:if>