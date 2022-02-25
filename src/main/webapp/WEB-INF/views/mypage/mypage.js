/**
 * 
 */

function go_rsv(){
	if($("#rvdate").val()==""){
		alert("날짜를 선택해주세요!");
	}else if($("input[name='rvtime']:checked").val()==null){
		alert("시간을 선택해주세요!");
	}else{
		$("#theform").attr("action","rsv_confirmed").submit();
	}
}