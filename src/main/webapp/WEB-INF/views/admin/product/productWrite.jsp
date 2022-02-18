<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<article>
    <h1>상품등록</h1>
    <form name="frm" id="write_form" method="post" enctype="multipart/form-data">
        <table id="list" style="display:inline-block;">
            <tr>
                <th>상품이미지</th>
                <td>
                    <input multiple="multiple" type="file" name="product_image[]" id="product_image">
                </td>
            </tr>
            <tr>
                <th>상품이름</th>
                <td>
                    <input type="text" name="name" id="name">
                </td>
            </tr>
            <tr>
                <th>가격</th>
                <td>
                    <input type="text" name="price" id="price">
                </td>
            </tr>
            <tr>
                <th>면적</th>
                <td>
                    <input type="text" name="area" id="area">
                </td>
            </tr>
            <tr>
                <th>내용</th>
                <td>
                    <textarea name="content" id="content" rows="8" cols="30"></textarea>
                </td>
            </tr>
            <tr>
                <th>주소</th>
                <td>
                    <input type="text" name="address" id="address">
                </td>
            </tr>
        </table>
        <div class="clear"></div>
        <input class="btn" type="button" value="등록" onclick="go_save()">
        <input class="btn" type="button" value="취소" onclick="go_mov()">
    </form>
</article>

<%@ include file="../footer.jsp"%>