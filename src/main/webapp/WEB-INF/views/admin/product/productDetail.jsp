<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<article>
    <h1>상품 상세 보기</h1>
    <form name="frm" id="detail_form" method="post">
        <table id="list" style="display:inline-block;">
            <tr style="height:200px;">
                <th>상품이미지</th>
                <td>
                <img src="product_images/${productVO.image1}" />
                  <img src="product_images/${productVO.image2}"/>
                  <img src="product_images/${productVO.image3}"/>
                </td>
            </tr>
            <tr>
                <th>상품이름</th>
                <td>${productVO.name}</td>
            </tr>
            <tr>
                <th>가격</th>
                <td>${productVO.price}</td>
            </tr>
            <tr>
                <th>면적</th>
                <td >${productVO.area}</td>
            </tr>
            <tr>
                <th>내용</th>
                <td>${productVO.content}</td>
            </tr>
            <tr>
                <th>주소</th>
                <td>${productVO.address}</td>
            </tr>
        </table>

        <div class="clear"></div>
        <input class="btn" type="button" value="수정" onclick="go_mod('${productVO.pseq}')">
        <input class="btn" type="button" value="목록" onclick="go_list('${criteria.pageNum}','${criteria.rowsPerPage}')">
    </form>
</article>

<%@ include file="../footer.jsp"%>
