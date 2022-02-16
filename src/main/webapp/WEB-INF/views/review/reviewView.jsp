<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>

<div id="qnaView">
    <h2 style="font-size:30px;color:rgb(32, 100, 54);margin:50px 0 20px 50px;">Review</h2>
    <form name="formm" method="post">
        <table>
            <tr>
                <th>계약매물</th>
                <td>${contractVO.name}</td>
            </tr>
            <tr>
                <th>작성자ID</th>
                <td>${reviewVO.id}</td>
            </tr>
            <tr>
                <th>제목</th>
                <td>${reviewVO.subject}</td>
            </tr>
            <tr>
                <th>내용</th>
                <td>${reviewVO.content}</td>
            </tr>
        </table>
        
        <div class="clear"></div>

        <div id="buttons" style="margin-right:400px;">
            <input type="button" value="목록보기" onclick="location.href='qna_list'">
        </div>
    </form>
</div>
  
<%@ include file="../footer.jsp" %>