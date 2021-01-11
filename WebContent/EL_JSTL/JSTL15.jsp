<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="test" value="apple.jpg" />

<h3><c:out value="${test}" /></h3>
<img src="${test}" width="100" height="100" alt="사과" />