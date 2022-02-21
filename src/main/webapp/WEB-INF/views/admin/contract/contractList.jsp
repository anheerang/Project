<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
function go_contract_wrt(){
	var theForm = document.frm;
	theForm.action = "admin_contract_detail";
	theForm.submit();
}
</script>
<article>
    <h1>거래내역리스트</h1>
    <form name="frm" method="post">
        <table style="float:right;margin-right:180px;">
            <tr>
                <td>
                    <input type="button" class="btn" value="거래내역등록" onclick="go_contract_wrt()">
                </td>
            </tr>
        </table>

        <div class="clear"></div>

        <table id="memberList">
            <tr style="background-color: #b6debde3;">
                <th>번호</th><th>상품명</th><th>계약자이름(ID)</th><th>계약가격</th><th>거래일</th>
            </tr>
            <c:forEach items="${contractList}" var="contractVO">
                <tr style="background-color:rgb(213, 238, 198);height:40px;">
                    <td>${contractVO.cseq}</td>
                    <td>${contractVO.pname}</td>
                    <td>${contractVO.mname}(${contractVO.id})</td>
                    <td>${contractVO.price}</td>
                    <td>${contractVO.ctdate}</td>
                </tr>
            </c:forEach>
        </table>
    </form>
</article>

<%@ include file="../footer.jsp"%>