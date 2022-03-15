<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>
<style>
th{
	font-size:20px;
}

td{
	font-size:18px;
}
</style>
<div class="card shadow mb-4" style="width: 1000px; text-align: center; margin:50px 0 0 250px;">
    <form name="formm" method="post">
    		<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary" style="font-size:30px;">REVIEW</h6>
			</div>

		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" style="color:black; height:300px;" width="100%" cellspacing="0">
		            <tr>
		                <th style="width:50px;">계약매물</th>
		                <td>${contractVO.pname}
		                	<a href="product_detail?pseq=${contractVO.pseq}"><input type="button" style="font-size:16px;" value="집 상세보기"></a>
		                </td>
		            </tr>
		            <tr>
		                <th style="width:50px;">작성자ID</th>
		                <td>${contractVO.id}</td>
		            </tr>
		            <tr>
		            	<th>계약일</th>
		            	<td><c:set var="ctdate" value="${contractVO.ctdate}"/>
		                	${fn:substring(ctdate,0,10)}</td>
		            </tr>
		            <tr>
		                <th style="width:50px;">제목</th>
		                <td>${reviewVO.subject}</td>
		            </tr>
		            <tr>
		                <th style="width:50px;">내용</th>
		                <td>${reviewVO.content}</td>
		            </tr>
		        </table>
			</div>
		</div>

        <div class="clear"></div>

        <div id="buttons" style="margin:0 50px 40px 40px;">
            <input type="button" value="목록보기" onclick="location.href='review_list'">
        </div>
    </form>
</div>
  
<%@ include file="../footer.jsp" %>