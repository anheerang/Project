<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

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
</script>
<article>
    <h1>Q&amp;A 게시글</h1>
    <form name="frm" method="post">
        <input type="hidden" name="qseq" value="${qnaVO.qseq}">
        <table id="list" style="display:inline-block;">
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
        </table>

        <div class="clear"></div>

        <c:choose>
            <c:when test='${qnaVO.rep=="1"}'>
                <table class="reply">
                    <tr>
                        <th>답변 </th>
                        <td style="padding-left:20px;"><textarea name="reply" rows="3" cols="50"></textarea>
                        <input type="button" class="btn1" value="저장" onclick="go_rep('${qnaVO.qseq}')">
                        </td>
                    </tr>
                </table>
                <br>
            </c:when>
            <c:otherwise>
                <table id="reply">
                    <tr>
                        <th>답변</th>
                        <td>${qnaVO.reply}</td>
                    </tr>
                </table>
            </c:otherwise>
        </c:choose>
        <div class="clear"></div>
        <input type="button" class="btn" value="목록" onclick="go_list()" style="margin-top:50px;">
    </form>
</article>

<%@ include file="../footer.jsp"%>