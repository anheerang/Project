<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="../header.jsp" %>
<%@ include file="sub_menu.jsp" %>

<article>
    <h2 style="font-size:30px;margin-left:300px;"> 예약 목록 </h2>
    <c:choose>
    <c:when test="${rsvList.size() == 0}">
        <h3 style="color:#0e411d;text-align: center;">예약목록이 없습니다.</h3>
    </c:when>
    <c:otherwise>
        <div id="rsvList">
            <table>
                <tr>
                    <th>예약번호</th><th>이름</th><th>예약일</th><th>처리상태</th><th>예약상세</th>
                </tr>
                
                <c:forEach items="${rsvList}" var="rsvVO">
                <tr>
                    <td>${rsvVO.rseq}</td>
                    <td><a href="product_detail?pseq=${productVO.pseq}">${rsvVO.pname}</a></td>
                    <td><!-- ${rsvVO.rvdate}+${rsvVO.rvtime}-->2022년 2월 18일 2시</td>
                    <td>${rsvVO.result}</td>
                    <td><a href="rsv_detail?rseq=${rsvVO.rseq}">조회</a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </c:otherwise>
    </c:choose>
 </article>

<%@ include file="../footer.jsp" %>