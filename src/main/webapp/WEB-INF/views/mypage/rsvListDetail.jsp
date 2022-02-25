<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="../header.jsp" %>
<%@ include file="sub_menu.jsp" %>
<article>
    <h2 style="font-size:30px;margin-left:300px;"> 예약 상세 목록 </h2>
    
        <div id="rsvList">
            <table>
                <tr>
                    <th>예약번호</th><th></th><th>이름</th><th>예약일</th><th>예약상태</th>
                </tr>
                
                <c:forEach items="${rsvList}" var="rsvVO">
                <tr>
                    <td>${rsvVO.rseq}</td>
                    <td><img src="product_images/${productVO.image1}"/></td>
                    <td><a href="product_detail?pseq=${productVO.pseq}">${rsvVO.pname}</a></td>
                    <td>${rsvVO.rvdate}+${rsvVO.rvtime}</td>
                    <td><a href="#" onclick="go_rsv_cancle()">예약취소</a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
 </article>

<%@ include file="../footer.jsp" %> 