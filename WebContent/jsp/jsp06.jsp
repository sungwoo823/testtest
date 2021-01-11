<%@ page contentType="text/html; charset=UTF-8"%>
<%!
//선언문
/* 문제)덧셈한 결과값을 반환하는 add(int a,int b){}, 뺄셈한 결과값을 반환하는 subtract(int x,int y){}
  사용자 정의 메서드를 선언해 보자.
*/
public int add(int a,int b){
  int result=a+b;
  return result;
}
  
public int subtract(int x,int y){
	return x-y;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 릿에서 선언부 사용하기</title>
</head>
<body>
<% //스트립트 릿 영역
   int value01=3;
   int value02=9;
   
   int addResult=add(value01,value02);
   int subtractResult=subtract(value01,value02);
%>
<%=value01%> + <%=value02%> = <%=addResult%>
<hr/>
<%=value01%> - <%=value02%> = <%=subtractResult%>
<hr/>
</body>
</html>