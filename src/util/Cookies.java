package util;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {

	private Map<String,Cookie> cookieMap=new HashMap<>();
	
	public Cookies(HttpServletRequest request) {
		Cookie[] cookies=request.getCookies();//쿠키목록 배열을 구함
		if(cookies != null) {
			for(int i=0;i<cookies.length;i++) {
				cookieMap.put(cookies[i].getName(),cookies[i]);//쿠키이름과 객체를 값으로
				//쌍으로 저장
			}
		}
	}//생성자오버로딩
	
	public Cookie getCookie(String name) {
		return cookieMap.get(name);
	}//쿠키이름에 대한 값 쿠키 객체를 반환
	
	public String getValue(String name) throws IOException{
		Cookie cookie=cookieMap.get(name);
		if(cookie == null) {
			return null;
		}
		return URLDecoder.decode(cookie.getValue(),"utf-8");
	}//쿠키이름에 대한 값 반환
	
	public boolean exists(String name) {
		return cookieMap.get(name) != null;
	}//쿠키이름에 대한 쿠키가 존재하면 참,없어면 false
	
	public static Cookie createCookie(String name,String value) throws IOException{
		return new Cookie(name,URLEncoder.encode(value,"UTF-8"));
	}//쿠키이름,값을 쿠키 객체 생성
	
	public static Cookie createCookie(String name,String value,String path,
			int maxAge) throws IOException{
		Cookie cookie=new Cookie(name,URLEncoder.encode(value,"utf-8"));
		cookie.setPath(path);//쿠키경로 저장
		cookie.setMaxAge(maxAge);//쿠키유효시간
		return cookie;
	}//쿠키이름,값,경로,유효기간을 가진 쿠키객체 생성=>매개변수 개수가 다른 메서드 오버로딩
	
	public static Cookie createCookie(String name,String value,String domain,
			String path,int maxAge) throws IOException{
        Cookie cookie=new Cookie(name,URLEncoder.encode(value,"utf-8"));
        cookie.setDomain(domain);
        cookie.setPath(path);
        cookie.setMaxAge(maxAge);
        return cookie;
	}//쿠키이름,값,도메인,경로,유효기간을 가진 쿠키객체 생성
}














