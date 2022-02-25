<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>

<h2 style="font-size:30px;color:rgb(32, 100, 54);text-align: center;">1:1 고객 게시판</h2>
<h3 style="color:rgb(32, 100, 54); text-align: center;">질문을 작성해주시면 담당자가 답변을 드립니다.</h3>
<input type="button" value="글작성하기" class="write" onclick="location.href='qna_write_form'">
<div class="card shadow mb-4" style="width:1000px; text-align: center;margin-left:200px;">
    <form name="formm" method="post">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Q&amp;A 리스트</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자ID</th>
                            <th>등록일</th>
                            <th>답변여부</th>
                        </tr>
                    </thead>
                    <c:forEach items="${qnaList}" var="qnaVO">
                        <tbody>
                            <tr>
                                <td>${qnaVO.qseq}</td>
                                <td><a href="qna_view?qseq=${qnaVO.qseq}">${qnaVO.subject}</a></td>
                                <td>${qnaVO.id}</td>
                                <td><fmt:formatDate value="${qnaVO.indate}" type="date"/></td>
                                <td>
                                    <c:choose>
                                        <c:when test="${qnaVO.rep==1}">미완료</c:when>
                                        <c:when test="${qnaVO.rep==2}">답변완료</c:when>
                                    </c:choose>
                                </td>
                            </tr>
                        </tbody>
                    </c:forEach>
                </table>
            </form>
        </div>
	</div>
 </div>

<%@ include file="../footer.jsp" %>