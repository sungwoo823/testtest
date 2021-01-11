<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%-- page import속성을 사용하여 외부 패키지 api를 임포트 즉 읽어들인다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Calendar 추상클래스 사용</title>
</head>
<body>
 <%
    Calendar c=Calendar.getInstance();
 /* Calendar는 추상클래스로 new로 객체생성을 못한다. 이 클래스는 년월일 시분초 등 값을 반환한다.
 */
    int year=c.get(Calendar.YEAR);//년도값
    int month=c.get(Calendar.MONTH)+1;//월값,+1을 한 이유는 1월이 0으로 반환되기 때문이다.
    int date=c.get(Calendar.DATE);//일값
    int hour=c.get(Calendar.HOUR_OF_DAY);//24시간값
    int minute=c.get(Calendar.MINUTE);//분값
    int second=c.get(Calendar.SECOND);//초값
 %>
 오늘은 <strong><%=year%></strong>년 <hr/>
 <strong><%=month%></strong>월<hr/>
 <strong><%=date%></strong>일 이고,<hr/>
 <strong><%=hour%></strong>시<hr/>
 <strong><%=minute %></strong>분<hr/>
 <strong><%=second%></strong>초입니다.<hr/>
</body>
</html>

