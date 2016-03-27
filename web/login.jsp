<%--
  Created by IntelliJ IDEA.
  User: Sofiene
  Date: 27/03/2016
  Time: 03:32
  To change this template use File | Settings | File Templates.
--%>
<%--taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login to our app</title>
</head>
<body>
<h1>Please login</h1>

<form action="userValidator" method="post">
    Username: <input type="text" name="username"/><br/>
    Password: <input type="password" name="password"/><br/>
    <input type="submit"/>
</form>
<%--
<font color="red"><c:if test="${not empty param.errorMessage}">
    <c:out value="${param.errorMessage}"/>
</c:if></font>

 --%>
</body>
</html>