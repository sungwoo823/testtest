<%@ page contentType="text/html; charset=UTF-8"%>
<%
  String code=request.getParameter("code");
  String url=null;
  
  if(code.equals("A")){
	  url="a.jsp";
  }else if(code.equals("B")){
	  url="b.jsp";
  }else if(code.equals("C")){
	  url="c.jsp";
  }
%>
<jsp:forward page="<%=url%>" />
<%-- 포워딩이 된 페이지는 웹브라우저 주소창에 보이는 주소값과 실제 보이는 본문 내용이 서로 다르다. --%>