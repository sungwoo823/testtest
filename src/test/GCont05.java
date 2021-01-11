package test;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daum.dao.GuDAOImpl;
import net.daum.vo.GuVO;

public class GCont05 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		int no=Integer.parseInt(request.getParameter("no"));//get방식으로 no피라미터 이름에
		//문자열로 전달된 숫자를 정수로 바꾼다.
		
		GuDAOImpl gdao=new GuDAOImpl();
		GuVO g=gdao.getGuCont(no);//번호에 해당하는 디비 레코드값을 가져옴.
		
		request.setAttribute("g",g);//g키이름에 g객체를 저장
		
		RequestDispatcher gContForward=
				request.getRequestDispatcher("./gu/g_cont.jsp");
		gContForward.forward(request,response);
	}	
}
