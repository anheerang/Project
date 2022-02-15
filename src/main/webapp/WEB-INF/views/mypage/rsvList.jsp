<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %>

 <article>
    <h2> 예약 목록 </h2>
    <c:choose>
    <c:when test="${rsvList.size() == 0}">
        <h3 style="color:#0e411d;text-align: center;">예약목록이 없습니다.</h3>
    </c:when>
    <c:otherwise>
        <table id="rsvList">
            <tr>
                <th></th><th>이름</th><th>예약일</th><th>처리상태</th>
            </tr>
            
            <c:forEach items="${rsvList}" var="rsvVO">
            <tr>

            </tr>
            </c:forEach>
        </table>
    </c:otherwise>
    </c:choose>
 </article>






<%@ include file="../footer.jsp" %>