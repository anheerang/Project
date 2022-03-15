<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
img{
width:250px;
}
</style>
<article>
    <form name="frm" id="detail_form" method="post">
		<div class="card shadow mb-4" style="width: 1000px; text-align: center; margin:50px 0 0 200px;">
    	<div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary">상품상세보기</h4>
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
		                </td>
		            </tr>
		  	  		<tr>
		  	    	  <td style="width:80px;"> 이 름  </td>
		  	    	  <td>${productVO.name}</td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 가 격  </td>
		  	    	  <td>${productVO.price}</td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 면 적  </td>
		  	    	  <td>${productVO.area}평</td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 내 용  </td>
		  	    	  <td>&nbsp;${productVO.content}</td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <td style="width:50px;"> 주 소  </td>
		  	    	  <td>${productVO.address}</td>
		  	  		</tr>
		        </table>
			</div>
		</div>
	</div>

        <div class="clear"></div>
        <input class="btn" type="button" value="수정" onclick="location.href='admin_product_update_form?pseq=${productVO.pseq}'">
        <input class="btn" type="button" value="목록" onclick="go_list('${criteria.pageNum}','${criteria.rowsPerPage}')">
    </form>
</article>

<%@ include file="../footer.jsp"%>
