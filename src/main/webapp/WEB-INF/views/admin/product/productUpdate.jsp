<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<article>
    <h1>상품수정</h1>
    <form name="frm" id="update_form" method="post" enctype="multipart/form-data">
        <input type="hidden" name="pseq" value="${productVO.pseq}">
        <input type="hidden" name="code">
        <input type="hidden" name="nonmakeImg" value="${productVO.image1}">
        <input type="hidden" name="nonmakeImg" value="${productVO.image2}">
        <input type="hidden" name="nonmakeImg" value="${productVO.image3}">
        <table id="list" style="display:inline-block;">
            <tr style="height:200px;">
                <th>상품이미지</th>
                <td>
                  <img src="product_images/${productVO.image1}" />
                  <img src="product_images/${productVO.image2}"/>
                  <img src="product_images/${productVO.image3}"/>
                  <br>
                  <input multiple="multiple" type="file" name="product_image[]" id="product_image">
                  <input type="hidden" name="image" value="${productVO.image}"><!--여러개가 있어야되는지 확인해봐야됨-->
                </td>
            </tr>
            <tr>
                <th>상품이름</th>
                <td>
                    <input type="text" name="name" id="name" value="${productVO.name}">
                </td>
            </tr>
            <tr>
                <th>가격</th>
                <td>
                    <input type="text" name="price" id="price" value="${productVO.price}">
                </td>
            </tr>
            <tr>
                <th>면적</th>
                <td>
                    <input type="text" name="area" id="area" value="${productVO.area}">
                </td>
            </tr>
            <tr>
                <th>내용</th>
                <td>
                    <input type="text" name="content" id="content" value="${productVO.content}">
                </td>
            </tr>
            <tr>
                <th>주소</th>
                <td>
                    <input type="text" name="address" id="address" value="${productVO.address}">
                </td>
            </tr>
        </table>
        <div class="clear"></div>
        <input class="btn" type="button" value="수정" onclick="go_mod_save('${productVO.pseq}')">
        <input class="btn" type="button" value="취소" onclick="go_mov()">
    </form>
</article>

<%@ include file="../footer.jsp"%>