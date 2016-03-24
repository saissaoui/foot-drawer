<%--
  Created by IntelliJ IDEA.
  User: s-aissaoui
  Date: 21/03/2016
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
</head>
<body>
<c:if test="${not empty errorMessage}">
    <div style="color: red">
        <c:out value="${errorMessage}"/>
    </div>

</c:if>
<form action="/userValidator" method="post">
    Login: <input type="text" name="name"/><br>
    mot de passe: <input type="password" name="password"/><br>
    <input type="submit" value="LogIn"/>
</form>
</body>
</html>