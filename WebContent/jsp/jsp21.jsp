<%@ page contentType="text/html; charset=UTF-8"%>
<%
// application jsp내장객체는 현재 사용중인 웹 컨테이너(톰캣 was 서버)에 대한 정보를 담고 있다.

    out.println("톰캣 버전 : "+application.getServerInfo()+"<hr/>");
//getServerInfo()메서드는 서버정보를 구함.
    out.println("서블릿 메시저 버전 : "+application.getMajorVersion()+"<hr/>");
    out.println("서블릿 마이너 버전 : "+application.getMinorVersion()+"<HR/>");
    
    application.log("로그 메시지 기록");//이클립스 콘솔모드에 로그 메시지 확인가능함.
    log("로그 메시지 기록2");
%>
