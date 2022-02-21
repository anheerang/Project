<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<article>
    <h1>거래내역등록</h1>
    <form name="frm" id="contract_write_form" method="post">
        <table id="ctdList" style="display:inline-block;">
            <tr>
            <th >상품명</th>
            <td>
                <input type="text" name="product_name">
                <input class="btn" type="button" value="찾기" onclick="product_name_search()">
            </td>
            </tr>
            <tr>
                <th>계약자이름</th>
                <td>
                    <input type="text" name="member_name">
                    <input class="btn" type="button" value="찾기" onclick="member_name_search()">
                </td>
            </tr>
            <tr>
                <th>가격</th>
                <td >
                    <input type="text" name="product_price" style="margin-left:-60px;">
                </td>
            </tr>
            <tr>
                <th>거래일</th>
                <td>
                    <input type="date" name="contract_day" style="margin-left:-60px;">
                </td>
            </tr>
        </table>
        <div class="clear"></div>
        <input class="btn" type="button" value="등록" onclick="go_contract_save()">
    </form>
</article>

<%@ include file="../footer.jsp"%>