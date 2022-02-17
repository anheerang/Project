<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="review_img">
	<img src="images/review.png">
</div>
<div class="clear"></div>

<div id="reviewWrite">
    <h2 style="font-size:30px;color:rgb(32, 100, 54);">REVIEW</h2>
    <h3 style="color:rgb(32, 100, 54);">MYHOME과의 경험을 알려주세요</h3>
    <form name="formm" method="post" action="review_write">
        <label>매물이름</label>
        <input type="text" id="contractName" name="contractName" value="${contractVO.name}" readonly><br>
        <label>작성자ID</label>
        <input type="text" id="contractId" name="contractId" value="${contractVO.id}" readonly><br>
        <label>제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 목</label>
        <input type="text" name="subject"><br>
        <label>내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 용</label>
        <textarea rows="8" cols="65" name="content"></textarea><br>
       
        <div class="clear"></div> 

        <div id="qnaButtons" style="margin-top:50px;">
            <input type="submit" value="등록" class="submit">
            <input type="reset" value="취소" class="cancel">
            <input type="button" value="글목록" class="list" onclick="location.href='review_list'">
        </div>
    </form>
</div>

<%@ include file="../footer.jsp" %>