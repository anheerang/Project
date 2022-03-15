<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계약자 이름 검색</title>
<script type="text/javascript">
function result(name,id){
	opener.document.frm.mname.value=name+"("+id+")";
	opener.document.frm.id.value=id;
	self.close();
}
</script>
</head>
<body>
<div id="popup">
	<h1>계약자이름(ID) 검색</h1>
	<form method="post" name="formm" action="find_member_name">
		계약자이름: <input type="text" name="member_name">
				 <input type="submit" value="찾기"> 
	</form>
	<table>
		<tr>
			<th>이름(ID)</th>
		</tr>
		<c:forEach items="${memberList}" var="memberVO">
		<tr>
			<td>
				<a href="#" onclick="return result('${memberVO.name}','${memberVO.id}')">
					${memberVO.name} &#40;${memberVO.id}&#41;</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>