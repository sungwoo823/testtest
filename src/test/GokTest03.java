package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daum.dao.GuDAOImpl;
import net.daum.vo.GuVO;

@WebServlet("/gok")
public class GokTest03 extends HttpServlet {
  /* 1.post로 접근할 때 호출되는 doPost()메서드를 오버라이딩 한다.   
   */
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
	  response.setContentType("text/html;charset=UTF-8");
	  PrintWriter out=response.getWriter();
	  
	  request.setCharacterEncoding("utf-8");//post로 전달되는 한글자료를 서버에서 받을 때 안깨지게 
	  //한다.
	  
	  String title=request.getParameter("title");
	  String cont=request.getParameter("content");
	  
	  out.println("제목:"+title+"<hr/>");
	  out.println("내용:"+cont+"<hr/>");
	  
      GuDAOImpl gdao=new GuDAOImpl();
      GuVO g=new GuVO();
      g.setTitle(title); g.setContent(cont);
      gdao.insertGu(g);//mvc패턴으로 방명록 저장
      
      response.sendRedirect("gList");// gList는 매핑주소
      // /gList매핑주소에 대응되는 서블릿 컨트롤러 클래스를 만든다.
	}
}




