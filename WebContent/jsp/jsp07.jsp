<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트(사용자:웹브라우저) 및 서버 정보 </title>
</head>
<body>
프로토콜(protocol:통신규약) = <%=request.getProtocol()%><hr/>
전송방식 : <%=request.getMethod()%><hr/>
url 경로: <%=request.getRequestURI()%><hr/>
컨텍스트 패스경로: <%=request.getContextPath()%><hr/>
서버이름: <%=request.getServerName()%><hr/>
서버 포트번호: <%=request.getServerPort()%><hr/>
</body>
</html>