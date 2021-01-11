<%@ page contentType="text/html; charset=UTF-8"%>
<%
   request.setCharacterEncoding("UTF-8");//post로 전달되는 한글 자료를 서버에서 받을때 안깨지게 한다.
   
   String name=request.getParameter("g_name");
   String title=request.getParameter("g_title");
   String content=request.getParameter("g_cont");		   
%>
이름:<%=name%><hr/>
제목:<%=title%><hr/>
내용:<%=content%><hr/>
<input type="button" value="글쓰기" onclick="location='gu_write.jsp';" />
<%-- 클릭이벤트가 발생하면 자바스크립트 location객체에 의해서 gu_write.jsp 파일로 이동한다. --%>