<%@ page contentType="text/html; charset=UTF-8"%>
<%!
 //%!는 선언문으로 변수 또는 메서드 선언용도로 활용됨
 
 public int multiply(int a,int b){
	int result=0;
	result=a*b;
	return result;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식과 선언문 </title>
</head>
<body>
1 부터 10 까지 합: <%=1+2+3+4+5+6+7+8+9+10%>
<%-- <%= 표현식 문법으로 출력용도로 활용된다. --%>
<hr/>
10*25=<%=multiply(10,25)%>
<hr/>
</body>
</html>