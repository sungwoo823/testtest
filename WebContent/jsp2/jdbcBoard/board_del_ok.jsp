<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.daum.dao.*,net.daum.vo.*" %>
<%
    int b_no=Integer.parseInt(request.getParameter("b_no"));
    String del_pwd=request.getParameter("del_pwd");
    
    BoardDAOImpl bdao=new BoardDAOImpl();
    Board3VO db_pwd=bdao.getBoardCont(b_no);
    
    if(!db_pwd.getB_pwd().equals(del_pwd)){
    	out.println("<script>");
    	out.println("alert('비번이 다릅니다!');");
    	out.println("history.back();");
    	out.println("</script>");
    }else{
    	bdao.delBoard(b_no);//번호를 기준으로 삭제
    	/* 문제) delBoard(b_no);메서드를 완성하자.
    	*/
    	
    	out.println("<script>");
    	out.println("alert('삭제에 성공했습니다!');");
    	out.println("location='board_list.jsp';");
    	out.println("</script>");
    }
%>