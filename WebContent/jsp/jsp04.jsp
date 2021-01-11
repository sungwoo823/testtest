<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 합구하기</title>
</head>
<body>
<%
//문제1) 1부터 10까지 합을 구하는 스크립트 코드를 완성하자.
 int sum=0;
 for(int i=1;i<=10;i++){
	 sum=sum+i;
 }
%>
1부터 10까지의 합은 <strong><%=sum%></strong> 입니다.
<hr/>
<%
 //문제2)11부터 20까지 합을 구하는 스크립트 코드를 완성하자.
 int total=0;
 int j=11;
 while(j<=20){
	 total += j;
	 j++;
 }
%>
11부터 20까지의 합은 <strong><%=total%></strong> 입니다.
</body>
</html>