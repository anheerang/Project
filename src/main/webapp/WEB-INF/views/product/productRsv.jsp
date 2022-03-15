<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %>

<h2 class="rsvConfirm">&lt;예약확인&gt;</h2>
<div id="rsvtable">
    <table>
    <tr>
        <th></th><th>예약매물</th><th>예약일</th>
    </tr>
    <tr>
        <td>
            <img src="prodcut_images/${productVO.image1}"/>
        </td>
        <td>
           <a href="product_detail?pseq=${productVO.pseq}">${productVO.name}</a>
        </td>
        <td>
           <!-- ${productVO.rvdate}+${productVO.rvtime}-->2022년 2월 18일 2시
        </td>
    </tr>
    </table>    

    <div class="buttons">
        <input type="button" value="예약목록보기" onclick="go_rsv()">
        <input type="button" value="집보러가기" onclick="location.href='productKind'">
    </div>
</div>

<%@ include file="../footer.jsp" %>  