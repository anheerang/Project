<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
.btn1{
	border-radius:10px;
    background: transparent;
    border: none;
    width:50px;
    height:30px;
    border: 1px solid transparent;
    background: rgba(129, 206, 117, 0.79);
    color:black;
}

.btn1:hover,.btn1:focus{
    background: rgb(44,150,72,0.445);
    outline:none;
    box-shadow: none;
    color:rgb(232, 238, 197) !important;
}
th{
	width:130px;
}
</style>
<script type=text/javascript>
	function go_list(){
		var theForm = document.frm;
		theForm.action="admin_qna_list";
		theForm.submit();
	}

	function go_rep(qseq){
		var theForm = document.frm;
		theForm.action="admin_qna_repsave";
		theForm.submit();
	}
	
	function go_update_rep(qseq){
		var theForm = document.frm;
		theForm.action="admin_qna_update_repsave";
		theForm.submit();
	}
</script>
<div class="card shadow mb-4" style="width: 800px; text-align: center; margin:70px 0 0 300px;">
    <form name="frm" method="post">
    <input type="hidden" name="qseq" value="${qnaVO.qseq}">
    		<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary" style="font-size:30px;">1:1 문의내용</h6>
			</div>

		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		            <tr>
		                <th>제목</th>
		                <td>${qnaVO.subject}</td>
		            </tr>
		            <tr>
		                <th>작성자ID</th>
		                <td>${qnaVO.id}</td>
		            </tr>
		            <tr>
		                <th>등록일</th>
		                <td><fmt:formatDate value="${qnaVO.indate}"/></td>
		            </tr>
		            <tr>
		                <th>내용</th>
		                <td>${qnaVO.content}</td>
		            </tr>
                    <tr>
                        <th>답변</th>
                        <td style="padding-left:20px;"><textarea name="reply" rows="3" cols="50">${qnaVO.reply}</textarea>
                    	</td>
                    </tr>
			     </table> 
			</div>
		</div>
	</form>
</div>

        <div class="clear"></div>
        
        <div>
        	<input type="button" class="btn"  value="수정" onclick="go_update_rep('${qnaVO.qseq}')">
        	<input type="button" class="btn" value="목록" onclick="go_list()" >
		</div>
<%@ include file="../footer.jsp"%>