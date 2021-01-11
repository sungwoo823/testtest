<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../../include/header.jsp" %> 
<%
try{
	  Class.forName(driver);
	  con=DriverManager.getConnection(url, user, pass);
	  stmt=con.createStatement();
	  sql="select * from tbl_member2 where member_id='"+id+"'";//아이디를 기준으로 회원정보
	  //를 디비로 부터 검색하는 쿼리문 저장
	  rs=stmt.executeQuery(sql);
	  
	  if(rs.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제</title>
<script src="../../js/jquery-3.5.1.min.js"></script>
<script>
 function del_check(){
	 if($.trim($('#del_pwd').val())==''){
		 alert('비밀번호를 입력하세요!');
		 $('#del_pwd').val('').focus();
		 return false;
	 }
 }
</script>
<style>
 #delWrap{
   width:340px; height:230px; border:1px solid red; border-radius:15px;
   box-shadow:15px 15px 15px gray; margin-left:auto; margin-right:auto;
   margin-top:50px;
 }
</style>
</head>
<body>
<form method="post" action="member2_del_ok.jsp" onsubmit="return del_check();">
 <input type="hidden" name="id" value="<%=id%>" />
 <table id="delWrap">
  <tr>
   <th colspan="2">회원 삭제</th>   
  </tr>
  <tr>
   <th>아이디</th><td><%=id%></td>
  </tr>
  <tr>
   <th>회원이름</th> <td><%=rs.getString("member_name")%></td>
  </tr>
  <tr>
   <th>비밀번호</th>
   <td><input type="password" name="del_pwd" id="del_pwd" size="14" /></td> 
  </tr>
  <tr>
   <th colspan="2">
   <input type="submit" value="삭제" />
   <input type="reset" value="취소" onclick="$('#del_pwd').focus();" />
   <input type="button" value="회원목록" onclick="location='member2_list.jsp';" />
   </th>
  </tr>
 </table>
</form>
</body>
</html>
<%
}
%>
<%@ include file="../../include/footer.jsp" %> 
