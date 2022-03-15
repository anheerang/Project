<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
input{
width:800px;
border:none;
}
</style>
<article>
    <form name="frm" id="write_form" method="post" enctype="multipart/form-data">
    <div class="card shadow mb-4" style="width: 1000px; text-align: center; margin:50px 0 0 200px;">
    	<div class="card-header py-3">
            <h2 class="m-0 font-weight-bold text-primary">상품등록</h2>
        </div>

		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="font-size:20px;">
		            <tr style="height:200px;">
		                <td>상품이미지</td>
		                <td>
		                 	<input type="file" name="product_image[]" multiple="multiple">
		                </td>
		            </tr>
		  	  		<tr>
		  	    	  <td style="width:150px;"> 이 름</td>
		  	    	  <td><input type="text" name="name" id="name"></td>
		  	  		</tr>
		  	  		<tr>
		  	  		  <td style="width:80px;">거주타입</td>
		  	  		  <td>
		  	  		  	<input type="radio" style="width:70px;" name="buyKind" value="1">매매
		  	  		  	<input type="radio" style="width:70px;" name="buyKind" value="2">전세
		  	  		  	<input type="radio" style="width:70px;" name="buyKind" value="3">월세	
		  	  		  </td>	  	  		  		
		  	  		</tr>
		  	  		<tr>
		  	  		  <td style="width:80px;">건물타입</td>
		  	  		  <td>
		  	  		  	<input type="radio" style="width:70px;" name="homeKind" value="1">아파트
		  	  		  	<input type="radio" style="width:70px;" name="homeKind" value="2">오피스텔
		  	  		  	<input type="radio" style="width:70px;" name="homeKind" value="3">빌라	
		  	  		  </td>	  	  		  		
		  	  		</tr>
		  	  		<tr>
		  	  		  <td style="width:80px;">방 갯수</td>
		  	  		  <td>
		  	  		  	<input type="radio" style="width:70px;" name="roomKind" value="1">원룸
		  	  		  	<input type="radio" style="width:70px;" name="roomKind" value="2">투룸
		  	  		  	<input type="radio" style="width:70px;" name="roomKind" value="3">쓰리룸이상	
		  	  		  </td>	  	  		  		
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 가 격</td>
		  	    	  <td><input type="text" name="price" id="price"></td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 면 적</td>
		  	    	  <td><input type="number" name="area" id="area"></td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 내 용</td>
		  	    	  <td><input type="text" name="content" id="content"></td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 주 소</td>
		  	    	  <td> <input type="text" name="address" id="address"></td>
		  	  		</tr>
		        </table>
			</div>
		</div>
	</div>
        
        <div class="clear"></div>
        <input class="btn" type="button" value="등록" onclick="go_save()">
        <input class="btn" type="button" value="취소" onclick="go_mov()">
    </form>
</article>

<%@ include file="../footer.jsp"%>