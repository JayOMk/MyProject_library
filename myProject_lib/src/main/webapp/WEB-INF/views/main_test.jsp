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
    <style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
</style>
	<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Fontawesome CSS -->
	<link href="css/zonebiz/all.css" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="css/yes/common.css" rel="stylesheet">
	<link href="css/yes/content.css" rel="stylesheet">
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
            </div>
        </div>
    </nav>
    <!--  end header -->
    
    	<!-- full Title -->
	<div class="full-title">
		<div class="container">
		    <div class="row justify-content-center mt-5 mb-5">
		        <div class="col-md-6">
		        </div>
		    </div>
		</div>
	</div>
	
	<div id="mcontainer">
	<div id="colgroup1">
		<div id="mycontent">
    
	<!-- sidebar -->
	<div id="mlogin">
		<form name="left_Login_Frm" method="post" action="/action/login/login_action.asp">
		<fieldset>
			<legend>로그인정보 입력 영역</legend>
			<input type="hidden" name="login" value="1">
			<input type="hidden" name="site_code" value="djcl">
			<input type="hidden" name="return_url" value="/?">
			
			<dl>
				<dt class="dpn"><label for="userid" style="display:none;">아이디</label></dt>
				<dd><input type="text" name="user_id" id="userid" class="text"></dd>
			</dl>
			<dl>
				<dt class="dpn"><label for="passwd" style="display:none;">비밀번호</label></dt>
				<dd><input type="password" name="user_pw" id="passwd" class="text"></dd>
			</dl>
			<div class="btn"><input type="image" src="/images/btn/btn_login.png" title="로그인" alt="로그인" class="image" /></div>
		</fieldset>
		</form>
	</div>
	
	<div id="solidline" style="border-bottom:1px solid #eaeaea;">
	</div>
	
	<div id="mlibrary">
		<h3><img src="/images/btn/mtit_mylibrary.png" alt="내서재"></h3>
		<div class="more">
			<a href="#" onclick="alert('로그인 후 이용 가능합니다.');" title="내서재 더보기(비 로그인시 로그인페이지로 이동합니다.)">
				<img src="/images/btn/ico_more.png" alt="더보기">
			</a>
		</div>
<!-- 		<div class="clear"></div> -->
	</div>
	
<div id="mbnr">
	<ul>
		<li><a href="/help/?code=1" title="이용안내 페이지로 이동합니다."><img src="/images/btn/mbnr01.png" alt="이용안내"/></a></li>
		<li><a href="/help/?code=2" title="자료대출안내 페이지로 이동합니다."><img src="/images/btn/mbnr03.png" alt="자료대출안내"/></a></li>
	</ul>
	
</div>

<div id="mnotice">
	<h3><img src="/images/btn/mtit_notice.png" alt="공지사항"></h3>
	<ul>
		<li><a href="/board/?code=1&mode=view&idx=4&b_id=1">YES24 전자도서관에 오신것을 환영합니다.</a></li>
	</ul>
	<div class="more">
		<a href="/board/?code=1" title="공지사항 더보기">
			<img src="/images/btn/ico_more.png" alt="더보기">
		</a>
	</div>
	
	</div>
	
<div id="mexreader">

	<h3><img src="images/btn/mtit_exreader.png" alt="이달의 다독자"></h3>
		<ol>
			<li><span class="no">1</span>
					<span>*ookswa** (1권)</span>
			</li>
			<li><span class="no">2</span>
				*eplatfo** (1권)
			</li>
		</ol>
	<div class="clear"></div>
</div>	

<div id="mhold">
	<h3><img src="images/btn/mtit_hold.png" alt="콘텐츠 보유현황"></h3>
	<div class="update">Update : 2023-01-25</div>
	<div class="cont">
		
		<dl>
			<dt>전자책</dt>
			<dd><span>2000</span>종</dd>
		</dl>
		<dl>
		
		<!-- <dt>어린이</dt> -->
		<dt>VOD</dt>
		<dd><span>121</span>종</dd>
		</dl>
		
		<dl>
			<dt>전체</dt>
			<dd><span>2221</span>종</dd>
		</dl>
		
		<div class="clear"></div>
	</div>
</div>

	</div>
</div>	

	<div id="colgroup2">
<!-- 		<div id="mbestlist"> -->
  		    <div class="section">
          		  <div class="col-12">
 						<span><img id="img_main" alt="" src="/images/mainpage.png"></span>
      					  <h1>
        						<span>G</span><span>R</span><span>E</span><span>E</span><span>N</span> <span>L</span><span>I</span><span>B</span><span>R</span><span>A</span><span>R</span><span>Y</span><br>
    				      </h1>
     					   <p>그린 도서관을 이용해주셔서 감사합니다.</p> 
            </div>  
       </div>      
 	   </div>
  </div>
	</div>  
	</div>  
	
  <div class="my-5 py-5">
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
