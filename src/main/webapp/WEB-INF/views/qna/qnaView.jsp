<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>


<div class="card shadow mb-4" style="width: 800px; text-align: center; margin:30px 0 0 300px;">
    <form name="formm" method="post">
    		<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary" style="font-size:30px;">1:1 문의내용</h6>
			</div>

		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		            <tr>
		                <td style="width:50px;">제목</td>
		                <td>${qnaVO.subject}</td>
		            </tr>
		            <tr>
		                <td style="width:50px;">작성자ID</td>
		                <td>${qnaVO.id}</td>
		            </tr>
		            <tr>
		                <td style="width:50px;">등록일</td>
		                <td><fmt:formatDate value="${qnaVO.indate}" type="date"/></td>
		            </tr>
		            <tr>
		                <td style="width:50px;">질문내용</td>
		                <td>${qnaVO.content}</td>
		            </tr>
		            <tr>
		                <td style="width:50px;">답변내용</td>
		                <td>${qnaVO.reply}</td>
		            </tr>
		        </table>
			</div>
		</div>
        <div class="clear"></div>

    </form>
</div>
		
        <div id="buttons" style="margin-left:600px;">
            <input type="button" value="목록보기" onclick="location.href='qna_list'">
        </div>

<%@ include file="../footer.jsp" %>