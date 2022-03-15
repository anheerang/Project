<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %>

<article>
<div class="card shadow mb-4" style="width:800px; text-align: center;margin-left:330px;">
    <form name="formm" method="post" action="category_list">
   	    <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary" style="font-size:30px;">MY HOME</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <tr>
                            <td style="width:50px;">거주타입</td>
                            <td>
                            	<input type="hidden" value="${productVO.buyKind}">
                            	<label for="buy" style="cursor:pointer;"><input type="checkbox" name="buyKind" id="buy" value="1"/>매매</label>
								<label for="buyYear"><input type="checkbox" name="buyKind" id="buyYear"value="2"/>전세</label>
								<label for="buyMonth"><input type="checkbox" name="buyKind" id="buyMonth" value="3"/>월세</label>
                        	</td>
                        </tr>
                        <tr>
                            <td style="width:50px;">건물타입</td>
                            <td>
                            	<input type="hidden" value="${productVO.homeKind}">
                            	<label for="apt"><input type="checkbox" name="homeKind" id="apt" value="1">아파트</label>
                            	<label for="op"><input type="checkbox" name="homeKind" id="op" value="2">오피스텔</label>
                            	<label for="billa"><input type="checkbox" name="homeKind" id="billa" value="3">빌라</label>
                            </td>
                        </tr>
                        <tr>
                        	<td style="width:50px;">방 갯수</td>
                        	<td>
                        		<input type="hidden" value="${productVO.roomKind}">
                        		<label for="one"><input type="checkbox" name="roomKind" id="one" value="1">원룸</label>
                        		<label for="two"><input type="checkbox" name="roomKind" id="two" value="2">투룸</label>
                        		<label for="threemore"><input type="checkbox" name="roomKind" id="threemore" value="3">쓰리룸이상</label>
                        	</td>
                        </tr>
                </table>
                <!--  <input type="button" value="검색" onclick="go_check()"> -->
                	  <input type="submit" value="검색">
             </div>
		</div>
	</form>
</div>

    <div class="clear"></div>

      <table style="width:1000px;text-align:center; margin-left:250px;">
       <tr>
    	<c:forEach items="${productList}" var="productVO" varStatus="status">
	       <c:if test="${status.index%3==0 }">
	       </tr><tr>
	       </c:if>
	       <td style="border:none;"><div id="item">
	      	<a href="product_detail?pseq=${productVO.pseq}">
	      	  <img src="product_images/${productVO.image1}"/>
	      	  <h3>${productVO.name}</h3>
	      	  <p>${productVO.price}</p>
	      	</a>
	      </div></td>
    	</c:forEach> 
    	</tr>
      </table>
    <div class="clear"></div>
    
</article>

<%@ include file="../footer.jsp" %>  