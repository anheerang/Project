<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="qna_img">
	<img src="images/qna.jpeg">
</div>
<div class="clear"></div>

<div id="qnaList">
    <h2 style="font-size:30px;color:rgb(32, 100, 54);">1:1 고객 게시판</h2>
    <h3 style="color:rgb(32, 100, 54);">질문을 작성해주시면 담당자가 답변을 드립니다.</h3>
    <form name="formm" method="post" action="qna_write" style="height:500px;">
        <fieldset style="display:inline-block;height:200px;">
            <legend style="margin-left:20px;">문의내용</legend>
            <label>제목</label>
            <input type="text" name="subject"><br>
            <label style="vertical-align:top;">내용</label>
            <textarea rows="8" cols="65" name="content"></textarea><br>
        </fieldset>

    <div class="clear"></div>    
    <div id="qnaButtons">
        <input type="submit" value="등록" class="submit">
        <input type="reset" value="취소" class="cancel">
        <input type="button" value="글목록" class="list" onclick="location.href='qna_list'">
    </div>
    </form>
</div>

<%@ include file="../footer.jsp" %>