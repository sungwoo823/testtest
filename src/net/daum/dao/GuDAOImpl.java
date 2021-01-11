package net.daum.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.daum.vo.GuVO;

public class GuDAOImpl {//JDBC
	
	Connection con=null;//데이터베이스 연결
	PreparedStatement pstmt=null;//쿼리문 수행
	ResultSet rs=null;//select 문 수행후 결과 레코드를 저장할 rs
	String sql=null;//쿼리문 저장변수
	DataSource ds=null;//커넥션 풀 즉 DBCP 변수

	public GuDAOImpl() {
		try {
			Context ctx=new InitialContext();
			ds=(DataSource)ctx.lookup("java:comp/env/jdbc/xe");//DBCP 커넥션 풀관리
			//ds생성
		}catch(Exception e) {e.printStackTrace();}
	}//기본생성자
	
	//방명록 저장
	public void insertGu(GuVO g) {
		try {
			con=ds.getConnection();//DBCP 커넥션풀(JNDI) 관리 ds로 con생성
			sql="insert into tbl_gu values(no_seq.nextval,?,?,sysdate)";
			pstmt=con.prepareStatement(sql);//쿼리문을 미리 컴파일하여 수행객체 pstmt생성
			pstmt.setString(1, g.getTitle());
			pstmt.setString(2,g.getContent());
			
			pstmt.executeUpdate();//수정 쿼리문 수행
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
	}//insertGu()

	//MVC 방명록 목록
	public List<GuVO> getGuList() {
        List<GuVO> list=new ArrayList<>();
        
        try {
        	con=ds.getConnection();
        	sql="select * from tbl_gu order by no desc";//번호를 기준으로 내림차순 정렬하면
        	//큰번호값이 먼저 정렬
        	pstmt=con.prepareStatement(sql);
        	rs=pstmt.executeQuery();
        	
        	while(rs.next()) {//다음 레코드 행이 존재하면 참
        		GuVO g=new GuVO();
        		g.setNo(rs.getInt("no"));//no컬럼 정수 번호값을 가져와서 setter()메서드에 저장
        		g.setTitle(rs.getString("title"));
        		g.setRegdate(rs.getString("regdate"));
        		
        		list.add(g);//컬렉션에 추가
        	}
        }catch(Exception e) {e.printStackTrace();}
        finally {
        	try {
        		if(rs != null) rs.close();
        		if(pstmt != null) pstmt.close();
        		if(con != null) con.close();
        	}catch(Exception e) {e.printStackTrace();}
        }
		return list;
	}//getGuList()

	//내용보기
	public GuVO getGuCont(int no) {
		GuVO g=null;
		
		try {
			con=ds.getConnection();
			sql="select * from tbl_gu where no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,no);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				g=new GuVO();
				g.setNo(rs.getInt("no"));
				g.setTitle(rs.getString("title"));
				g.setContent(rs.getString("content"));
				g.setRegdate(rs.getString("regdate"));
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return g;
	}//getGuCont()

	//방명록 수정
	public void editGu(GuVO g) {
		try {
			con=ds.getConnection();
			sql="update tbl_gu set title=?,content=? where no=?";
			pstmt=con.prepareStatement(sql);//쿼리문을 미리 컴파일하여 쿼리문 수행객체 pstmt생성
			pstmt.setString(1,g.getTitle());
			pstmt.setString(2,g.getContent());//두번째 물음표에 문자열로 수정할 내용을 저장
			pstmt.setInt(3,g.getNo());
			
			pstmt.executeUpdate();//수정 쿼리문 수행후 성공한 레코드행의개수를 반환
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
	}//editGu()

	//삭제
	public int delGu(int no) {
		int re=-1;//삭제 실패시 반환값
		
		try {
			con=ds.getConnection();
			sql="delete from tbl_gu where no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,no);
			re=pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {
          try {
        	  if(pstmt != null) pstmt.close();
        	  if(con != null) con.close();
          }catch(Exception e) {e.printStackTrace();}
		}
		return re;
	}//delGu()
}
























