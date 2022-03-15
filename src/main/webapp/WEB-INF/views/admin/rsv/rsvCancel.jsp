<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 취소</title>
<script>
	function recancel(){
		self.close();
	}
	
	function cancelok(){
		document.formm.action="rsv_cancel_ok";
		document.formm.submit();
		self.close();
	}
</script>
<style>
#popup{
	text-align:center;
	margin-top:50px;
}
input{
	margin:20px 20px 0 0;
	width:50px;
	height:30px;
	
}
</style>
</head>
<body>
	<div id="popup">
		<form method="post" name="formm" action="rsv_cancel_ok">
			<h2>예약을 정말 취소하시겠습니까?</h2>
			<input type="submit" value="확인" onclick="cancelok()">
			<input type="hidden" value="${rsvVO.rseq}">
			<input type="button" value="취소" class="cancel" onclick="recancel()">
		</form>
	</div>
</body>
</html>