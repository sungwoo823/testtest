<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<h3>JSTL functions 태그 라이브러리로 함수 사용 예제</h3>

<c:set var="str1" value="test String" />

str1 출력: ${str1}<hr/>

<c:if test="${fn:contains(str1,'test')}">
<%-- str1변수에 'test'가 포함되어 있다면 true(참) --%>
 test문자열이 포함됨.<hr/>
</c:if>

indexOf(str1,'t') : ${fn:indexOf(str1,'t')}<hr/>
<%-- str1에서 't'문자가 처음으로 나오는 위치번호.첫문자는 0부터 셈 --%>
length(str1) : ${fn:length(str1)}<hr/>
<%-- 문자열 길이 --%>

<c:set var="spStr" value="${fn:split(str1,' ')}" />
<%-- str1 ' '공백 구분자를 기준으로 문자열을 분리해서 배열로 반환한다. --%>
fn:split(str1,' ') : ${spStr[0]}<hr/><%--첫번째 분리된 배열원소값을 반환 --%>

join(spStr,'-') : ${fn:join(spStr,'-')}<hr/>
<%--배열원소값을 -로 연결해서 문자열로 반환 --%>

replace(str1,'test','테스트') : ${fn:replace(str1,'test','테스트')}<hr/>
<%--str1에서 test를 테스트로 변경 --%>

startsWith(str1,'test') : ${fn:startsWith(str1,'test')}<hr/>
<%-- str1변수 값이 test로 시작하면 true --%>

substring(str1,0,3) : ${fn:substring(str1,0,3)}<hr/>
<%-- str1 값에서 0이상 3미만 사이의 문자 반환. 첫문자는 0부터 시작 --%>

substringAfter(str1,' ') : ${fn:substringAfter(str1,' ')}<hr/>
<%-- str1에서 ' ' 공백이후부터 마지막 문자까지 반환 --%>

toLowerCase(str1) : ${fn:toLowerCase(str1)}<hr/>
<%-- 영문소문자로 반환 --%>

toUpperCase(str1) : ${fn:toUpperCase(str1)}<hr/>
<%-- 영문대문자로 반환 --%>




















