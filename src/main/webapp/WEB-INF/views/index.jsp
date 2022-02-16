<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 메인 이미지 들어가는 곳 시작 -->

<div class="clear"></div>
<div id="main_img">
	<img src="images/main.jpg">
</div>

<!-- 메인 이미지 들어가는 곳 끝 -->

<div class="clear"></div>

<div id="front">
	<h2>New Home</h2>
	<div id="newProduct">
	  <c:forEach items="${newProductList}" var="productVO">
	    <div id="item">
	      <img src="product_images/${productVO.image1}"/>
	      <h3><a href="product_detail?pseq=${productVO.pseq}">${productVO.name}</a></h3>
	      <p class="org">${productVO.price}</p>
	    </div>
	  </c:forEach>
	</div>
   <div class="clear"></div>
   
     <h2>Best Home</h2>
       <div id="bestProduct">
         <c:forEach items="${bestProductList}" var="productVO">
           <div id="item">
             <img src="product_images/${productVO.image1}"/>
	         <h3><a href="product_detail?pseq=${productVO.pseq}">${productVO.name}</a></h3>
	         <p class="org">${productVO.price}</p>
           </div>
         </c:forEach>
       </div>
       <div class="clear"></div>
</div>

<%@ include file="footer.jsp" %>