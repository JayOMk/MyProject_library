<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <a class="navbar-brand" href="index.html">
				<img class="greenLogo" src="/images/greenlogo.png" alt="logo" />
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fas fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="index.html">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="about.html">About</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="services.html">Services</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages <i class="fas fa-sort-down"></i></a>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="faq.html">FAQ</a>
							<a class="dropdown-item" href="404.html">404</a>
							<a class="dropdown-item" href="pricing.html">Pricing Table</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link active" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Portfolio <i class="fas fa-sort-down"></i></a>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
							<a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
							<a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog <i class="fas fa-sort-down"></i></a>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="blog.html">Blog</a>
							<a class="dropdown-item" href="blog-post.html">Blog Post</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.html">Contact</a>
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
		            <h1 class="text-center mt-4 mb-3">전체 검색</h1>
		            <form action="/api" method="GET">
		                <div class="input-group mb-3">
		                    <input type="text" name="query" id="query" class="form-control" placeholder="검색어 입력">
		                    <button type="submit" class="btn btn-primary">검색</button>
		                </div>
		            </form>
		        </div>
		    </div>
		</div>
	</div>

    <div class="portfolio-col">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a class="hover-box" href="#">
							<div class="dot-full">
								<i class="fas fa-link"></i>
							</div>
							<img class="card-img-top" src="images/zonebiz/portfolio-big-01.jpg" alt="" />
						</a>
						<div class="card-body">
							<h4><a href="#">In viverra nisi vel facilisis dignissim.</a></h4>
							<p>Business Consulting</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a class="hover-box" href="#">
							<div class="dot-full">
								<i class="fas fa-link"></i>
							</div>
							<img class="card-img-top" src="images/zonebiz/portfolio-big-02.jpg" alt="" />
						</a>
						<div class="card-body">
							<h4><a href="#">In viverra nisi vel facilisis dignissim.</a></h4>
							<p>Business Consulting</p>				  
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a class="hover-box" href="#">
							<div class="dot-full">
								<i class="fas fa-link"></i>
							</div>
							<img class="card-img-top" src="images/zonebiz/portfolio-big-03.jpg" alt="" />
						</a>
						<div class="card-body">
							<h4><a href="#">In viverra nisi vel facilisis dignissim.</a></h4>
							<p>Business Consulting</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a class="hover-box" href="#">
							<div class="dot-full">
								<i class="fas fa-link"></i>
							</div>
							<img class="card-img-top" src="images/zonebiz/portfolio-big-04.jpg" alt="" />
						</a>
						<div class="card-body">
							<h4><a href="#">In viverra nisi vel facilisis dignissim.</a></h4>
							<p>Business Consulting</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a class="hover-box" href="#">
							<div class="dot-full">
								<i class="fas fa-link"></i>
							</div>
							<img class="card-img-top" src="images/zonebiz/portfolio-big-04.jpg" alt="" />
						</a>
						<div class="card-body">
							<h4><a href="#">In viverra nisi vel facilisis dignissim.</a></h4>
							<p>Business Consulting</p>					  
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a class="hover-box" href="#">
							<div class="dot-full">
								<i class="fas fa-link"></i>
							</div>
							<img class="card-img-top" src="images/zonebiz/portfolio-big-01.jpg" alt="" />
						</a>
						<div class="card-body">
							<h4><a href="#">In viverra nisi vel facilisis dignissim.</a></h4>
							<p>Business Consulting</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a class="hover-box" href="#">
							<div class="dot-full">
								<i class="fas fa-link"></i>
							</div>
							<img class="card-img-top" src="images/zonebiz/portfolio-big-02.jpg" alt="" />
						</a>
						<div class="card-body">
							<h4><a href="#">In viverra nisi vel facilisis dignissim.</a></h4>
							<p>Business Consulting</p>					  
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a class="hover-box" href="#">
							<div class="dot-full">
								<i class="fas fa-link"></i>
							</div>
							<img class="card-img-top" src="images/zonebiz/portfolio-big-03.jpg" alt="">
						</a>
						<div class="card-body">
							<h4><a href="#">In viverra nisi vel facilisis dignissim.</a></h4>
							<p>Business Consulting</p>
						</div>
					</div>
				</div>
			</div>
		  
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
