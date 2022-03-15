<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript">
function go_contract_wrt(){
	var theForm = document.frm;
	theForm.action = "admin_contract_write";
	theForm.submit();
}
</script>
<style>
article{
	color:#0e411d;
}
#memberList{
	text-align:center;
	display:inline-block;
	margin-top:30px;
}
#memberList th,td{
	width:130px;
}
</style>
<article>
    <h1>거래내역리스트</h1>
    <form name="frm" method="post">
        <table style="display:inline-block;">
            <tr>
                <td>
                    <input type="button" class="btn" style="width:150px;" value="거래내역등록" onclick="go_contract_wrt()">
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
                    <td style="width:180px;">${contractVO.pname}</td>
                    <td>${contractVO.mname}(${contractVO.id})</td>
                    <td style="width:180px;">${contractVO.price}</td>
                    <td>
                    	<c:set var="ctdate" value="${contractVO.ctdate}"/>
                    	${fn:substring(ctdate,0,10)}
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
</article>

<%@ include file="../footer.jsp"%>