package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daum.dao.GuDAOImpl;
import net.daum.vo.GuVO;


@WebServlet("/gedit")
public class GeditTest06 extends HttpServlet {
	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		int no=Integer.parseInt(request.getParameter("no"));
		
		GuDAOImpl gdao=new GuDAOImpl();
		GuVO g=gdao.getGuCont(no);
		
		request.setAttribute("g",g);
		
		RequestDispatcher geditForward=
				request.getRequestDispatcher("./gu/g_edit.jsp");
		geditForward.forward(request, response);
	}
}
