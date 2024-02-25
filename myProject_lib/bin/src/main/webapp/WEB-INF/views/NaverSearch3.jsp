<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Book Search</h2>
	
    <form action="/list" method="GET">
        <label for="search">검색어:</label>
        <input type="text" id="text" name="text">
        <button type="submit">검색</button>
    </form>
    
    <hr>
    
    <h3>검색 결과</h3>
    <table border="1">
        <thead>
            <tr>
                <th>ISBN</th>
                <th>이미지</th>
                <th>제목</th>
                <th>저자/출판사</th>
                <th>출판일</th>
            </tr>
        </thead>
        <tbody>
<%--             <c:forEach var="book" items="${books}"> --%>
<!--                 <tr> -->
<%--                     <td>${book.isbn}</td> --%>
<%--                     <td><img src="${book.image}" alt="${book.title}" width="100"></td> --%>
<%--                     <td><a href="${book.link}">${book.title}</a></td> --%>
<%--                     <td>${book.author}/${book.publisher}</td> --%>
<%--                     <td>${book.pubdate}</td>        --%>
<!--                 </tr> -->
<%--             </c:forEach> --%>
        </tbody>
    </table>
</body>
</html>