<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h3>JSTL fmt 태그 예제 - formatNumber</h3>
number : <fmt:formatNumber value="12345.678" type="number" />
<%-- <fmt:formatNumber>는 숫자형식을 지정. type이 number는 세자리 수 숫자로 표시 --%>
<hr/>

달러 화폐 형식: <fmt:formatNumber value="12345.678" type="currency" 
         currencySymbol="$" /><hr/>
<%-- type이 currency는 통화형식, currencySymbol 속성은 통화 기호를 지정 --%>

사용자 정의 패턴=".000" : <fmt:formatNumber value="12345.5678" pattern=".000" />
<%-- pattern속성값 .000 은 소수점 세째 자리 까지 표현(반올림해서 표현)--%>