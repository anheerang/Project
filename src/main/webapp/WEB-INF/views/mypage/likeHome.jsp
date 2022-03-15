<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="../header.jsp" %>
<%@ include file="sub_menu.jsp" %>

<article>
    <h2 style="font-size:30px;margin-left:120px;"> 선호매물 목록 </h2>
     <c:choose>
   	 <c:when test="${likeList.size() == 0}">
        <h3 style="color:#0e411d;text-align: center;margin:100px 0 0 150px;">목록이 없습니다.</h3>
     </c:when>
     <c:otherwise>
      <form name="formm" id="theform" method="post">
        <div id="contentList">
            <table>
                <tr>
                    <th>번호</th><th></th><th>이름</th><th>삭제</th>
                </tr>
                
                <c:forEach items="${likeList}" var="likeVO">
                <tr>
                    <td>${likeVO.lseq}</td>
                    <td><img src="product_images/${likeVO.image1}"/></td>
                    <td><a href="product_detail?pseq=${likeVO.pseq}">${likeVO.pname}</a></td>
                    <td><a href="like_delete?lseq=${likeVO.lseq}">삭제</a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
      </form>
      </c:otherwise>
      </c:choose>
 </article>


=======
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
                    <td><img src="prodcut_images/${likeVO.image1}"/></td>
                    <td><a href="product_detail?pseq=${likeVO.pseq}">${likeVO.pname}</a></td>
                    <td><a href="#" onclick="go_like_delete()">삭제</a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
 </article>


>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
<%@ include file="../footer.jsp" %>