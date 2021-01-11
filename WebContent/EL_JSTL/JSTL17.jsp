<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%-- JSTL sql 태그립은 데이터 베이스 연동 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL sql 태그 라이브러리 사용 실습</title>
</head>
<body>
 <sql:setDataSource var="con" driver="oracle.jdbc.driver.OracleDriver"
                              url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
                              user="week7"
                              password="week7" />
<%-- 데이터베이스 연결 설정 --%>

<sql:update dataSource="${con}"><%-- con JSTL 변수에 데이터베이스 연결정보가 저장되어 있다. --%>
  insert into test2 values(1,'홍길동')
</sql:update>                     
<sql:update dataSource="${con}">
  insert into test2 values(2,'이순신')
</sql:update>         

<sql:query var="rs" dataSource="${con}"><%--검색 결과 레코드를 rs에 저장 --%>
  select * from test2
</sql:query>

<c:forEach var="data" items="${rs.rows}">
 ${data['num']}&nbsp;${data['name']}
 <hr/>
</c:forEach>
</body>
</html>

