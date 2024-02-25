<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>책 검색</title>
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Fontawesome CSS -->
    <link href="css/all.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="container">
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
    </div>
    <hr>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="row row-cols-1 row-cols-md-2 g-4">
                <c:forEach items="${searchResults}" var="item">
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="${item.image}" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">${item.title}</h5>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">저자: ${item.author}</li>
                                <li class="list-group-item">출판사: ${item.publisher}</li>
                                <li class="list-group-item">출판일: ${item.pubdate}</li>
                                <li class="list-group-item">소개: ${item.description}</li>
                            </ul>
                            <div class="card-body">
                                <a href="#" class="card-link">대여 신청</a>
                                <a href="#" class="card-link">예약 신청</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom script -->
<!-- <script src="/js/bookSearch.js"></script> -->

<!-- jQuery Appear -->
<script src="js/jquery.appear.js"></script>
<!-- Custom script -->
<script src="js/script.js"></script>
</body>
</html>
