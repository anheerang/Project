<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<article>
        <h1 style="font-size:30px;color:rgb(90,196,74);margin-top:50px;">상품리스트</h1>
        <form name="frm" id="prod_form" method="post">
            <table style="display:inline-block;">
                <tr>
                    <td>
                      	 상품명
                        <input type="text" name="key" id="key">
                        <input class="btn" type="button" name="btn_search" value="검색" onclick="go_search()">
                        <input class="btn" type="button" name="btn_total" value="전체보기" onclick="go_total()">
                        <input class="btn" type="button" name="btn_write" value="상품등록" onclick="go_wrt()">
                    </td>
                </tr>
            </table>

            <table id="productList">
                <tr>
                    <th>번호</th><th>상품이름</th><th>등록일</th><th>거래상태</th>
                </tr>
            <c:choose>
               <c:when test="${productListSize<=0}">
                <tr>
                    <td width="100%" colspan="7" align="center" height="23">
                        등록된 상품이 없습니다.
                    </td>
                </tr>
                </c:when>
                <c:otherwise>
                    <c:forEach items="${productList}" var="productVO">
                        <tr>
                            <td>${productVO.pseq}</td>
                            <td>
                                <a href="#" onclick="go_detail('${productVO.pseq}')">
                                ${productVO.name}
                                </a>
                            </td>
                            <td><fmt:formatDate value="${productVO.regdate}" /></td>
                            <td><a href="#" onclick="go_contract()">거래완료</a></td>
                        </tr>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
            </table>
        </form>

<%@ include file="../page_area.jsp" %>
</article>
<%@ include file="../footer.jsp" %>