<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYHOME Admin</title>
 		<!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

	    <!-- Custom fonts for this template -->
	    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	    <link
	        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	        rel="stylesheet">
	    <!-- Custom styles for this template -->
	    <link href="css/sb-admin-2.min.css" rel="stylesheet">
	    <!-- Custom styles for this page -->
		<link rel="stylesheet" href="admin/css/admin.css">
	    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	    
		<!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
        <script src="js/scripts.js"></script>
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		<script src="admin/product/product.js"></script>
		<script src="admin/contract/contract.js"></script>
</head>

<body>
    <div id="wrap">
        <header>
            <input class="btn" type="button" value="Logout" style="float:right;font-size:18px;"
            onclick="location.href='admin_logout'">
            <div id="logo">
                <a href="admin_product_list">
                    <img src="admin/images/myhome.png" style="height:200px;">
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