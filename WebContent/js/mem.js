/**
 * mem.js
 */

function join_check(){
	if($.trim($('#member_id').val()) == ''){
		alert('아이디를 입력하세요!');
		$('#member_id').val('').focus();
		return false;
	}
	
	$member_pwd=$.trim($('#member_pwd').val());
	$pwd_chk=$.trim($('#pwd_chk').val());
	if($member_pwd == ''){
		alert('비밀번호를 입력하세요!');
		$('#member_pwd').val('').focus();
		return false;
	}
	
	if($pwd_chk.length == 0){
		alert('비번확인을 입력하세요!');
		$('#pwd_chk').val('').focus();
		return false;
	}
	
	if($member_pwd != $pwd_chk){
		alert('비번이 다릅니다!');
		$('#member_pwd').val(''); $('#pwd_chk').val('');
		$('#member_pwd').focus();
		return false;
	}
	
	if($.trim($('#member_name').val()) == ''){
        alert('이름을 입력하세요!');
        $('#member_name').val('').focus();	
        return false;	
	}
	
	if($.trim($('#member_phone').val()) == ''){
        alert('폰번호를 입력하세요!');
        $('#member_phone').val('').focus();	
        return false;	
	}
	
	if($.trim($('#member_email').val()) == ''){
        alert('이메일을 입력하세요!');
        $('#member_email').val('').focus();	
        return false;	
	}
}

function edit_check(){
	$member_pwd=$.trim($('#member_pwd').val());
	$pwd_chk=$.trim($('#pwd_chk').val());
	if($member_pwd == ''){
		alert('비밀번호를 입력하세요!');
		$('#member_pwd').val('').focus();
		return false;
	}
	
	if($pwd_chk.length == 0){
		alert('비번확인을 입력하세요!');
		$('#pwd_chk').val('').focus();
		return false;
	}
	
	if($member_pwd != $pwd_chk){
		alert('비번이 다릅니다!');
		$('#member_pwd').val(''); $('#pwd_chk').val('');
		$('#member_pwd').focus();
		return false;
	}
	
	if($.trim($('#member_name').val()) == ''){
        alert('이름을 입력하세요!');
        $('#member_name').val('').focus();	
        return false;	
	}
	
	if($.trim($('#member_phone').val()) == ''){
        alert('폰번호를 입력하세요!');
        $('#member_phone').val('').focus();	
        return false;	
	}
	
	if($.trim($('#member_email').val()) == ''){
        alert('이메일을 입력하세요!');
        $('#member_email').val('').focus();	
        return false;	
	}
}






