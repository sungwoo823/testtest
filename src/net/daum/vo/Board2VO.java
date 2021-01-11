package net.daum.vo;

public class Board2VO {//자바 저장 빈 클래스=>네임피라미터 이름과 변수명을 같게 한다.
	
	private String writer;//작성자
	private String title;//제목
	private String cont;//내용
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}	
}
