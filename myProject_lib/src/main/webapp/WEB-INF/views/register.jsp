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
	    .login_box {
        width: 120%; /* 폼의 너비 조정 */
        margin: 0 auto; /* 가운데 정렬 */
        padding: 20px; /* 안쪽 여백 설정 */
        border-radius: 5px; /* 테두리 둥글게 설정 */
    }

    .login_box .input_aera {
        margin-bottom: 15px; /* 입력 영역 간격 조정 */
    }

    .login_box .input_aera input {
        width: 100%; /* 입력 필드의 너비를 100%로 설정 */
        padding: 10px; /* 안쪽 여백 설정 */
        border: 1px solid #ccc; /* 테두리 설정 */
        border-radius: 5px; /* 테두리 둥글게 설정 */
    }

    .login_box .msg_box {
        color: red; /* 메시지 텍스트 색상 설정 */
        font-size: 12px; /* 메시지 텍스트 크기 설정 */
    }

    .login_box .login_btn {
        width: 100%; /* 로그인 버튼의 너비를 100%로 설정 */
        padding: 10px; /* 안쪽 여백 설정 */
        background-color: #007bff; /* 배경색 설정 */
        color: #fff; /* 텍스트 색상 설정 */
        border: none; /* 테두리 없애기 */
        border-radius: 5px; /* 테두리 둥글게 설정 */
        cursor: pointer; /* 커서 모양 변경 */
    }

    .login_box .login_btn:hover {
        background-color: #0056b3; /* 호버 시 배경색 변경 */
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
                        <a class="nav-link" href="about.html">회원정보</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="services.html">내 서재</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/searchForm">도서검색</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="services.html">도서신청</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="services.html">게시판</a>
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
        <div class="col-lg-3 col-md-6 col-sm-5">
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
	        
	    <div class="col-lg-6 col-md-8 col-sm-7" style="background-color:none;">
	
				<!-- Portfolio Item Row -->
				<div class="row">
					<div class="col-lg-9 col-md-8 col-sm-7 text-center">
		<div class="login_box">
  			<div class="mb-3">
				<img src="/images/greenlogo.png" style="width: 50%;" alt="이미지" class="bm_img"><br>
            </div>
<!-- 				<form id="signupForm" action="/auth/join" method="post" onsubmit="return isSubmit.isSubmit();"> -->
				<form id="signupForm" action="/auth/join" method="post">
	               	<div class="input_aera">
		            	<input type="text" id="name" name="name" class="username" autofocus maxlength="20" required placeholder="이름을 입력해 주세요" >
						<span class="msg_box">${errorMsg.username }</span>
	            	</div>          
	            	
					<div class="input_aera">
	               		<input type="text" id="email" name="email" class="email" required placeholder="이메일을 입력해 주세요" >
		                <span class="msg_box">${errorMsg.email }</span>
               		</div>
               		
					<div class="input_aera">
						<input type="password" id="password" class="password1" name="password" maxlength="20" required placeholder="비밀번호를 입력해 주세요">
					</div>
	               
					<div class="input_aera">
						<input type="password" class="password2" maxlength="20" required placeholder="비밀번호를 한번더 입력해 주세요">
			            <span class="msg_box">${errorMsg.password }</span>
	               	</div>
		               
					<div class="input_aera">
						<input type=number id="phone" name="phone" value="" class="phone" placeholder="연락처를 '-' 없이 입력해 주세요" onkeypress="return lenthCheck(this, 11);" >
	                    <span class="msg_box">${errorMsg.phone }</span>
	                </div>
		               
					<div class="input_aera">
						<input type="text" id="address" class="address" name="address" maxlength="20"  placeholder="주소를 입력해 주세요">
	               		<span class="msg_box">${errorMsg.address }</span>
					</div>
		               
	                
	               <input type="submit" value="회원가입" class="login_btn" >
			</form>
        </div>
				
			</div> <!-- end of container -->
			</div> <!-- 	       end of   <div class="item-pro"> -->
		</div> <!-- 	  end of <div class="col-md-10"> -->
		</div> <!-- 	 end of   <div class="row justify-content-center mt-5 mb-5" > -->
	</div> <!-- end of  <div class="col-lg-9 col-md-8 col-sm-7"> -->
	
	</div> <!-- 	 end of  <div class="row"> -->

	
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
    $('#signupForm').submit(function(event) {
        // 폼의 기본 동작을 막음
        event.preventDefault();

        // 폼 데이터를 직렬화하여 변수에 저장
//         var formData = $(this).serialize();
// 		var formData = new FormData(this); 

        var formData = {
            name: $('#name').val(),
            email: $('#email').val(),
            password: $('#password').val(),
            phone: $('#phone').val(),
            address: $('#address').val()
        };
        console.log(formData);

        // AJAX 호출
        $.ajax({
            type: 'POST',
            url: '/auth/join',
            contentType:'application/json',
//             contentType:'application/x-www-form-urlencoded;charset=UTF-8',
            data: JSON.stringify(formData),
//             data: formData,
//             contentType: false, // 필수
//             processData: false, // 필수
//             processData: true,
            success: function(response) {
                // 회원가입 성공 시 처리
                alert('회원가입이 완료되었습니다.');
                window.location.href = '/login'; // 회원가입 후 로그인 페이지로 리다이렉트
            },
            error: function(xhr, status, error) {
                // 회원가입 실패 시 처리
                var errorMessage = xhr.status + ': ' + xhr.statusText;
                alert('회원가입에 실패했습니다.\n에러 메시지: ' + errorMessage);
            }
        });
    });
});
</script>