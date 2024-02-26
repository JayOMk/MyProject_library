<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Books Page</title>
</head>
<body>
    <h1>도서 목록</h1>
    <table border="1">
        <thead>
            <tr>
                <th>일련번호</th>
                <th>제목</th>
                <!-- 다른 필드들에 대한 헤더들 -->
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td>${book.seqNo}</td>
                    <td>${book.titleNm}</td>
                    <!-- 다른 필드들에 대한 데이터 -->
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
