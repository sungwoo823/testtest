<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> application 기본 객체를 사용하여 자원 읽기</title>
</head>
<body>
<%
 String path="/jsp/message/notice.txt";
 out.println("톰캣 WAS서버에서 실행되는 실제경로="+application.getRealPath(path)+"<hr/>");
 out.println("notice.txt파일 내용:<br/>");
 
 char[] buff=new char[128];
 int len=-1;
 
 try(InputStreamReader br=new InputStreamReader(
		 application.getResourceAsStream(path),"UTF-8")){
	 //getResourceAsStream(path)메서드는 지정한 path경로에 해당하는 자원으로 부터 데이터를 읽어 올수 있는
	 //InputStream객체를 반환한다.
	 while((len=br.read(buff)) != -1){
        out.print(new String(buff,0,len));		 
	 }
 }catch(IOException ie){
	 ie.printStackTrace();
 }
 %>
</body>
</html>
