<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../header.jsp" %>

<article>
	<div id="itemdetail">
	  <form method="post" name="formm" id="theform">
	  	<fieldset>
	  	  <legend>집 상세 정보</legend>
		  	  <span>
		  	  <img src="product_images/${productVO.image1}"/>
		  	  <img src="product_images/${productVO.image2}"/>
		  	  <img src="product_images/${productVO.image3}"/>
		  	  </span>

		  	  <div id="contents">
		  	  	<label> 이 름 : </label>
		  	  	<input type="text" name="pname" id="pname" value="${productVO.name}"><br>
		  	  	<label> 가 격 : </label>
		  	  	<input type="text" name="price" id="price" value="${productVO.price}"><br>
		  	  	<label> 면 적 : </label>
		  	  	<input type="text" name="area" id="area" value="${productVO.area}"><br>
		  	  	<label> 내 용 : </label>
		  	  	<input type="text" name="content" id="content" value="${productVO.content}"><br>
		  	  	<label> 주 소 : </label>
		  	  	<input type="text" name="address" id="address" value="${productVO.address}">
		  	  </div>

		  	  <div id="rsv">
		  	  	<div id="rsvday">
                    <h3 style="font-weight:400;">예약날짜</h3>
		  	  	    <input type="date" name="rsvday">
                </div>
                <c:set var="rvtime" value="${rvtime}"/>
                <div id="rsvtimes">
                    <label for="rvtime">예약시간</label><br><br>
                      <label ${fn:contains(rvtime,'10:00')==true? 'disabled':''}>
                        <input type="radio" name="rvtime" value="10:00">10:00
                      </label>
                      <label ${fn:contains(rvtime,'11:00')==true? 'disabled':''}>
                        <input type="radio" name="rvtime" value="11:00">11:00
                      </label><br><br>
                      <label ${fn:contains(rvtime,'12:00')==true? 'disabled':''}>
                        <input type="radio" name="rvtime" value="12:00">12:00
                      </label>
                      <label ${fn:contains(rvtime,'14:00')==true? 'disabled':''}>
                        <input type="radio" name="rvtime" value="14:00">14:00
                      </label><br><br>
                      <label ${fn:contains(rvtime,'15:00')==true? 'disabled':''}>
                        <input type="radio" name="rvtime" value="15:00">15:00
                      </label>
                      <label ${fn:contains(rvtime,'16:00')==true? 'disabled':''}>
                        <input type="radio" name="rvtime" value="16:00">16:00
                      </label><br><br>
                      <label ${fn:contains(rvtime,'17:00')==true? 'disabled':''}>
                        <input type="radio" name="rvtime" value="17:00">17:00
                      </label><br>
                </div>
                    <p style="text-align: center;">예약취소는 1일전까지 가능하며, No-Show시 패널티가 부과됩니다.</p>
		  	  </div>
	  	</fieldset>
        <div class="clear"></div>

        <div id="buttons">
            <input type="submit" value="예약하기" onclick="go_rsv()">
            <input type="button" value="목록" onclick="location.href='productKind'">
        </div>
	  </form>
	</div>

</article>

<%@ include file="../footer.jsp" %>  