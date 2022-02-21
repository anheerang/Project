<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Q&amp;A리스트</title >

    <!-- Custom fonts for this template -->
    <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">


    <link rel="stylesheet" href="house.css">
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat&family=Nanum+Gothic&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
</style>
</head>
<body>
<div id="wrap">
<!--header.jsp-->
<!-- 헤더파일 들어가는 곳 시작 -->
		<header>
	
		<nav id="admin_menu">
			<ul>
				<li><a href="admin_login_form" style="font-size:14px;">ADMIN LOGIN</a></li>
			</ul>	
		</nav>
	
		<div class="clear"></div>
	   <!-- 로고 들어가는 곳 시작 -->
	   <div id="logo">
	      <h1 class="main_logo"><a href="index">MY<span>HOME</span></a></h1>
	   </div>
	   <!-- 로고 들어가는 곳 끝 -->
	   <nav id="nav_menu">
	   <ul>
       	<li>
       	    <a href="집매물화면">HOUSE</a>
       	</li> 
       	<li>
       		<a href="마이페이지화면">MY PAGE</a>
       	</li>
       	<li>
       		<a href="후기에관한 화면">REVIEW</a>
       	</li>
       	<li>
       		<a href="qna화면">Q&amp;A</a>
       	</li>
	   	<c:choose>
       	<c:when test="${empty sessionScope.loginUser}">
       	<li>
       		<a href="login_form">LOGIN</a>
       	</li>
       	</c:when>
       	<c:otherwise>
       	<li>
       	 <!-- ${sessionScope.loginUser.name}(${sessionScope.loginUser.id})-->
       	</li>
       	<li>
       		<a href="logout">LOGOUT</a>
		</li>
       	</c:otherwise>
       	</c:choose>
       	</ul>
	   </nav>
	   <div class="clear"></div>
	</header>
<!-- 헤더 파일 들어가는 곳 끝 -->