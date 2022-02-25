/**
 * 
 */

// 약관동의확인
function go_next(){
	if($(".agree")[0].checked==true){
		$("#join").attr('action','join_form').submit();
	}else if($(".agree")[1].checked == true){
		alert("약관에 동의해 주세요!");
	}
}

// 회원가입 아이디중복확인
function idcheck(){
	if($("#id").val()==""){
		alert("아이디를 입력해 주세요!");
		$("#id").focus();
		return false ;
	}
	
	var url = "id_check_form?id="+$("#id").val();
	window.open(url,"_black_","toolbar=no,menubar=no,scrollbars=no," +
			"resizable=yes,width=350,height=200");
}


// 아이디사용
function idok(){
	$("#theform").attr("action","id_check_confirmed").submit();
}

// 회원가입내용저장
function go_save(){
	if($("#id").val()==""){
		alert("아이디를 입력하세요.");
		$("#id").focus();
		return false;
	}else if ($("#reid").val() != $("#id").val()){
		alert("아이디 중복체크를 해주세요.");
		$("#id").focus();
		return false;
	}else if($("#pwd").val()==""){
		alert("비밀번호를 입력하세요.");
		$("#pwd").focus();
		return false;
	}else if ($("#pwdCheck").val() != $("#pwd").val()){
		alert("입력하신 비밀번호가 다릅니다.다시 확인해주세요!");
		$("#pwdCheck").focus();
		return false;
	}else if($("#name").val()==""){
		alert("이름을 입력하세요.");
		$("#name").focus();
		return false;
	}else if($("#email").val()==""){
		alert("이메일을 입력하세요.");
		$("#email").focus();
		return false;
	}else if($("#phone").val()==""){
		alert("전화번호를 입력하세요.");
		$("#phone").focus();
		return false;
	}else{
		$("#join").attr("action","join").submit();
		
	}
}

// 주소찾기
function post_zip(){
	var url = "find_zip_num";
	window.open(url,"_black_","toolbar=no,menubar=no,scrollbars=no," +
	"resizable=yes,width=500,height=350");
	
}




