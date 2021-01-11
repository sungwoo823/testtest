<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>절대 경로를 사용하여 자원 읽기 </title>
</head>
<body>
<%
  char[] buff=new char[128];
  int len=-1;
  
  String filePath = 
		  "D:\\Java_Web\\web_work\\web02\\WebContent\\jsp\\message\\notice.txt";
  
  try(InputStreamReader br=new InputStreamReader(
		  new FileInputStream(filePath),"UTF-8")){
/* 1.try()내에서 객체를 생성하면 java 7버전에서 추가된 AutoCloseable인터페이스를 구현상속 받은 자손은 명시적인
코드로 close()하지 않아도 자동으로 닫힌다.
   2.InputStreamReader는 읽어들인 바이트를 문자스트림으로 변경한다.
   3.FileInputStream은 주어진 파일로 부터 바이트 입력스트림으로 읽어들인다.
*/
    while((len=br.read(buff)) != -1){
    	//더이상 읽어들일 값이 없다면 -1 
    	out.print(new String(buff,0,len));//buff배열로 부터 0~len길이만큼 문자열로 변환해서 출력    			
    }
  }catch(IOException ie){
	  out.println("예외 발생:"+ie.getMessage());//예외 에러 메시지 출력
  }
%>
</body>
</html>
