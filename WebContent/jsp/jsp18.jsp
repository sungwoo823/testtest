<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page buffer="8kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버퍼정보 </title>
</head>
<body>
버퍼크기: <%=out.getBufferSize()%><hr/>
남은크기: <%=out.getRemaining()%><hr/>
auto flush 유무: <%=out.isAutoFlush()%><hr/>
</body>
</html>