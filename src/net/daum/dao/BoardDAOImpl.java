package net.daum.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import net.daum.vo.Board3VO;

public class BoardDAOImpl {//jdbc
	
	String driver="oracle.jdbc.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user="week7";
	String pwd="week7";
	
	Connection con=null;//DB연결 con
	PreparedStatement pstmt=null;//쿼리문 수행
	ResultSet rs=null;//검색 결과 레코드를 저장할 rs
	String sql=null;
	
	public BoardDAOImpl() {
		try {
			Class.forName(driver);//jdbc드라이버 클래스 로드
			con=DriverManager.getConnection(url, user, pwd);
		}catch(Exception e) {e.printStackTrace();}
	}//생성자
	
	//게시판 저장
	public int insertBoard(Board3VO b) {
		int re=-1;//저장 실패시 반환값
		
		try {
			sql="insert into tbl_board3 (b_no,b_name,b_title,b_pwd,b_cont,b_date) "
+" values(b_no_seq3.nextval,?,?,?,?,sysdate)";//sysdate오라클 날짜함수로 날짜값 저장
			pstmt=con.prepareStatement(sql);//쿼리문을 미리 컴파일하여 수행객체 pstmt생성
			pstmt.setString(1,b.getB_name());
			pstmt.setString(2,b.getB_title());
			pstmt.setString(3,b.getB_pwd());
			pstmt.setString(4,b.getB_cont());//쿼리문 4번 물음표에 문자열로 내용을 저장
			
			re=pstmt.executeUpdate();//저장쿼리문 수행후 성공한 레코드행의개수를 반환.
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return re;
	}//insertBoard()
	
	//총레코드 개수
	public int getRowCount() {
		int count=0;
		
		try {
			sql="select count(*) from tbl_board3";//count()함수는 레코드 개수를 구함
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);//총게시물수를 저장
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return count;
	}//getRowCount()
	
	//게시판 목록
	public List<Board3VO> getBoardList(){
		List<Board3VO> blist=new ArrayList<>();
		
		try {
			con=DriverManager.getConnection(url, user, pwd);
			sql="select * from tbl_board3 order by b_no desc";//번호를 기준으로 내림차순 정
			//렬
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();//검색 쿼리문 수행해서 결과 레코드를 rs에 저장
			while(rs.next()) {//next()메서드는 다음레코드행이 존재하면 참
				Board3VO b=new Board3VO();
				b.setB_no(rs.getInt("b_no"));
				b.setB_name(rs.getString("b_name"));
				b.setB_title(rs.getString("b_title"));
				b.setB_hit(rs.getInt("b_hit"));
				b.setB_date(rs.getString("b_date"));
				
				blist.add(b);//컬렉션에 추가
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return blist;
	}//getBoardList()
	
	//조회수 증가
	public void updateHit(int no) {
		try {
			sql="update tbl_board3 set b_hit=b_hit+1 where b_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,no);
			pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
	}//updateHit()
	
	//번호에 해당하는 레코드 보기
	public Board3VO getBoardCont(int no) {
		Board3VO b=null;
		
		try {
			con=DriverManager.getConnection(url, user, pwd);
			sql="select * from tbl_board3 where b_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,no);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				b=new Board3VO();
				b.setB_no(rs.getInt("b_no"));
				b.setB_name(rs.getString("b_name"));
				b.setB_title(rs.getString("b_title"));
				b.setB_cont(rs.getString("b_cont"));
				b.setB_pwd(rs.getString("b_pwd"));
				b.setB_hit(rs.getInt("b_hit"));
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return b;
	}//getBoardCont()	
	
	//게시판 수정
	public void editBoard(Board3VO b) {
		try {
			con=DriverManager.getConnection(url, user, pwd);
			sql="update tbl_board3 set b_name=?,b_title=?,b_cont=? "
					+" where b_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,b.getB_name());
			pstmt.setString(2,b.getB_title());
			pstmt.setString(3,b.getB_cont());
			pstmt.setInt(4,b.getB_no());
			
			pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {
          try {
        	  if(pstmt != null) pstmt.close();
        	  if(con != null) con.close();
          }catch(Exception e) {e.printStackTrace();}
		}
	}//editBoard()
	
	//게시판 삭제
	public void delBoard(int no) {
		try {
			con=DriverManager.getConnection(url, user, pwd);
			sql="delete from tbl_board3 where b_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,no);
			pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
	}//delBoard()
}































