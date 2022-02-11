<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="login.css">
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
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
       		<a href="부동산에관한 화면">ABOUT</a>
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