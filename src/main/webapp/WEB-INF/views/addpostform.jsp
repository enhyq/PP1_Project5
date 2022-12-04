<%--
  Created by IntelliJ IDEA.
  User: enhyq
  Date: 2022/12/04
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>새 글쓰기</title>
</head>
<body>
    <h1>Add New Post</h1>
    <form action="addok" method="post">
        <table id="edit">
            <tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
            <tr><td>글쓴이:</td><td><input type="text" name="writer"/></td></tr>
            <tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        </table>
        <button type="button" onclick="location.href='list'">목록보기</button>
        <button type="submit">등록하기</button>
    </form>
</body>
</html>
