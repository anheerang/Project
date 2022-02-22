<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %>
<article>
	<div id="category">
		<ul>
			<li>
				거주타입 : &nbsp;&nbsp;
			</li>
			<li>
				<label for="buy" style="cursor:pointer;"><input type="checkbox" name="buyKind" id="buy" value="buy"/>매매</label>
			</li>
			<li>
				<label for="buyYear"><input type="checkbox" name="buyKind" id="buyYear"value="buyYear"/>전세</label>
			</li>
			<li>
				<label for="buyMonth"><input type="checkbox" name="buyKind" id="buyMonth" value="buyMonth"/>월세</label>
			</li>
		</ul>
		<ul>
			<li>
				건물타입 : &nbsp;&nbsp;
			</li>
			<li>
				<label for="apt"><input type="checkbox" name="homeKind" id="apt" value="apt">아파트</label>
			</li>
			<li>
				<label for="op"><input type="checkbox" name="homeKind" id="op" value="op">오피스텔</label>
			</li>
			<li>
				<label for="billa"><input type="checkbox" name="homeKind" id="billa" value="billa">빌라</label>
			</li>
		</ul>
		<ul>
			<li>
				방 갯수 : &nbsp;&nbsp;
			</li>
			<li>
				<label for="one"><input type="checkbox" name="roomKind" id="one" value="one">원룸</label>
			</li>
			<li>
				<label for="two"><input type="checkbox" name="roomKind" id="two" value="two">투룸</label>
			</li>
			<li>
				<label for="threemore"><input type="checkbox" name="roomKind" id="threemore" value="threemore">쓰리룸이상</label>
			</li>
		</ul>
	</div>
    <div class="clear"></div>

    <h2>MY HOME</h2>
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