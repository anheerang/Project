<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
td{
	width:500px;
}
input{
	width:300px;
	border:none;
}
.btn1{
	border-radius:10px;
    background: transparent;
    border: none;
    width:50px;
    height:30px;
    border: 1px solid transparent;
    background: rgba(129, 206, 117, 0.79);
    color:black;
}

.btn1:hover,.btn1:focus{
    background: rgb(44,150,72,0.445);
    outline:none;
    box-shadow: none;
    color:rgb(232, 238, 197) !important;
}
</style>
<script type="text/javascript">
	function product_name_search(){
		var url = "find_product_name";
		window.open(url,"_black_","toolbar=no,menubar=no,scrollbars=no," +
					"resizable=yes,width=500,height=350");
	}
	
	function member_name_search(){
		var url = "find_member_name";
		window.open(url,"_black_","toolbar=no,menubar=no,scrollbars=no," +
					"resizable=yes,width=500,height=350");
	}
</script>
<article>  
    <form name="frm" id="contract_write_form" method="post">
		<div class="card shadow mb-4" style="width: 1000px; text-align: center; margin:50px 0 0 200px;">
    	<div class="card-header py-3">
            <h2 class="m-0 font-weight-bold text-primary">거래내역등록</h2>
        </div>

		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="font-size:20px;">
		            <tr>
	            		<th>상품명</th>
	           		    <td>
	               		    <input type="text" name="pname" id="pname">
	               		    <input type="hidden" name="pseq">
	               		    <input class="btn1" type="button" value="찾기" onclick="product_name_search()">
	            		</td>
            		</tr>
		  	  		<tr>
                		<th>계약자이름(ID)</th>
                		<td>
                    		<input type="text" name="mname" id="mname">
                    		<input type="hidden" name="id">
                    		<input class="btn1" type="button" value="찾기" onclick="member_name_search()">
                		</td>
            		</tr>
           		    <tr>
                		<th>가격</th>
                		<td>
                    		<input type="text" name="price" id="price">
                		</td>
            	   </tr>
            		<tr>
                		<th>거래일</th>
                	<td>
                   		 <input type="date" name="ctdate" id="ctdate" style="width:200px;">
                	</td>
           		    </tr>
		        </table>
			</div>
		</div>
	</div>

        <div class="clear"></div>
        <input class="btn" type="button" value="등록" onclick="go_contract_save()">
    </form>
</article>


<%@ include file="../footer.jsp"%>