<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="/error/viewError.jsp" %>
<%-- errorPage속성을 사용해서 예외 에러가 발생했을때 보여지는 에러페이지를 지정한다.--%>

name피라미터 값: <%=request.getParameter("name").toUpperCase() %>