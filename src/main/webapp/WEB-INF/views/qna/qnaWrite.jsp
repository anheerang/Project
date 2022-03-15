<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<style>

#qnaButtons{
    display: inline-block;
    margin:100px 0 0 70px;
}

#qnaButtons input:hover,#qnaButtons input:focus{
    background: rgba(216, 228, 146, 0.8);
    outline:none;
    box-shadow: none;
    color:rgb(64, 161, 90) !important;
}

#qnaButtons .submit,#qnaButtons .cancel,#qnaButtons .list{
    width:100px;
    margin:10px 5px 0 5px;
}

#qnaList form label{
    width:100px ; 
    left:160px;
    margin:5px 0;
    padding-right: 5px;
    font-size:22px;
    font-weight:500;
}

#qnaList form input{
    position:relative;
    size:50px;
    background: transparent;
    border: none;
    width: 300px;
    height: 30px;
    margin-right:10px;
    color: rgb(76, 110, 65) !important;
    border: 1px solid transparent;
    background: rgba(119, 213, 161, 0.28);
    border-radius: 20px;
    padding-left: 20px;
    padding-right: 20px;
}

#qnaList form textarea{
    position:relative;
    margin:5px 0 ;
    margin-right:5px;
    size:50px;
    background: transparent;
    width:300px;
    height: 100px;
    border: none;
    color: rgb(76, 110, 65) !important;
    border: 1px solid transparent;
    background: rgba(119, 213, 161, 0.28);
    border-radius: 20px;
    padding-left: 20px;
    padding-right: 20px;
}

</style>
<div id="qna_img">
	<img src="images/qna.jpeg">
</div>
<div class="clear"></div>

<div id="qnaList">
    <h2 style="font-size:30px;color:rgb(32, 100, 54);">1:1 고객 게시판</h2>
    <h3 style="color:rgb(32, 100, 54);">질문을 작성해주시면 담당자가 답변을 드립니다.</h3>
    <form name="formm" method="post" action="qna_write" style="height:500px;">
        <fieldset style="display:inline-block;height:200px;">
            <legend style="margin:-100px 0 0 450px;width:200px;display:inline-block;">문의내용</legend>
            <div class="clear"></div>
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