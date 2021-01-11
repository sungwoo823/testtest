package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/gw") //브라우저 주소창에서 실행되는 주소값 즉 매핑주소(url-pattern)->/gw 등록
public class GwTest02 extends HttpServlet {	
/* 1. get or post에 상관없이 호출되는 service()메서드를 오버라이딩 해서 호출 
 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher gwForward=
				request.getRequestDispatcher("./gu/g_write.jsp");
		//뷰페이지 경로 설정
		gwForward.forward(request, response);
/* RequestDispatcher forward() 메서드 기능)
 * 	1.기존 매핑주소값을 유지한채 해당 뷰페이지로 이동한다.	
 */
	}
}
