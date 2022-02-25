<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp"%>

<!--  <div id="review_img">
	<img src="images/review.png">
</div>-->
<div class="clear"></div>

<h2 style="font-size: 30px; color: rgb(32, 100, 54); text-align: center;">Review게시판</h2>
<h3 style="color: rgb(32, 100, 54); text-align: center;">MYHOME과 계약완료된 고객님만 작성가능합니다.</h3>
<input type="button" value="글작성하기" class="write" onclick="go_write()">

<div class="card shadow mb-4" style="width: 1000px; text-align: center; margin-left: 200px;">
	<form name="formm" method="post">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary" style="font-size:30px;">REVIEW</h6>
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
						</tr>
					</thead>
					<c:forEach items="${reviewList}" var="reviewVO" varStatus="status">
						<tbody>
							<tr>
								<td>${reviewVO.vseq}</td>
								<td><a href="review_view?vseq=${reviewVO.vseq}">${reviewVO.subject}</a></td>
								<td>${reviewVO.id}</td>
								<td><fmt:formatDate value="${reviewVO.indate}" type="date"/></td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</form>
</div>
<%@ include file="../footer.jsp"%>