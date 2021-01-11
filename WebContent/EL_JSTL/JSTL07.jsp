<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:useBean id="user" class="test.User" />
<jsp:setProperty name="user" property="firstName" value="이" />
<jsp:setProperty name="user" property="lastName" value="순신" />

성:
<% if(user.getFirstName() != null){ %>
<input type="text" name="firstName" size="6" value="<%=user.getFirstName()%>" />
<% } %>
이름:
<% if(user.getLastName() != null) { %>
<input type="text" name="lastName" size="12" value="<%=user.getLastName()%>" />
<% } %>
<hr/>