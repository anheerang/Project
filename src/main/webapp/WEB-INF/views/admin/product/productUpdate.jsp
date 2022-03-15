<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
img{
width:250px;
}
input{
width:800px;
}
</style>
<article>

    <form name="frm" id="update_form" method="post" enctype="multipart/form-data">
        <input type="hidden" name="pseq" value="${productVO.pseq}">
        <input type="hidden" name="code">
        <input type="hidden" name="nonmakeImg" value="${productVO.image1}">
        <input type="hidden" name="nonmakeImg" value="${productVO.image2}">
        <input type="hidden" name="nonmakeImg" value="${productVO.image3}">
        <div class="card shadow mb-4" style="width: 1000px; text-align: center; margin:50px 0 0 200px;">
    	<div class="card-header py-3">
            <h2 class="m-0 font-weight-bold text-primary">상품수정</h2>
        </div>

		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="font-size:20px;">
		            <tr style="height:200px;">
		                <td>상품이미지</td>
		                <td>
		                  <img src="product_images/${productVO.image1}" />
		                  <img src="product_images/${productVO.image2}"/>
		                  <img src="product_images/${productVO.image3}"/>
		                  <br>
		                  <input type="file" name="product_image[]" multiple="multiple">
		                </td>
		            </tr>
		  	  		<tr>
		  	    	  <td style="width:80px;"> 이 름</td>
		  	    	  <td> <input type="text" name="name" id="name" value="${productVO.name}"></td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 가 격</td>
		  	    	  <td><input type="text" name="price" id="price" value="${productVO.price}"></td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 면 적</td>
		  	    	  <td><input type="number" name="area" id="area" value="${productVO.area}"></td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 내 용</td>
		  	    	  <td><input type="text" name="content" id="content" value="${productVO.content}"></td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 주 소</td>
		  	    	  <td> <input type="text" name="address" id="address" value="${productVO.address}"></td>
		  	  		</tr>
		        </table>
			</div>
		</div>
	</div>
           
        <div class="clear"></div>
        <input class="btn" type="button" value="수정" onclick="go_mod_save('${productVO.pseq}')">
        <input class="btn" type="button" value="취소" onclick="location.href='admin_product_list'">
    </form>
</article>

<%@ include file="../footer.jsp"%>