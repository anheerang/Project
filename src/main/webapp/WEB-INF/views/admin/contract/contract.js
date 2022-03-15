/**
 * 
 */

function go_contract_save(){
	
	if($("#pname").val()==""){
		alert("상품명을 입력하세요");
		$("#pname").focus();
		return false;
	}else if($("#mname").val()==""){
		alert("고객명을 입력하세요");
		$("#mname").focus();
		return false;
	}else if($("#price").val()==""){
		alert("가격을 입력하세요");
		$("#price").focus();
		return false;
	}else if($("#ctdate").val()==""){
		alert("거래일을 입력하세요");
		$("#ctdate").focus();
		return false;
	}else{
		$("#contract_write_form").attr("action","admin_contract_insert").submit();
	}
}




