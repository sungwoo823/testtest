<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.net.*" %>
<%-- ,로 구분해서 복수개의 패키지를 임포트 --%>
<%
 String path="/jsp/message/notice.txt";
 char[] buff=new char[128];
 int len=-1;
 URL url=application.getResource(path);//getResource(path) 메서드는 지정한 path경로에 해당하는
 //자원에 접근할 수 있는 URL객체를 반환한다.
 
 try(InputStreamReader br=new InputStreamReader(url.openStream(),"UTF-8")){
	 while((len=br.read(buff)) != -1){
		 out.print(new String(buff,0,len));
	 }
 }catch(IOException ie){ie.printStackTrace();}
%>