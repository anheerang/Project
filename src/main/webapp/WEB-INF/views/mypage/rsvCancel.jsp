<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 취소</title>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script src="mypage/mypage.js" type="text/javascript"></script>
<script>
	function recancel(){
		self.close();
	}
	
	function cancelok(rseq){

		window.opener.location="delete_rsv?rseq="+rseq;
		
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
		<form method="post" name="formm" id="formm" >
			<input type="hidden" value="${rsvVO.id}">
			<input type="hidden" id="rseq" name="rseq" value="${rsvVO.rseq}">
			<h3>${rsvVO.pname}<br>
				<c:set var="rsvdate" value="${rsvVO.rvdate}"/>
				<input type="hidden" id="rvdate" value="${rsvVO.rvdate}">
                 ${fn:substring(rsvdate,0,10)} ${rsvVO.rvtime}</h3>
			<h3>예약을 정말 취소하시겠습니까?</h3>
			<input type="button" value="확인" onclick="cancelok('${rsvVO.rseq}')">
			<input type="button" value="취소" class="cancel" onclick="recancel()">
		</form>
	</div>
</body>
</html>