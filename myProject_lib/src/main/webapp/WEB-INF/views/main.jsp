<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title> Green Library </title>
    <style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
</style>
	<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Fontawesome CSS -->
	<link href="css/zonebiz/all.css" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="css/zonebiz/style.css" rel="stylesheet">
	<link rel="stylesheet" href="/css/main.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<script src="/js/main.js"></script>
<body class="hero-anime"> 

<div class="wrapper-main">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-light top-nav">
        <div class="container">
            <a class="navbar-brand">
				<img class="greenLogo" src="/images/greenlogo.png" alt="logo" />
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fas fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="main">홈</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="about.html">회원정보</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="services.html">내 서재</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="searchForm">도서검색</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="services.html">도서신청</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="services.html">게시판</a>
					</li>
				</ul>
				<ul>
					<h4>
	                        <span>G</span><span>R</span><span>E</span><span>E</span><span>N</span> <span>L</span><span>I</span><span>B</span><span>R</span><span>A</span><span>R</span><span>Y</span><br>
	                </h4>
	                        <p>그린 도서관을 이용해주셔서 감사합니다.</p> 
	            </ul>
            </div>
        </div>
    </nav>
 
 </div>  
    	<!-- full Title -->
	<div class="full-title">
		<div class="container">
		    <div class="row justify-content-center mt-5 mb-5">
		        <div class="col-md-6">
		        </div>
		    </div>
		</div>
	</div>
	
 <div class="wrapper-container">
  
<div class="container-fluid">
    <div class="row">
        <!-- 사이드바 영역 -->
        <div class="col-lg-3 col-md-4 col-sm-5">
            <div class="sidebar">
                <div class="sidebar-item">
					<!-- 로그인한 경우 -->
					<sec:authorize access="isAuthenticated()">
					    <h4>환영합니다.</h4><br>
					    <h4><sec:authentication property="principal.username" /> 님</h4><br>
					    <form action="/logout" method="post">
					        <button type="submit" class="btn btn-primary">로그아웃</button>
					    </form>
					</sec:authorize>
					
					<!-- 로그인하지 않은 경우 -->
					<sec:authorize access="isAnonymous()">
					    <h4>GUEST</h4>
					    <a href="/login" class="btn btn-primary">로그인</a>
					</sec:authorize>
                </div>
                <div style="border-bottom:1px solid #eaeaea;"></div>

                <!-- 내 서재 칸 -->
                <div class="sidebar-item">
                    <h4>내 서재</h4>
                    <!-- 내 서재 링크 추가 -->
                    <ul>
                        <li><a href="#">도서 대출내역</a></li>
                        <li><a href="#">도서 예약내역</a></li>
                        <li><a href="#">독후감</a></li>
                    </ul>
                </div>
				<div style="border-bottom:1px solid #eaeaea;"></div>
				
                <!-- 공지사항 칸 -->
                <div class="sidebar-item">
                    <h4>공지사항</h4>
                    <!-- 공지사항 목록 추가 -->
                    <ul>
                        <li><a href="#">WELCOME</a></li>
                        <li><a href="#">이용안내</a></li>
                        <li><a href="#">주의사항</a></li>
                    </ul>
                </div>
            </div>
        </div>
        
        <!-- 컨텐츠 영역 -->
        <div class="col-lg-9 col-md-8 col-sm-7">
            <div class="content">
                <div class="section">
                    <div class="col-12">
                        <span><img id="img_main" alt="" src="/images/mainpage.png"></span>
                    </div>  
                </div>  
            </div>
        </div>
    </div>
</div>

</div>

   <!--footer starts from here-->
    <footer class="footer">
        <div class="container bottom_border">
				<div class="col-lg-3 col-md-6 col-sm-6 ">
				</div>
		</div>
        <div class="container">
            <p class="copyright text-center">All Rights Reserved. &copy; 2018 <a href="#">Zonebiz</a> Design By : 
				<a href="https://html.design/">html design</a>
            </p>
        </div>
    </footer>
<div id="mm-blocker" class="mm-slideout"></div>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/script.js"></script>

</body>
</html>
