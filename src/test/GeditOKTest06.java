package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daum.dao.GuDAOImpl;
import net.daum.vo.GuVO;


@WebServlet("/gedit_ok")
public class GeditOKTest06 extends HttpServlet {
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,
	IOException {
		
		request.setCharacterEncoding("UTF-8");//post로 전달된 한글데이터를 서버에서 받을때 안깨지게
		//함
	
		int no=Integer.parseInt(request.getParameter("no"));//get으로 전달된 번호값을 정수
		//숫자로 변경해서 저장
		
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		//제목과 내용을 post로 전달받아서 저장.
	
		GuVO g=new GuVO();
		g.setNo(no); g.setTitle(title); g.setContent(content);
		
		GuDAOImpl gdao=new GuDAOImpl();
		
		gdao.editGu(g);
		/* 문제)번호를 기준으로 제목과 내용을 수정하는 editGu(g) 메서드를 완성 시키자.그래서 모델 DAOImpl을
		 * 완성한다.
		 */
		
		response.sendRedirect("gcont?no="+no);//gcont?no=번호 를 get방식으로 전달해서 번호에 
		//해당하는 수정된 제목과 내용을 확인한다.
	}
}
