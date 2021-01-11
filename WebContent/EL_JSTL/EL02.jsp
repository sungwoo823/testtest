<%@ page contentType="text/html; charset=UTF-8"%>
<H3>표현언어(EL) 연산자</H3>
\${5 mod 2} : ${5 mod 2}<hr/><%-- mod는 표현언어에서 나머지 연산 --%>
\${2 gt 3} : ${2 gt 3}<hr/><%-- gt는 표현언어에서 >를 뜻함 --%>
\${(5>2)?5:2} = ${(5>2)?5:2}<hr/>
\${(5>2) || (2<10)} = ${(5>2) || (2<10)}<hr/>

<%
  String data=null;
%>
\${empty data} : ${empty data}<hr/>
<%-- data변수가 비어 있어면 즉 null이면 참 즉 true이다 --%>