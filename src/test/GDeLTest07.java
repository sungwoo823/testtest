package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daum.dao.GuDAOImpl;


@WebServlet("/gdel")
public class GDeLTest07 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		//브라우저로 출력되는 문자,태그,언어코딩 타입을 설정
		PrintWriter out=response.getWriter();
		
		int no=Integer.parseInt(request.getParameter("no"));
		
		GuDAOImpl gdao=new GuDAOImpl();
		int re=gdao.delGu(no);
		/*문제)번호를 기준으로 삭제하는 메서드를 완성하자.
		 */
		
		if(re==1) {
			out.println("<script>");
			out.println("alert('삭제에 성공했습니다!');");
			out.println("location='gList';");
			out.println("</script>");
		}
	}
}
