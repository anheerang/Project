<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../header.jsp" %>
<%@ include file="sub_menu.jsp" %>
<style>
table{
	margin-top:50px;
	margin-left:150px;
}
table tr{
	border-top:1px solid green;
}
table td{
	height:150px;
}
</style>
<script type="text/javascript">
function go_rsv_delete(rseq,rvdate){

	var today = new Date();
	var nextDay = new Date(today.setDate(today.getDate()+1)).toISOString().substring(0,10);
	
	var rvday =(""+rvdate).substr(0,10);
	
	if(rvday==nextDay){
		alert("1일전에는 예약취소가 불가능합니다.");
		return false;
	}else{
		var openWin ;
		var url="rsv_delete?rseq="+rseq;
		
		openWin = window.open(url,"_blank_","toolbar=no,menubar=no,scrollbars=no," +
					"resizable=yes,width=350,height=230");
					
	}
}
</script>
<article style="min-height:600px;width:1000px;">
    <h2 style="margin-left:100px;"> 예약 목록 </h2>
    <c:choose>
    <c:when test="${rsvList.size() == 0}">
        <h3 style="color:#0e411d;text-align: center;margin:100px 0 0 150px;">예약목록이 없습니다.</h3>
    </c:when>
    <c:otherwise>
        <div id="rsvList">
              <form method="post" id="theform" name="theform">
            <table>
                <tr>
                    <th>예약번호</th><th></th><th>이름</th><th>예약일</th><th>예약상태</th>
                </tr>
                <c:forEach items="${rsvList}" var="rsvVO">
                <tr>
                    <td>${rsvVO.rseq}
                    	<input type="hidden" id="rseq" value="${rsvVO.rseq}"></td>
                    <td><img src="product_images/${rsvVO.image1}" style="width:100px;height:100px;"/></td>
                    <td><a href="product_detail?pseq=${rsvVO.pseq}">${rsvVO.pname}
                    		<input type="hidden" value="${rsvVO.id}"></a></td>
                    <td><c:set var="rsvdate" value="${rsvVO.rvdate}"/>
                    	<input type="hidden" id="rvdate" value="${rsvVO.rvdate}">
                    	${fn:substring(rsvdate,0,10)}
                    	<br>${rsvVO.rvtime}</td>
                    <c:choose>
                    	<c:when test="${rsvVO.result=='1'}">
                    		<td><a href='#' onclick="go_rsv_delete('${rsvVO.rseq}','${rsvVO.rvdate}')">예약취소</a></td>
                    	</c:when>
                    	<c:otherwise>
                    		<td>진행완료</td>
                    	</c:otherwise>
                    </c:choose>
                </tr>
                </c:forEach>
            </table>
              </form>
        </div>
    </c:otherwise>
    </c:choose>
 </article>

=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="../header.jsp" %>
<%@ include file="sub_menu.jsp" %>
<style>
table{
	margin-top:50px;
	margin-left:150px;
}
table tr{
	border-top:1px solid green;
}
table td{
	height:150px;
}
</style>
<article style="min-height:600px;width:1000px;">
    <h2 style="margin-left:100px;"> 예약 목록 </h2>
    <c:choose>
    <c:when test="${rsvList.size() == 0}">
        <h3 style="color:#0e411d;text-align: center;margin:100px 0 0 300px;">예약목록이 없습니다.</h3>
    </c:when>
    <c:otherwise>
        <div id="rsvList">
            <table>
                <tr>
                    <th>예약번호</th><th></th><th>이름</th><th>예약일</th><th>예약상태</th>
                </tr>
                
                <c:forEach items="${rsvList}" var="rsvVO">
                <tr>
                    <td>${rsvVO.rseq}</td>
                    <td><img src="product_images/${rsvVO.image1}" style="width:100px;height:100px;"/></td>
                    <td><a href="product_detail?pseq=${rsvVO.pseq}">${rsvVO.pname}</a></td>
                    <td> ${rsvVO.rvdate}<br>${rsvVO.rvtime}</td>
                    <c:if test="${rsvVO.result=='1'}">
                    	<td><a href="go_rsv_cancel()">예약취소</a>
                    </c:if>
                    
                    
                </tr>
                </c:forEach>
            </table>
        </div>
    </c:otherwise>
    </c:choose>
 </article>

>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
<%@ include file="../footer.jsp" %>