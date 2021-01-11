<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<style>
 #t_wrap{
  width:100%;
 }
 table,th,td{
  border:1px solid red;
 }
</style>
</head>
<body>
<table id="t_wrap">
 <tr>
  <th>제품번호</th> <th>XXXX</th>
 </tr>
 <tr>
  <td>가격</td> <td>10,000원</td>
 </tr>
</table>

<br/><br/>

<jsp:include page="infoSub.jsp" flush="false">
  <jsp:param name="type" value="A" />
</jsp:include>
</body>
</html>