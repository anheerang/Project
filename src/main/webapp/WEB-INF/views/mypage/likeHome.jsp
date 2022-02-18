<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="../header.jsp" %>
<%@ include file="sub_menu.jsp" %>

<article>
    <h2 style="font-size:30px;margin-left:120px;"> 선호매물 목록 </h2>
    
        <div id="contentList">
            <table>
                <tr>
                    <th>번호</th><th></th><th>이름</th><th>삭제</th>
                </tr>
                
                <c:forEach items="${likeList}" var="likeVO">
                <tr>
                    <td>${likeVO.lseq}</td>
                    <td><img src="prodcut_images/${productVO.image1}"/></td>
                    <td><a href="product_detail?pseq=${productVO.pseq}">${likeVO.pname}</a></td>
                    <td><a href="#" onclick="go_like_delete()">삭제</a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
 </article>


<%@ include file="../footer.jsp" %>