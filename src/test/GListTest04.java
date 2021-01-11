package test;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daum.dao.GuDAOImpl;
import net.daum.vo.GuVO;


@WebServlet("/gList")
public class GListTest04 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		GuDAOImpl gdao=new GuDAOImpl();
		List<GuVO> glist=gdao.getGuList();//방명록 목록
		
		request.setAttribute("list",glist);
		//list키이름에 glist컬렉션을 저장.
		
		RequestDispatcher gListForward=
				request.getRequestDispatcher("./gu/g_list.jsp");//뷰페이지 경로 설정
		gListForward.forward(request, response);
		//기존 매핑주소값을 유지하고,list키이름값도 유지하면서 해당 뷰페이지로 이동.
	}
}
