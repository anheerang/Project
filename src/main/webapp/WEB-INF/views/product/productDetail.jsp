<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../header.jsp" %>
<style>
table {
min-height:400px;
}
table tr{
height:70px;
}
table td{
width:600px;
border-bottom:none;
}
#itemdetail .btn{
    margin-left:750px;
    border-radius: 40px;
    background: transparent;
    border: none;
    width: 128px;
    height: 30px;
    border: 1px solid transparent;
    background: rgba(250, 184, 60, 0.445);
    padding-left: 20px;
    padding-right: 20px;
    font-size:16px;
    color:#cb5e65;
}

#itemdetail .btn:hover , #itemdetail .btn:focus{
    background: rgb(236, 157, 163);
    color:rgb(57, 40, 42);
    outline:none;
    box-shadow: none;
}
</style>

<article>
	<div id="itemdetail">
	  <form method="post" name="formm" id="theform">
	  	<fieldset>
	  	  <legend style="border:none; margin-bottom:20px;">집 상세 정보</legend>
	  	  	<input type="button" class="btn" onclick="location.href='insert_like?pseq=${productVO.pseq}'" style="width:150px;margin-right:200px;" value="선호매물등록"><br>
		  	  <input type="hidden" name=pseq value="${productVO.pseq}">
		  	  <span>
	  	  	  <a href="product_detail?pseq=${productVO.pseq}"> 
		  	  <img src="product_images/${productVO.image1}"/>
		  	  <img src="product_images/${productVO.image2}"/>
		  	  <img src="product_images/${productVO.image3}"/>
			  </a>
		  	  </span>
		<div class="card shadow mb-4" style="width: 800px; text-align: center; margin-left:100px;">

		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="font-size:20px;">
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
		  	  <div id="rsv">
		  	  	<input type="hidden" name="pseq" value="${productVO.pseq}">
		  	  	<div id="rsvday" style="vertical-align:top;">
                    <h3 style="font-weight:400;">예약날짜</h3>
		  	  	    <input type="date" name="rvdate" id="rvdate" required pattern="\d{4}-\d{2}-\d{2}" style="height:30px;">
                </div>
                <c:set var="rvtime" value="${rvtimes}"/>
                <div id="rsvtimes">
                    <label for="rvtime">예약시간</label><br><br>
                      <label ${fn:contains(rvtime,'${rsvVO.rvdate} 10:00')==true? 'disabled':''}>
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
                    <p style="text-align: center; font-size:20px; margin-top:30px;">예약취소는 1일전까지 가능하며, No-Show시 패널티가 부과됩니다.</p>
		  	  </div>
		  
	  	</fieldset>
        <div class="clear"></div>

        <div id="buttons" style="margin-top:20px;">
            <input type="button" value="예약하기" onclick="go_rsv()">
            <input type="button" value="목록" onclick="location.href='product_list'">
        </div>
       
	  </form>
	</div>
</article>

=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../header.jsp" %>
<style>
table {
min-height:400px;
}
table tr{
height:70px;
}
table td{
width:600px;
border-bottom:none;
}
#itemdetail .btn{
    margin-left:750px;
    border-radius: 40px;
    background: transparent;
    border: none;
    width: 128px;
    height: 30px;
    border: 1px solid transparent;
    background: rgba(250, 184, 60, 0.445);
    padding-left: 20px;
    padding-right: 20px;
    font-size:16px;
    color:#cb5e65;
}

#itemdetail .btn:hover , #itemdetail .btn:focus{
    background: rgb(236, 157, 163);
    color:rgb(57, 40, 42);
    outline:none;
    box-shadow: none;
}
</style>
<article>
	<div id="itemdetail">
	  <form method="post" name="formm" id="theform">
	  	<fieldset>
	  	  <legend style="border:none;">집 상세 정보</legend>
	  	  	<input type="button" class="btn" onclick="location.href='insert_like'" style="width:150px;margin-right:200px;" value="선호매물등록"><br>
		  	  <input type="hidden" name=pseq value="${productVO.pseq}">
		  	  <span>
	  	  	  <a href="product_detail?pseq=${productVO.pseq}"> 
		  	  <img src="product_images/${productVO.image1}"/>
		  	  <img src="product_images/${productVO.image2}"/>
		  	  <img src="product_images/${productVO.image3}"/>
			  </a>
		  	  </span>
		  	  <div id="contents">
		  	  	<table style="display:inline-block;">
		  	  		<tr>
		  	    	  <th> 이 름 : </th>
		  	    	  <td>${productVO.name}</td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <th> 가 격 : </th>
		  	    	  <td>${productVO.price}</td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <th> 면 적 : </th>
		  	    	  <td>${productVO.area}평</td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <th> 내 용 : </th>
		  	    	  <td>&nbsp;${productVO.content}</td>
		  	  		</tr>
		  	  		<tr>
		  	    	  <th> 주 소 : </th>
		  	    	  <td>${productVO.address}</td>
		  	  		</tr>
		  	  	</table>
		  	  	
		  	  </div>

		  	  <div id="rsv">
		  	  	<input type="hidden" name="pseq" value="${productVO.pseq}">
		  	  	<div id="rsvday">
                    <h3 style="font-weight:400;">예약날짜</h3>
		  	  	    <input type="date" name="rvdate" id="rvdate" required pattern="\d{4}-\d{2}-\d{2}" style="height:30px;">
                </div>
                <c:set var="rvtime" value="${rvtimes}"/>
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
                    <p style="text-align: center; font-size:20px;">예약취소는 1일전까지 가능하며, No-Show시 패널티가 부과됩니다.</p>
		  	  </div>
	  	</fieldset>
        <div class="clear"></div>

        <div id="buttons" style="margin-top:20px;">
            <input type="button" value="예약하기" onclick="go_rsv()">
            <input type="button" value="목록" onclick="location.href='product_list'">
        </div>
	  </form>
	</div>

</article>

>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
<%@ include file="../footer.jsp" %>  