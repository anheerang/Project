<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
input{
	border:none;
}
td{
	font-size:18px;
}
</style>
<div id="review_img">
	<img src="images/review.png">
</div>
<div class="clear"></div>

<div class="card shadow mb-4" style="width: 800px;  text-align: center; margin:70px 0 0 350px;">
    <form name="formm" method="post" action="review_insert">
    		<div class="card-header py-3">
				<h3 class="m-0 font-weight-bold text-primary" style="color:rgb(63,99,60);">REVIEW<br>MYHOME과의 경험을 알려주세요</h3>
			</div>

		<div class="card-body" style="font-size:18px;">
			<div class="table-responsive" >
				<table class="table table-bordered" style="color:black;" id="dataTable" width="100%" cellspacing="0">
		            <tr>
		                <th>매물 이름</th>
		                <td >
        				${contractVO.pname}<input type="hidden" name="pseq" value="${contractVO.pseq}"><br>
        				<a href="product_detail?pseq=${contractVO.pseq}"><input type="button" style="font-size:16px;" value="집 상세보기"></a>
       					 </td>
		            </tr>
		            <tr>
		                <th>작성자ID</th>
		                <td>${contractVO.id}
		                	<input type="hidden" name="id" value="${contractVO.id}"></td>
		            </tr>
		            <tr>
		                <th>계약일</th>
		                <td>
		                	<c:set var="ctdate" value="${contractVO.ctdate}"/>
		                	${fn:substring(ctdate,0,10)}</td>
		            </tr>
		            <tr>
		            	<th>제목</th>
		            	<td><input type="text" style="width:500px;" name="subject"></td>
		            </tr>
		            <tr>
		                <th>내용</th>
		                <td><textarea rows="8" cols="65" name="content"></textarea></td>
		            </tr>
			     </table> 
		        
		        <div class="clear"></div> 
		
		        <div id="qnaButtons" style="margin-top:50px;">
		            <input type="submit" value="등록" class="submit">
		            <input type="button" value="글목록" class="list" onclick="location.href='review_list'">
		        </div>
			</div>
		</div>
	</form>
</div>
    
        
       


<%@ include file="../footer.jsp" %>