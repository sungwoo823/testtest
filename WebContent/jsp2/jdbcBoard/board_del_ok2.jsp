<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.daum.dao.*, net.daum.vo.*"%>

<%
   int b_no=Integer.parseInt(request.getParameter("b_no"));
   String del_pwd=request.getParameter("del_pwd");
   
   BoardDAOImpl2 bdao=new BoardDAOImpl2();
   Board3VO db_pwd=bdao.getBoardCont(b_no);
   
   if(!db_pwd.getB_pwd().equals(del_pwd)){
      out.println("<script>");
      out.println("alert('비번 상이');");
      out.println("history.back();");
      out.println("</script>");
   }else{
      bdao.delBoard(b_no);
      
      out.println("<script>");
      out.println("alert('삭제에 성공함!');");
      out.println("location='board_list.jsp';");
      out.println("</script>");
      
   }

%>