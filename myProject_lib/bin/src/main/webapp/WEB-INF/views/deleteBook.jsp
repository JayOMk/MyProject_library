<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Book</title>
</head>
<script src="/js/deleteBook.js"></script>
<body>
    <h1>Delete Book</h1>
    <form action="deleteBookAction.jsp" method="post">
        Seq No to Delete: <input type="text" name="seqNo"><br>
        <input type="submit" value="Delete Book">
    </form>
</body>
</html>
