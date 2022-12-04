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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>게시물 수정</title>
</head>
<body>
    <h1>게시물 수정</h1>
    <%--  commandName이 아니라 modelAttribute를 사용해야 한다!  --%>
    <form:form modelAttribute="boardVO" method="POST" action="../editok">
        <form:hidden path="seq"/>
        <table id="edit">
            <tr><td>제목:</td><td><form:input path="title"/></td></tr>
            <tr><td>글쓴이:</td><td><form:input path="writer"/></td></tr>
            <tr><td>내용:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
        </table>
        <input type="submit" value="수정하기"/>
        <input type="button" value="취소하기" onclick="history.back()"/>
    </form:form>
</body>
</html>
