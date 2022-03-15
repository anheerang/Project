<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript">
	function go_search(mname){
		document.frm.action="admin_rsv_list";
		document.frm.submit();
	}
	
	function go_rsv_cancel(){
		var url="rsv_cancel";
		window.open(url,"_black_","toolbar=no,menubar=no,scrollbars=no," +
		"resizable=yes,width=350,height=200");
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
	width:100px;
	height:50px;
	border-bottom:1px solid grey;
}
</style>
<article>
    <h1>예약목록</h1>
    <form name="frm" method="post">
        
	    <label>예약자이름: </label>
	    <input type="text" name="key" id="key">
	    <input class="btn" type="button" value="검색" style="margin-bottom:30px;" onclick="go_search(this.key)">

        <div class="clear"></div>
        
        <table id="memberList">
            <tr style="background-color: #b6debde3;">
                <th>예약번호</th><th>상품이름</th><th>예약자이름(ID)</th><th>예약시간</th><th>상태</th>
            </tr>
            <c:forEach items="${rsvList}" var="rsvVO">
            <tr style="background-color:rgb(213, 238, 198);height:40px;">
                <td>${rsvVO.rseq}</td>
                <td style="width:180px;"><a href="admin_product_detail?pseq=${rsvVO.pseq}">${rsvVO.pname}</a></td>
                <td style="width:130px;"><a href="admin_member_list?name=${rsvVO.mname}">${rsvVO.mname}(${rsvVO.id})</a></td>
                <td style="width:180px;">
                	<c:set var="rsvdate" value="${rsvVO.rvdate}"/>
                	${fn:substring(rsvdate,0,10)} ${rsvVO.rvtime}</td>
                <td style="width:50px;">
                    <c:choose>
                    <c:when test='${rsvVO.result=="2"}'>
                        <span style="font-style:italic;color:rgb(119, 118, 118);">진행완료</span>
                    </c:when>
                    <c:otherwise>
                        <!--  <a href="#" onclick="go_rsv_cancel()">예약취소</a>-->
                        예약완료
                    </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            </c:forEach>
        </table>
    </form>
</article>

<%@ include file="../footer.jsp"%>
