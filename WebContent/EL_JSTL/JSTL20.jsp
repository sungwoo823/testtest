<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="UTF-8" />
<%-- JSP의 request.setCharacterEncoding("UTF-8")과 같다. 즉 post로 전달된 한글 자료를 안깨지게 한다
--%>

피라미터 name에 실려온 값:<c:out value="${param.name}" />
<%-- param.name은 request.getParameter("name")과 같다. 피라미터 이름 name에 실려온 값을 가져온다.
--%>

<form method="post" action="JSTL20.jsp">
  <label for="name">이름</label>
  <input type="text" name="name" id="name" size="14" value="${param.name}" />
  <input type="submit" value="전송" />
</form>