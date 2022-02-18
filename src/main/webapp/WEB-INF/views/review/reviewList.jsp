<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>

<div id="review_img">
	<img src="images/review.png">
</div>
<div class="clear"></div>

<div id="qnaList">
    <h2 style="font-size:30px;color:rgb(32, 100, 54);">Review게시판</h2>
    <h3 style="color:rgb(32, 100, 54);">MYHOME과 계약완료된 고객님만 작성가능합니다.</h3>
    <form name="formm" method="post">
        <input type="button" value="글작성하기" class="write" onclick="location.href='review_write_form'">
        <table>
            <tr>
                <th>번호</th><th>제목</th><th>작성자ID</th><th>등록일</th>
            </tr>
            <c:forEach items="${reviewList}" var="reviewVO">
                <tr>
                    <td>${reviewVO.vseq}</td>
                    <td><a href="review_view?vseq=${reviewVO.vseq}">${reviewVO.subject}</a></td>
                    <td>${reviewVO.id}</td>
                    <td><fmt:formatDate value="${qnaVO.indate}" type="date"/>2022.02.18</td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>

<%@ include file="../footer.jsp" %>