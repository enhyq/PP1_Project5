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
    <title>Board list</title>
</head>
<body>
<table id="list" width="90%" border="1">
    <tr>
        <th>id</th>
        <th>제목</th>
        <th>글쓴이</th>
        <th>내용</th>
        <th>등록일</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getWriter()}</td>
            <td>${u.getContent()}</td>
            <td>${u.getRegdate()}</td>
            <td><a href="editform/${u.getSeq()}">글수정</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">글삭제</a></td>
        </tr>
    </c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>

<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href = "deleteok/" + id;
    }
</script>
</body>
</html>
