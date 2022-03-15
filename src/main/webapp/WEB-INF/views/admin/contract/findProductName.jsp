<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품명검색</title>
<script type="text/javascript">
function result(pname,pseq){
	opener.document.frm.pname.value= pname;
	opener.document.frm.pseq.value=pseq;
	self.close();
}
</script>
</head>
<body>
<div id="popup">
	<h1>상품명 검색</h1>
	<form method="post" name="formm" action="find_product_name">
		상품명 이름: <input type="text" name="product_name">
				 <input type="submit" value="찾기"> 
	</form>
	<table>
		<tr>
			<th>상품번호</th><th>상품명</th>
		</tr>
		<c:forEach items="${productList}" var="productVO">
		<tr>
			<td>
				${productVO.pseq}
			</td>
			<td>
				<a href="#" onclick="return result('${productVO.name}','${productVO.pseq}')">${productVO.name}</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>