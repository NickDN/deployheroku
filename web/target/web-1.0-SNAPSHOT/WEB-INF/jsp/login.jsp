<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewpoint" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../../css/login.css">
</head>
<body>
<div class="grandParentContainer">
    <div class="parentContainer">
        <form action="${pageContext.request.contextPath}/login" method="post">
            <fieldset class="legend form">
                <legend>Social Network</legend>
                <label for="email">Email</label><br/>
                <input type="email" name="email" id="email" value="${email}"/><br/>
                <label for="password">Password</label><br/>
                <input type="password" name="password" id="password" value="${password}"/><br/>
                <label>
                    <input type="checkbox" name="remember"  checked value="true"${remember}> Remember me
                </label>
                <button class="btn">Login</button>
                <br/>
                <button class="btn">Registration</button>
                <br/>
                <p class="errMsg">${errMsg}</p>
            </fieldset>
        </form>
    </div>
</div>
</body>
</html>