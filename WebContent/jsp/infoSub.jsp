<%@ page contentType="text/html; charset=UTF-8"%>
<%
  String type=request.getParameter("type");
  if(type == null){
	  return;//종료
  }
%>
<style>
 #t_wrap2{
  width:100%;
 }
</style>
<table id="t_wrap2">
 <tr>
  <th>타입</th> <td><b><%=type%></b></td>
 </tr>
 <tr>
  <th>특징</th>
  <td>
    <% if(type.equals("A")){
    	out.println("강한 내구성");    	  
       }else if(type.equals("B")){
    	out.println("뛰어난 대처 능력");    
       }
    %>
  </td>
 </tr>
</table>



