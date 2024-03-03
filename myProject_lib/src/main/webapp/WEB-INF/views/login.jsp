<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
<link rel="stylesheet" href="/css/main2.css">
	<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="/css/zonebiz/all.css" rel="stylesheet">
	<link href="/css/zonebiz/style.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
	    .sidebar {
    	float: left;
        background-color: #f8f9fa;
        padding: 20px;
        border-radius: 5px;
	    height: 100vh; /* 높이를 화면 높이의 100%로 지정 */
    }

    .sidebar-item {
        margin-bottom: 20px;
    }

    .sidebar-item h4 {
        font-size: 20px;
        color: #333;
        margin-bottom: 10px;
    }

    .sidebar-item form {
        margin-bottom: 15px;
    }

    .sidebar-item form .form-label {
        color: #555;
    }

    .sidebar-item form .form-control {
        margin-bottom: 10px;
    }

    .sidebar-item ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .sidebar-item ul li {
        margin-bottom: 5px;
    }

    .sidebar-item ul li a {
        color: #007bff;
        text-decoration: none;
    }

    .sidebar-item ul li a:hover {
        text-decoration: underline;
    }

	.content {
	    float: left;
	    width: 80%; /* 컨텐츠 영역의 너비를 화면의 80%로 지정 */
	    height: 100vh; /* 높이를 화면 높이의 100%로 지정 */
	}
	
	/* 미디어 쿼리를 사용하여 화면 크기에 따라 레이아웃을 조정 */
	@media (max-width: 768px) {
    /* 화면 너비가 768px 이하일 때 */
	    .sidebar, .content {
	        width: 100%; /* 사이드바와 컨텐츠 영역의 너비를 화면 너비의 100%로 조정 */
	        height: auto; /* 높이를 자동으로 조정하여 비율을 유지 */
	         .sidebar {
	        display: none; /* 작은 화면에서는 사이드바를 숨김 */
	    }
	    .content {
	        margin-left: 0; /* 작은 화면에서는 사이드바와 겹치지 않도록 여백을 제거 */
	    }
	}
	}
	
	.mb-5{
		margin: 0px;
	}
	
	.item-pro{
		padding:0px;
	}
	
	
	</style>
</head>
<script src="/js/main.js"></script>
<body> 
<div class="wrapper-main">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-light top-nav">
        <div class="container">
            <a class="navbar-brand">
				<img class="greenLogo" src="/images/greenlogo.png" alt="logo" />
            </a>
<!--             <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> -->
<!-- 				<span class="fas fa-bars"></span> -->
<!--             </button> -->
            <div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
                        <a class="nav-link" href="/main">홈</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">회원정보</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">내 서재</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/searchForm">도서검색</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">도서신청</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">게시판</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    </div>
	
	<!-- full Title -->
	<div class="full-title">
		    <div class="row justify-content-center mt-5 mb-5">
		        <div class="col-md-6">
		        </div>
		    </div>
		</div>
    
     
<div class="wrapper-container">
  
<div class="container-fluid">
    <div class="row">
        <!-- 사이드바 영역 -->
        <div class="col-lg-3 col-md-4 col-sm-5">
            <div class="sidebar">
                <!-- 로그인 입력 칸 -->
                <div class="sidebar-item">
					<!-- 로그인한 경우 -->
					<sec:authorize access="isAuthenticated()">
					    <h4>로그인됨: <sec:authentication property="principal.username" /></h4>
					    <form action="/logout" method="post">
					        <button type="submit" class="btn btn-primary">로그아웃</button>
					    </form>
					</sec:authorize>
					
					<!-- 로그인하지 않은 경우 -->
					<sec:authorize access="isAnonymous()">
					    <p>GUEST</p>
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
	        
	    <div class="col-lg-6 col-md-8 col-sm-7" style="background-color:#f8f9fa;">
<!-- 			<div class="container"> -->
				<div class="row">
					<div class="col-lg-9 col-md-8 col-sm-7 text-center">
  		<div class="login_box">
  			<div class="mb-3">
				<img src="/images/greenlogo.png" style="width: 50%;" alt="이미지" class="bm_img"><br>
            </div>
<!--                   <form id="loginForm" method="post"> -->
                  <form action="/login-process" method="post">
                      <div class="mb-3">
                          <input type="email" class="form-control" id="email" name="email" placeholder="이메일을 입력해주세요" required="required"/>
                      </div>
                      <div class="mb-3">
                          <input type="password" class="form-control" id="password" name="password" placeholder="패스워드를 입력해주세요" required="required"/>
                      </div>
                      <div class="mb-3">
                     	 <button type="submit" class="btn btn-primary">로그인</button>
<!--                     	  <button type="submit" class="btn btn-primary">회원가입</button> -->
                      </div>
                  </form>
	
		            <div class="mb-3">
		            	<span class="id_search"><a href="/find/id">아이디</a></span>
			            <span> ㅣ </span>
			            <span><a href="/find/password">비밀번호 찾기</a></span>
		            </div>
	            </div>
			
			<div class="join"><a href="/register" >회원 가입하러 가기</a></div>
        </div>
				
			</div> <!-- end of container -->
			</div> <!-- 	       end of   <div class="item-pro"> -->
		</div> <!-- 	  end of <div class="col-md-10"> -->
		</div> <!-- 	 end of   <div class="row justify-content-center mt-5 mb-5" > -->
	</div> <!-- end of  <div class="col-lg-9 col-md-8 col-sm-7"> -->
	
	</div> <!-- 	 end of  <div class="row"> -->
</div> <!-- end of	<div class="container-fluid"> -->

</div> <!-- end of <div class="wrapper-container"> -->
	
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
    
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="js/zonebiz/jquery.appear.js"></script>
<script src="js/script.js"></script>

</body>
</html>
<script>
$(document).ready(function() {
    $('#loginForm').submit(function(event) {
        event.preventDefault(); // 폼의 기본 동작을 중단
        
        // 입력된 이메일과 비밀번호 가져오기
        var email = $('#email').val();
        var password = $('#password').val();
//         var passwordFromUser = document.getElementById("password").value;
        
        // AJAX를 사용하여 서버로 로그인 요청 보내기
        $.ajax({
            type: 'POST',
            url: '/login-process', // 로그인을 처리할 서버의 URL
//             contentType: 'application/json',
//             data: JSON.stringify({ email: email, password: password }),
			data: { email: email, password: password },
            success: function(response) {
                // 로그인 성공 시 처리
                alert('로그인 성공!');
                window.location.href = '/main';
            },
            error: function(xhr, status, error) {
                // 로그인 실패 시 처리
                alert('로그인 실패: ' + xhr.responseText);
            }
        });
    });
});
</script>
