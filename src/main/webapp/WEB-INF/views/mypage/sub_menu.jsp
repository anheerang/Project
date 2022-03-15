<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%> 
 
<meta charset="UTF-8"> 
<style>
#sub_menu{
    float:left;
    width:250px;
    margin:20px 0 0 40px;
}

#sub_menu ul{
    list-style: none;
}

#sub_menu li{
    padding:10px;
}

#sub_menu a {
    text-decoration: none;
    text-align: center;
    display: block;
    padding:20px;
    border-radius: 30px;
    background: transparent;
    border: none;
    width: 130px;
    height: 80px;
    border: 1px solid transparent;
    background: rgba(182, 235, 86, 0.445);
    font-size:20px;
    color:#0e411d;
}

#sub_menu a:hover,#sub_menu a:focus{
    background: rgb(44,150,72,0.445);
    outline:none;
    box-shadow: none;
    color:rgb(232, 238, 197) !important;
}
</style>
	<nav id="sub_menu">
	   <ul>
	     <li><a href="rsv_list">예약목록</a></li>
	     <li><a href="like_list">선호매물 목록</a>
	   </ul>
	</nav>