<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
	function go_search(name){
		document.frm.action="admin_product_list";
		document.frm.submit();
	}
	
	function go_total(){
		document.frm.action="admin_product_list";
		document.frm.submit();
	}
</script>
<article>
        <h1 style="font-size:30px;color:rgb(90,196,74);margin-top:50px;">상품리스트</h1>
        <form name="frm" id="prod_form" method="post">
            <table style="display:inline-block;">
                <tr>
                    <td>
                      	 상품명
                        <input type="text" name="key" id="key">
                        <input class="btn" type="button" style="margin-bottom:30px;" name="btn_search" value="검색" onclick="go_search(this.key)">
                        <input class="btn" type="button" style="margin-bottom:30px;" name="btn_total" value="전체보기" onclick="go_total()">
                        <input class="btn" type="button" style="margin-bottom:30px;" name="btn_write" value="상품등록" onclick="go_wrt()">
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
                                <a href="admin_product_detail?pseq=${productVO.pseq}">
                                ${productVO.name}
                                </a>
                            </td>
                            <td><fmt:formatDate value="${productVO.regdate}" /></td>
                            
                            <c:choose>
                            	<c:when test="${productVO.contractResult=='1'}">
                            		<td>계약미완료</td>
                            	</c:when>
                            	<c:otherwise>
                            		<td>계약완료</td>
                            	</c:otherwise>
                            </c:choose>
                        </tr>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
            </table>
        </form>

<%@ include file="../page_area.jsp" %>
</article>
<%@ include file="../footer.jsp" %>