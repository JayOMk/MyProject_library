<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title> Green Library </title>
	<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Fontawesome CSS -->
	<link href="css/zonebiz/all.css" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="css/zonebiz/style.css" rel="stylesheet">
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
	
	.mb-5{
		margin-bottom: 0px;
	}
	</style>
</head>
<body>
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
            </div>
        </div>
    </nav>
	
	<!-- full Title -->
	<div class="full-title">
		<div class="container">
		    <div class="row justify-content-center mt-5 mb-5">
		        <div class="col-md-6">
		        </div>
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
                <!-- 로그인 입력 칸 -->
                <div class="sidebar-item">
                    <h4>로그인</h4>
                    <form id="loginForm" action="loginYn" method="post">
                        <div class="mb-3">
                            <label for="username" class="form-label">사용자 이메일</label>
                            <input type="email" class="form-control" id="email" placeholder="ex)abc@abc.com"required="required"/>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">비밀번호</label>
                            <input type="password" class="form-control" id="password" required="required"/>
                        </div>
                        <button type="submit" class="btn btn-primary">로그인</button>
                        <button type="submit" class="btn btn-primary">회원가입</button>
                    </form>
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
        
    <div class="col-lg-9 col-md-8 col-sm-7">
    <div class="row justify-content-center mt-5 mb-5" >
        <div class="col-md-6">
            <h2 class="text-center mt-4 mb-3">도서 검색</h2>
            <form action="/api" method="GET">
                <div class="input-group mb-3">
                	        <select class="form-select" name="option">
					            <option value="전체">전체</option>
					            <option value="제목">제목</option>
					            <option value="저자">저자</option>
					        </select>	
                    <input type="text" name="query" id="query" class="form-control" placeholder="검색어 입력">
                    <button type="submit" class="btn btn-primary">검색</button>
                </div>
            </form>
        </div>
        </div>
    <div class="portfolio-col">
		<div class="container">
			<div class="row">
				<c:forEach items="${searchResults}" var="item">
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a class="hover-box" href="#">
<!-- 							<div class="dot-full"> -->
<!-- 								<i class="fas fa-link"></i> -->
<!-- 							</div> -->
							<img class="card-img-top" src="${item.image}" alt="" />
						</a>
   	                    <div class="card-body">
                            <h5 class="card-title">${item.title}</h5><br>
                            <h5 class="card-title">저자: ${item.author}</h5>
                        </div>
<!--    	                 <div class="card-body"> -->
<%--                             <h5 class="card-title">${item.author}</h5> --%>
<!--                         </div> -->
                        <div class="card-body">
                            <a href="/bookDetailPage/${item.isbn}" class="card-link">상세 정보</a>
                            <a href="#" class="card-link">대출 신청</a>
                        </div>
					</div>
				</div>
				</c:forEach>
		  
			<div class="pagination_bar">
				<!-- Pagination -->
				<ul class="pagination justify-content-center">
					<li class="page-item">
					  <a class="page-link" href="#" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
					  </a>
					</li>
					<li class="page-item">
					  <a class="page-link" href="#">1</a>
					</li>
					<li class="page-item">
					  <a class="page-link" href="#">2</a>
					</li>
					<li class="page-item">
					  <a class="page-link" href="#">3</a>
					</li>
					<li class="page-item">
					  <a class="page-link" href="#" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
						<span class="sr-only">Next</span>
					  </a>
					</li>
				</ul>
			</div>

		</div>
		<!-- /.container -->
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
</div>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/script.js"></script>


</body>
</html>

<script type="text/javascript">
    /* 회원가입 버튼 클릭 시 동작하는 함수 */
         function submitRegistration() {
        	    var email = $("#signup-email").val();
        	    var username = $("#signup-username").val();
        	    var phonenumber = $("#phonenumber").val();
        	    var password = $("#signup-password").val();

        	    var formData = {
        	        email: email,
        	        name: username,
        	        phone: phonenumber,
        	        password: password,
        	    };
    	
                // 회원가입 데이터를 서버로 전송하는 Ajax 호출
                $.ajax({
                    type: "POST",
                    url: "signUp",
                    data: formData,
                    success: function (data) {
                        alert("회원가입이 완료되었습니다.");
                        window.location.href = "login";
                    },
                    error: function (xhr, status, error) {
                        console.error(xhr.responseText);
                        alert("회원가입 중 오류가 발생했습니다. 다시 시도해주세요.");
                    },
                });
    }
</script>

