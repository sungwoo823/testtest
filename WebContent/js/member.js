/**
 * member.js
 */

function check(){
	if($.trim($('#b_name').val())==''){
		alert('글쓴이를 입력하세요!');
		$('#b_name').val('').focus();
		return false;
	}
	
	if($.trim($('#b_title').val())==''){
		alert('제목을 입력하세요!');
		$('#b_title').val('').focus();
		return false;
	}
	
	if($.trim($('#b_pwd').val())==''){
		alert('비번을 입력하세요!');
		$('#b_pwd').val('').focus();
		return false;
	}
	
	if($.trim($('#b_cont').val())==''){
		alert('내용을 입력하세요!');
		$('#b_cont').val('').focus();
		return false;
	}
}


