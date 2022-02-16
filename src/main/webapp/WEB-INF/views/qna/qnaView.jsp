<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>

<div id="qnaView">
    <h2 style="font-size:30px;color:rgb(32, 100, 54);">1:1 문의내용</h2>
    <form name="formm" method="post">
        <table>
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
                <td><fmt:formatDate value="${qnaVO.indate}" type="date"/></td>
            </tr>
            <tr>
                <th>질문내용</th>
                <td>${qnaVO.content}</td>
            </tr>
            <tr>
                <th>답변내용</th>
                <td>${qnaVO.reply}</td>
            </tr>
        </table>
        <div class="clear"></div>

        <div id="buttons" style="margin-right:450px;">
            <input type="button" value="목록보기" onclick="location.href='qna_list'">
        </div>
    </form>
</div>

<%@ include file="../footer.jsp" %>