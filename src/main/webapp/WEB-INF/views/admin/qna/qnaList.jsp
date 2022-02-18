<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<article>
    <h1>Q&amp;A 게시판 리스트</h1>
    <form name="frm" method="post">
        <input type="hidden" name="qseq">
        <table id="memberList">
            <tr style="background-color: #b6debde3;">
                <th>번호</th><th>제목</th><th>작성자ID</th><th>작성일</th><th>답변여부</th>
            </tr>
            <c:forEach items="${qnaList}" var="qnaVO">
                <tr style="background-color:rgb(213, 238, 198);height:40px;">
                    <td>${qnaVO.qseq}</td>
                    <td><a href="#" onclick="javascript:go_view('${qnaVO.qseq}')">${qnaVO.subject}</a></td>
                    <td>${qnaVO.id}</td>
                    <td><fmt:formatDate value="${qnaVO.indate}"/></td>
                    <td>
                        <c:choose>
                            <c:when test='${qnaVO.rep=="1"}'>답변미완료</c:when>
                            <c:otherwise>답변완료</c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
</article>

<%@ include file="../footer.jsp"%>