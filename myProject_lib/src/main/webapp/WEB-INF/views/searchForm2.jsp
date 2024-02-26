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
						<a class="nav-link" href="services.html">도서검색</a>
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
    <div class="row justify-content-center mt-5 mb-5">
        <div class="col-md-6">
            <h1 class="text-center mt-4 mb-3">책 검색</h1>
            <form action="/api" method="GET">
                <div class="input-group mb-3">
                    <input type="text" name="query" id="query" class="form-control" placeholder="검색어 입력">
                    <button type="submit" class="btn btn-primary">검색</button>
                </div>
            </form>
        </div>
<!--         <div class="col-md-6"> -->
<!--             <h1 class="text-center mt-4 mb-3">테스트 검색</h1> -->
<!--             <form action="/books" method="GET"> -->
<!--                 <div class="input-group mb-3"> -->
<!--                     <input type="text" name="query" id="query" class="form-control" placeholder="검색어 입력"> -->
<!--                     <button type="submit" class="btn btn-primary">검색</button> -->
<!--                 </div> -->
<!--             </form> -->
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
                            <a href="#" class="card-link">대여 신청</a>
                            <a href="#" class="card-link">예약 신청</a>
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
