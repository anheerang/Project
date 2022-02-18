<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
	function go_search(){
		var theForm = document.frm;
		theForm.action="admin_order_list";
		theForm.submit();
	}
</script>
<article>
    <h1>예약목록</h1>
    <form name="frm" method="post">
        <table style="display:inline-block;">
            <tr>
                <td>예약자이름<input type="text" name="key" id="key">
                <input class="btn" type="button" value="검색" onclick="go_search()">
                </td>
            </tr>
        </table>
        <br>
        <table id="memberList">
            <tr style="background-color: #b6debde3;">
                <th>예약번호</th><th>상품이름</th><th>예약자이름(ID)</th><th>예약시간</th><th>전화번호</th><th>상태</th>
            </tr>
            <c:forEach items="${rsvList}" var="rsvVO">
            <tr style="background-color:rgb(213, 238, 198);height:40px;">
                <td>${rsvVO.rseq}</td>
                <td>${rsvVO.pname}</td>
                <td>${rsvVO.mname}(${rsvVO.id})</td>
                <td>${rsvVO.rvdate}+${rsvVO.rvtime}</td>
                <td>${rsvVO.phone}</td>
                <td>
                    <c:choose>
                    <c:when test='${rsvVO.result=="2"}'>
                        <span style="font-style:italic;color:rgb(119, 118, 118);">진행완료</span>
                    </c:when>
                    <c:otherwise>
                        <td><a href="#" onclick="go_rsv_cancle()">예약취소</a></td>
                    </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            </c:forEach>
        </table>
    </form>
</article>

<%@ include file="../footer.jsp"%>
