/**
 * 
 */
function go_rsv(){
	
	var today = new Date().toISOString().substring(0,10);
	
	if($("#rvdate").val()==""){
		alert("날짜를 선택해주세요!");
	}else if($("#rvdate").val()<today){
		alert("오늘 이전날짜를 선택하였습니다. 다시선택해주세요!");
	}else if($("#rvdate").val()==today){
		alert("당일예약은 불가능합니다.");
	}else if($("input[name='rvtime']:checked").val()==null){
		alert("시간을 선택해주세요!");
	}else{
		$("#theform").attr("action","rsv_confirmed").submit();
	}
}




