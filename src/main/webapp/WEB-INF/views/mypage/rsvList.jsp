<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="../header.jsp" %>
<%@ include file="sub_menu.jsp" %>
<style>
table{
	margin-top:50px;
	margin-left:150px;
}
table tr{
	border-top:1px solid green;
}
table td{
	height:150px;
}
</style>
<article style="min-height:600px;width:1000px;">
    <h2 style="margin-left:100px;"> 예약 목록 </h2>
    <c:choose>
    <c:when test="${rsvList.size() == 0}">
        <h3 style="color:#0e411d;text-align: center;margin:100px 0 0 300px;">예약목록이 없습니다.</h3>
    </c:when>
    <c:otherwise>
        <div id="rsvList">
            <table>
                <tr>
                    <th>예약번호</th><th></th><th>이름</th><th>예약일</th><th>예약상태</th>
                </tr>
                
                <c:forEach items="${rsvList}" var="rsvVO">
                <tr>
                    <td>${rsvVO.rseq}</td>
                    <td><img src="product_images/${rsvVO.image1}" style="width:100px;height:100px;"/></td>
                    <td><a href="product_detail?pseq=${rsvVO.pseq}">${rsvVO.pname}</a></td>
                    <td> ${rsvVO.rvdate}<br>${rsvVO.rvtime}</td>
                    <c:if test="${rsvVO.result=='1'}">
                    	<td><a href="go_rsv_cancel()">예약취소</a>
                    </c:if>
                    
                    
                </tr>
                </c:forEach>
            </table>
        </div>
    </c:otherwise>
    </c:choose>
 </article>

<%@ include file="../footer.jsp" %>