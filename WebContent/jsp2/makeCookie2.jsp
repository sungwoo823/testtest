<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
 response.addCookie(Cookies.createCookie("name","신사임당님"));//쿠키이름,값을 가진 쿠키생성해서
 //추가
 response.addCookie(Cookies.createCookie("id","kkk5678","/",-1));
 //쿠키이름,값,경로,유효기간을 가진 쿠키 생성해서 추가. 유효기간이 -1
%>
<h3>쿠키 생성</h3>