<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
function go_search(name)
  {
     document.frm.action="admin_member_list";
     document.frm.submit();
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
}
</style>

<article>
    <h1>회원리스트</h1>
    <form name="frm" method="post">
                 <label style="font-size:18px;">회원이름 :</label>    
                    <input type="text" name="key" id="key">
                    <input class="btn" type="button"  style="margin-bottom:30px;" value="검색" onclick="go_search(this.key)">
           
        <div class="clear"></div>
        <table id="memberList">
            <tr style="background-color: #b6debde3;">
                <th>아이디</th><th>이름</th><th>이메일</th><th>전화번호</th><th>우편번호</th><th>주소</th><th>가입일</th>
            </tr>
            <c:forEach items="${memberList}" var="memberVO">
                <tr style="background-color:rgb(213, 238, 198);height:40px;">
                    <td>${memberVO.id}</td>
                    <td>${memberVO.name}</td>
                    <td style="width:130px;">${memberVO.email}</td>
                    <td style="width:130px;">${memberVO.phone}</td>
                    <td>${memberVO.zip_num}</td>
                    <td style="width:300px;">${memberVO.address}</td>
                    <td><fmt:formatDate value="${memberVO.regdate}"/></td>
                </tr>
            </c:forEach>
        </table>
    </form>
</article>

<%@ include file="../footer.jsp"%>