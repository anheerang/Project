/**
 * 
 */

/*
 * 상품상세화면보기
 */
function go_list(){
	$("#detail_form").attr("action","admin_product_list").submit();
}

/*
 * 상품수정하기
 */
function go_mod_save(pseq){
	
	if($("#name").val()==""){
		alert("상품의 이름을 입력하세요.");
		$("#name").focus();
		return false;
	}else if($("#price").val()==""){
		alert("가격을 입력하세요.");
		$("#price").focus();
		return false;
	}else if($("#area").val()==""){
		alert("면적을 입력하세요.");
		$("#area").focus();
		return false;
	}else if($("#content").val()==""){
		alert("내용을 입력하세요.");
		$("#content").focus();
		return false;
	}else if($("#address").val()==""){
		alert("주소를 입력하세요.");
		$("#address").focus();
		return false;
	}
	
	$("#update_form").attr("encoding","multipart/form-data");
	$("#update_form").attr("action","admin_update_form?pseq="+pseq).submit();
}

/*
 * 상품등록화면가기
 */
function go_wrt(){
	$("#prod_form").attr("action","admin_product_write").submit();
}

/*
 * 상품등록취소 후 목록가기
 */
function go_mov(){
	$("#write_form").attr("action","admin_product_list").submit();
}

/*
 * 상품등록하기
 */
function go_save(){

	if($("#name").val()==""){
		alert("상품의 이름을 입력하세요.");
		$("#name").focus();
		return false;
	}else if($("input[name='buyKind']:checked").val()==""){
		alert("거주타입을 선택해주세요.");
		return false;	
	}else if($("input[name='homeKind']:checked").val()==""){
		alert("건물타입을 선택해주세요.");	
		return false;
	}else if($("input[name='roomKind']:checked").val()==""){
		alert("방 갯수를 선택해주세요.");
		return false;	
	}else if($("#price").val()==""){
		alert("가격을 입력하세요.");
		$("#price").focus();
		return false;
	}else if($("#area").val()==""){
		alert("면적을 입력하세요.");
		$("#area").focus();
		return false;
	}else if($("#content").val()==""){
		alert("내용을 입력하세요.");
		$("#content").focus();
		return false;
	}else if($("#address").val()==""){
		alert("주소를 입력하세요.");
		$("#address").focus();
		return false;
	}
	
	$("#write_form").attr("action","admin_product_insert").submit();
}

function go_total(){
	$("#key").val("");
	$("#prod_form").attr("action","admin_product_list");
}

