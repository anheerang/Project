<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYHOME Admin</title>
<link rel="stylesheet" href="admin/css/admin.css">
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat&family=Nanum+Gothic&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
</style>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="admin/product/product.js"></script>
</head>

<body>
    <div id="wrap">
        <header>
            <input class="btn" type="button" value="Logout" style="float:right;font-size:18px;"
            onclick="location.href='admin_logout'">
            <div id="logo">
                <a href="admin_">
                    <img src="images/myhome.png" style="height:200px;">
                </a>
            </div>

        <nav id="sub_menu">
            <ul>
                <li><a href='admin_product_list'>상품리스트</a></li>
                <li><a href='admin_member_list'>회원리스트</a></li>
                <li><a href='admin_rsv_list'>예약리스트</a></li>
                <li><a href='admin_contract_list'>거래내역리스트</a></li>
                <li><a href='admin_qna_list'>Q&amp;A리스트</a></li>
            </ul>
        </nav>
        </header>
        <div class="clear"></div>