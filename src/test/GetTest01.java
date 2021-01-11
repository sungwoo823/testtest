package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/get01") //브라우저 주소창에서 실행되는 주소값 즉 매핑주소(url-pattern) /get01 등록
public class GetTest01 extends HttpServlet {
/* 서블릿클래스 특징)
 * 	1.서블릿 자바를 만들기 위해서는 HttpServlet으로 부터 상속받는다.(extends)
 *  2.get 으로 접근할 때 호출되는 doGet()메서드를 오버라이딩 한다.
 *  3.HttpServletRequest는 사용자 폼에서 입력한 데이터를 서버로 가져올때 사용한다.
 *  4.HttpServletResponse 서블릿은 서버의 정보를 사용자 웹브라우저에 응답할 때 사용한다.
 */

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		//웹브라우저에 응답하는 문자,태그,언어코딩 타입 설정
		PrintWriter out=response.getWriter();//출력스트림 객체 생성
		
		out.println("get방식 서블릿 실행!");
	}
}
