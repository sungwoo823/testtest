<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.daum.vo.*,net.daum.dao.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    int b_no=Integer.parseInt(request.getParameter("b_no"));
    String b_name=request.getParameter("b_name");
    String b_title=request.getParameter("b_title");
    String b_pwd=request.getParameter("b_pwd");
    String b_cont=request.getParameter("b_cont");
    
    BoardDAOImpl bdao=new BoardDAOImpl();
    Board3VO db_pwd=bdao.getBoardCont(b_no);//오라클로 부터 비번을 가져온다.
    
    if(!db_pwd.getB_pwd().equals(b_pwd)){
    	out.println("<script>");
    	out.println("alert('비번이 다릅니다!');");
    	out.println("history.back();");
    	out.println("</script>");
    }else{//비번이 같은 경우
    	Board3VO eb=new Board3VO();
        eb.setB_no(b_no); eb.setB_name(b_name);
        eb.setB_title(b_title); eb.setB_cont(b_cont);
        
        bdao.editBoard(eb);//번호를 기준으로 글쓴이,제목,내용을 수정한다.
        /* 
             과제물)게시판 번호를 기준으로 글쓴이,제목,내용을 수정하는 메서드 editBoard(eb)를 코딩해서 완성
              하자.
       */
%>
 <script>
   alert('게시판 수정에 성공했습니다!');
   location="board_cont.jsp?no=<%=b_no%>";
 </script>   
<%        
    }
%>