/**
 * g.js
 */

function check(){
	$g_name=$.trim($('#g_name').val());
	//trim() jQuery함수로 양쪽공백 제거, val()함수로 입력박스값을 가져옴.
	if($g_name.length == 0){
		alert('이름을 입력하세요!');
		$('#g_name').val('').focus();//입력박스를 초기화(val('')),포커스 이동(focus())
		return false;
	}
	
	$g_title=$.trim($('#g_title').val());
	if($g_title == ""){
		alert('제목을 입력하세요!');
		$('#g_title').val("").focus();
		return false;
	}
	
	if($.trim($('#g_cont').val()) == ''){
		alert('내용을 입력하세요!');
		$('#g_cont').val('').focus();
		return false;
	}
}
