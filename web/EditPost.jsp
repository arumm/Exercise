<%-- 
    Document   : EditPost
    Created on : Jun 29, 2018, 2:01:15 PM
    Author     : Arum_M664
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Post</title>
    <div style="width: 900px; margin-left: auto; margin-right: auto">
        <c:forEach items="${getNewsById}" var="p">
            <form action="JSP/ManagerEditPost.jsp" method="post">
                <input type="hidden" name="id" value="${p.id}"><br>
                Title : <br>
                <input type="text" name="title" value="${p.title}" style="width: 200px"><br>
                Description : <br>
                <input type="text" name="description" value="${p.description}" style="width: 200px"><br>
                Detail : <br>
                <textarea name="detail" style="width: 400px; height: 200px">${p.detail}</textarea><br>
                Category : <br>
                <select name="category">
                    <option value="${p.description}">${p.description}</option>
                    <option value="World">World</option>
                    <option value="Sport">Sport</option>
                    <option value="Tech">Tech</option>
                </select><br>
                Image : <br>
                <input type="text" name="image" value="${p.image}" style="width: 200px"><br>
                <input type="submit" value="submit">
            </form>
        </c:forEach>
    </div>
</head>
<body>

</body>
</html>
