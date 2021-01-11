<%@ page contentType="text/html; charset=UTF-8"%>
<%
  request.setAttribute("name","홍길동");//문자열 name속성 키이름에 홍길동 값 저장
%>
<h4>표현언어 닷(.) 연산자</h4>
${requestScope.name}<br/><%--표현언어에서 사용된 requestScope는 jsp 내장객체 request를 가리킨다.
그래서 setAttribute()메서드로 저장된 name키 값을 가져온다. --%>
${param.userid}<hr/><%-- 피라미터 userid 값을 가져온다. 실행할 때 주소창에 *.jsp?userid=kkkk
값을 get방식으로 전달해야 한다. 이것은 request.getParameter("userid")와 같다. --%>

<h4>브라켓([]) 연산자로 접근</h4>
${requestScope["name"]}<br/>
${param['userid']}<hr/>

<h4>jsp문법으로 표현</h4>
<%=request.getAttribute("name")%><br/>
<%=request.getParameter("userid")%><hr/>
