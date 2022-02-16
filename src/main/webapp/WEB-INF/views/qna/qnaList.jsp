<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>

<div id="qna_img">
	<img src="images/qna.jpeg">
</div>
<div class="clear"></div>

<div id="qnaList">
    <h2 style="font-size:30px;color:rgb(32, 100, 54);">1:1 고객 게시판</h2>
    <h3 style="color:rgb(32, 100, 54);">질문을 작성해주시면 담당자가 답변을 드립니다.</h3>
    <form name="formm" method="post">
        <input type="button" value="글작성하기" class="submit" onclick="location.href='qna_write_form'">
        <table>
            <tr>
                <th>번호</th><th>제목</th><th>작성자ID</th><th>등록일</th><th>답변여부</th>
            </tr>
            <c:forEach items="${qnaList}" var="qnaVO">
                <tr>
                    <td>${qnaVO.qseq}</td>
                    <td><a href="qna_view?qseq=${qnaVO.qseq}">${qnaVO.subject}</a></td>
                    <td>${qnaVO.id}</td>
                    <td><fmt:formatDate value="${qnaVO.indate}" type="date"/>2022.02.18</td>
                    <td>
                        <c:choose>
                            <c:when test="${qnaVO.rep==1}">미완료</c:when>
                            <c:when test="${qnaVO.rep==2}">답변완료</c:when>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>

<%@ include file="../footer.jsp" %>